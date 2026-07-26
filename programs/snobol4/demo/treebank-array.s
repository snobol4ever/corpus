                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_frame_α
proc_stk_push_frame_α:
                        .global          proc_stk_push_frame_α
                        .global          proc_stk_push_frame_β
                        .global          proc_stk_push_frame_γ
                        .global          proc_stk_push_frame_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_push_frame_α_body:
#=======================================================================================================================
# stk_push_frame frame_id              =  frame_id + 1
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n3_binop_α
.Lx27_0:
                        .quad            1
#=======================================================================================================================
#                stk_tag[frame_id]    =  v
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052848]
                        mov              rdx, qword ptr [1879052856]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx29_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx29_2
.Lx29_1:
                        mov              rax, qword ptr [rbp + 40]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_assign_α
.Lx29_0:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              r8d, 0
                        lea              r9, [rbp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n6_assign_α
.Lx29_2:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n2_var_α
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n6_assign_α
n3_binop_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n7_subscript_α
#=======================================================================================================================
#                stk_n[frame_id]      =  0
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 88]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n5_var_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n11_subscript_α
#=======================================================================================================================
#                stk_c[frame_id]      =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n14_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_subscript_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n9_var_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n16_subscript_α
#=======================================================================================================================
#                stk                  =  list(frame_id, stk)
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_var_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n5_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n19_assign_var_α
.Lx41_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n16_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n13_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n20_call_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n21_call_α
#=======================================================================================================================
#                stk_push_frame       =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n22_call_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_var_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n9_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:
                        .section         .rodata
.Lrkfn47:               .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rbp + 288]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n13_var_α
                                                                                        jmp   n23_assign_var_α
n20_call_β:
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn49:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n18_lit_string_α
                                                                                        jmp   n24_assign_α
n21_call_β:
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn51:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_push_frame_γ
                                                                                        jmp   n25_assign_α
n22_call_β:
                                                                                        jmp   proc_stk_push_frame_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_var_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n13_var_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052896], rax
                        mov              qword ptr [1879052904], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   proc_stk_push_frame_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_β:
                                                                                        jmp   proc_stk_push_frame_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 520]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_item_α
proc_stk_push_item_α:
                        .global          proc_stk_push_item_α
                        .global          proc_stk_push_item_β
                        .global          proc_stk_push_item_γ
                        .global          proc_stk_push_item_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_push_item_α_body:
#=======================================================================================================================
# stk_push_item  cur                  =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n56_call_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn84:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n57_var_α
                                                                                        jmp   n58_assign_α
n56_call_β:
                                                                                        jmp   n57_var_α
#=======================================================================================================================
#                stk_n[cur]           =  stk_n[cur] + 1
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n61_subscript_α
#=======================================================================================================================
#                stk_c[cur][stk_n[cur]] =  v
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n60_var_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n65_subscript_α
#=======================================================================================================================
#                stk_push_item        =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n66_call_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n63_lit_string_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n68_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn95:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_push_item_γ
                                                                                        jmp   n69_assign_α
n66_call_β:
                                                                                        jmp   proc_stk_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n70_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n68_deref_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n63_lit_string_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   proc_stk_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
n70_subscript_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n60_var_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n72_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_deref_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n60_var_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n75_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n76_binop_α
.Lx103_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n75_subscript_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n63_lit_string_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n77_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 100
                                                                                        je    .Lx105_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx105_2
.Lx105_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n78_assign_var_α
.Lx105_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 0
                        lea              r9, [rbp + 128]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n78_assign_var_α
.Lx105_2:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n60_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n78_assign_var_α
n76_binop_β:
                                                                                        jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_deref_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n63_lit_string_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n79_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_var_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n60_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n63_lit_string_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n81_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_var_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n63_lit_string_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_β:
                                                                                        jmp   proc_stk_push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 504]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
                        .global          proc_stk_pop_into_parent_α
                        .global          proc_stk_pop_into_parent_β
                        .global          proc_stk_pop_into_parent_γ
                        .global          proc_stk_pop_into_parent_ω
                        sub              rsp, 704
                        mov              [rsp + 680], rcx
                        mov              [rsp + 688], rdx
                        mov              [rsp + 696], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_pop_into_parent_α_body:
#=======================================================================================================================
#                child                =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n112_call_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn147:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n113_var_α
                                                                                        jmp   n114_assign_α
n112_call_β:
                                                                                        jmp   n113_var_α
#=======================================================================================================================
#                stk                  =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n115_call_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn151:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n116_var_α
                                                                                        jmp   n117_assign_α
n115_call_β:
                                                                                        jmp   n116_var_α
#=======================================================================================================================
#                par                  =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n118_call_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052896], rax
                        mov              qword ptr [1879052904], rdx
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn155:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n119_var_α
                                                                                        jmp   n120_assign_α
n118_call_β:
                                                                                        jmp   n119_var_α
#=======================================================================================================================
#                n                    =  stk_n[par]
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n123_subscript_α
#=======================================================================================================================
#                stk_n[par]           =  n + 1
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n122_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n126_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n127_subscript_α
#=======================================================================================================================
#                stk_c[par][n + 1]    =  child
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_deref_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n122_var_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_subscript_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n132_subscript_α
#=======================================================================================================================
#                stk_pop_into_parent  =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n133_call_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n134_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_subscript_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n135_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn171:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_pop_into_parent_γ
                                                                                        jmp   n136_assign_α
n133_call_β:
                                                                                        jmp   proc_stk_pop_into_parent_γ
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n137_binop_α
.Lx172_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n135_deref_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   proc_stk_pop_into_parent_γ
#-----------------------------------------------------------------------------------------------------------------------
n137_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 100
                                                                                        je    .Lx175_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx175_2
.Lx175_1:
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 368], 6
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n139_assign_var_α
.Lx175_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        mov              r8d, 0
                        lea              r9, [rbp + 368]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n139_assign_var_α
.Lx175_2:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n139_assign_var_α
n137_binop_β:
                                                                                        jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_var_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n141_binop_α
.Lx178_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx179_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx179_2
.Lx179_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 496], 6
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n142_subscript_α
.Lx179_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              r8d, 0
                        lea              r9, [rbp + 496]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n142_subscript_α
.Lx179_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n142_subscript_α
n141_binop_β:
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n142_subscript_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n144_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_var_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_β:
                                                                                        jmp   proc_stk_pop_into_parent_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 680]
                        lea              rsp, [rbp + 704]
                        mov              rbp, [rbp + 696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_ω:
                        mov              rax, [rbp + 688]
                        lea              rsp, [rbp + 704]
                        mov              rbp, [rbp + 696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_final_α
proc_stk_pop_final_α:
                        .global          proc_stk_pop_final_α
                        .global          proc_stk_pop_final_β
                        .global          proc_stk_pop_final_γ
                        .global          proc_stk_pop_final_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_pop_final_α_body:
#=======================================================================================================================
# stk_pop_final  child                =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n184_call_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn198:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn198]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n185_var_α
                                                                                        jmp   n186_assign_α
n184_call_β:
                                                                                        jmp   n185_var_α
#=======================================================================================================================
#                stk                  =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n187_call_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn202:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n188_var_α
                                                                                        jmp   n189_assign_α
n187_call_β:
                                                                                        jmp   n188_var_α
#=======================================================================================================================
#                $var                 =  child
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n190_call_α
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052896], rax
                        mov              qword ptr [1879052904], rdx
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n188_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn206:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n191_lit_string_α
                                                                                        jmp   n192_var_α
n190_call_β:
                                                                                        jmp   n191_lit_string_α
#=======================================================================================================================
#                stk_pop_final        =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n193_call_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n194_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn210:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_pop_final_γ
                                                                                        jmp   n195_assign_α
n193_call_β:
                                                                                        jmp   proc_stk_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_var_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n191_lit_string_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   proc_stk_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_β:
                                                                                        jmp   proc_stk_pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 344]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_init_list_α
proc_init_list_α:
                        .global          proc_init_list_α
                        .global          proc_init_list_β
                        .global          proc_init_list_γ
                        .global          proc_init_list_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_init_list_α_body:
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n214_call_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn234:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n215_lit_string_α
                                                                                        jmp   n216_lit_string_α
n214_call_β:
                                                                                        jmp   n215_lit_string_α
#=======================================================================================================================
#                stk            =
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n217_assign_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n218_assign_var_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052896], rax
                        mov              qword ptr [1879052904], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n219_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_var_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n215_lit_string_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n215_lit_string_α
#=======================================================================================================================
#                frame_id       =  0
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n220_assign_α
.Lx239_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n221_call_α
#=======================================================================================================================
#                stk_tag        =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:
                        .section         .rodata
.Lrkfn242:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 256]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_α
                                                                                        jmp   n222_assign_α
n221_call_β:
                                                                                        jmp   n223_call_α
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n223_call_α
#=======================================================================================================================
#                stk_n          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:
                        .section         .rodata
.Lrkfn245:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn245]
                        lea              rsi, [rbp + 304]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n225_call_α
                                                                                        jmp   n224_assign_α
n223_call_β:
                                                                                        jmp   n225_call_α
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052864], rax
                        mov              qword ptr [1879052872], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n225_call_α
#=======================================================================================================================
#                stk_c          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:
                        .section         .rodata
.Lrkfn248:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 352]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n227_lit_string_α
                                                                                        jmp   n226_assign_α
n225_call_β:
                                                                                        jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052880], rax
                        mov              qword ptr [1879052888], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n227_lit_string_α
#=======================================================================================================================
#                init_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n228_call_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn252:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n230_lit_string_α
                                                                                        jmp   n229_assign_α
n228_call_β:
                                                                                        jmp   n230_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n230_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n231_call_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn256:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_init_list_ω
                                                                                        jmp   proc_init_list_γ
n231_call_β:
                                                                                        jmp   proc_init_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_β:
                                                                                        jmp   proc_init_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 456]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init_list_α
proc_Init_list_α:
                        .global          proc_Init_list_α
                        .global          proc_Init_list_β
                        .global          proc_Init_list_γ
                        .global          proc_Init_list_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Init_list_α_body:
#=======================================================================================================================
# Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n258_var_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n259_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n259_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n261_binop_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n261_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n262_call_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn270:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Init_list_γ
                                                                                        jmp   n263_assign_α
n262_call_β:
                                                                                        jmp   proc_Init_list_γ
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Init_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_β:
                                                                                        jmp   proc_Init_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 152]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_list_α
proc_push_list_α:
                        .global          proc_push_list_α
                        .global          proc_push_list_β
                        .global          proc_push_list_γ
                        .global          proc_push_list_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_push_list_α_body:
#=======================================================================================================================
# push_list      dummy          =  stk_push_frame(v)
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n273_call_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx282_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx282_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx282_6]
                        lea              rdx, [rip + .Lx282_7]
                                                                                        jmp   rax
.Lx282_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx282_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx282_21
.Lx282_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx282_21:
                        mov              rdi, qword ptr [rip + .Lx282_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx282_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx282_3]
                        lea              rdx, [rip + .Lx282_4]
                                                                                        jmp   rax
.Lx282_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_1:
                        call             rt_faildescr@PLT
.Lx282_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n274_lit_string_α
                                                                                        jmp   n275_assign_α
n273_call_β:
                                                                                        jmp   n274_lit_string_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "stk_push_frame"
#=======================================================================================================================
#                push_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n276_call_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn286:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n278_lit_string_α
                                                                                        jmp   n277_assign_α
n276_call_β:
                                                                                        jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n279_call_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn290:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_push_list_ω
                                                                                        jmp   proc_push_list_γ
n279_call_β:
                                                                                        jmp   proc_push_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_β:
                                                                                        jmp   proc_push_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 232]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_list_α
proc_Push_list_α:
                        .global          proc_Push_list_α
                        .global          proc_Push_list_β
                        .global          proc_Push_list_γ
                        .global          proc_Push_list_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Push_list_α_body:
#=======================================================================================================================
# Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n292_var_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n293_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n293_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n294_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n295_binop_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n296_call_α
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn304:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Push_list_γ
                                                                                        jmp   n297_assign_α
n296_call_β:
                                                                                        jmp   proc_Push_list_γ
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Push_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_β:
                                                                                        jmp   proc_Push_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 152]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_item_α
proc_push_item_α:
                        .global          proc_push_item_α
                        .global          proc_push_item_β
                        .global          proc_push_item_γ
                        .global          proc_push_item_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_push_item_α_body:
#=======================================================================================================================
# push_item      dummy          =  stk_push_item(v)
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n307_call_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx316_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx316_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx316_6]
                        lea              rdx, [rip + .Lx316_7]
                                                                                        jmp   rax
.Lx316_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx316_2
.Lx316_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx316_2
.Lx316_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx316_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx316_21
.Lx316_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx316_21:
                        mov              rdi, qword ptr [rip + .Lx316_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx316_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx316_3]
                        lea              rdx, [rip + .Lx316_4]
                                                                                        jmp   rax
.Lx316_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx316_2
.Lx316_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx316_2
.Lx316_1:
                        call             rt_faildescr@PLT
.Lx316_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n308_lit_string_α
                                                                                        jmp   n309_assign_α
n307_call_β:
                                                                                        jmp   n308_lit_string_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "stk_push_item"
#=======================================================================================================================
#                push_item      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n310_call_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n308_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn320:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n312_lit_string_α
                                                                                        jmp   n311_assign_α
n310_call_β:
                                                                                        jmp   n312_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n312_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n313_call_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn324:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn324]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_push_item_ω
                                                                                        jmp   proc_push_item_γ
n313_call_β:
                                                                                        jmp   proc_push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_β:
                                                                                        jmp   proc_push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 232]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_item_α
proc_Push_item_α:
                        .global          proc_Push_item_α
                        .global          proc_Push_item_β
                        .global          proc_Push_item_γ
                        .global          proc_Push_item_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Push_item_α_body:
#=======================================================================================================================
# Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n326_var_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n327_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n328_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n329_binop_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n329_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n330_call_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn338:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Push_item_γ
                                                                                        jmp   n331_assign_α
n330_call_β:
                                                                                        jmp   proc_Push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_β:
                                                                                        jmp   proc_Push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 152]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_list_α
proc_pop_list_α:
                        .global          proc_pop_list_α
                        .global          proc_pop_list_β
                        .global          proc_pop_list_γ
                        .global          proc_pop_list_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pop_list_α_body:
#=======================================================================================================================
# pop_list       dummy          =  stk_pop_into_parent()
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx348_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx348_6]
                        lea              rdx, [rip + .Lx348_7]
                                                                                        jmp   rax
.Lx348_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_5:
                        add              rsp, 64
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx348_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4]
                                                                                        jmp   rax
.Lx348_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_1:
                        call             rt_faildescr@PLT
.Lx348_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n342_lit_string_α
                                                                                        jmp   n341_assign_α
n340_call_β:
                                                                                        jmp   n342_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n342_lit_string_α
#=======================================================================================================================
#                pop_list       =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n343_call_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn352:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n345_lit_string_α
                                                                                        jmp   n344_assign_α
n343_call_β:
                                                                                        jmp   n345_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n345_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n346_call_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n346_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn356:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn356]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop_list_ω
                                                                                        jmp   proc_pop_list_γ
n346_call_β:
                                                                                        jmp   proc_pop_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_β:
                                                                                        jmp   proc_pop_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 200]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_list_α
proc_Pop_list_α:
                        .global          proc_Pop_list_α
                        .global          proc_Pop_list_β
                        .global          proc_Pop_list_γ
                        .global          proc_Pop_list_ω
                        sub              rsp, 112
                        mov              [rsp + 88], rcx
                        mov              [rsp + 96], rdx
                        mov              [rsp + 104], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Pop_list_α_body:
#=======================================================================================================================
# Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n358_call_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n358_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn362:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Pop_list_γ
                                                                                        jmp   n359_assign_α
n358_call_β:
                                                                                        jmp   proc_Pop_list_γ
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Pop_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_β:
                                                                                        jmp   proc_Pop_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 88]
                        lea              rsp, [rbp + 112]
                        mov              rbp, [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_ω:
                        mov              rax, [rbp + 96]
                        lea              rsp, [rbp + 112]
                        mov              rbp, [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_final_α
proc_pop_final_α:
                        .global          proc_pop_final_α
                        .global          proc_pop_final_β
                        .global          proc_pop_final_γ
                        .global          proc_pop_final_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pop_final_α_body:
#=======================================================================================================================
# pop_final      dummy          =  stk_pop_final(v)
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n365_call_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052432]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052416]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx374_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052440], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx374_6]
                        lea              rdx, [rip + .Lx374_7]
                                                                                        jmp   rax
.Lx374_6:
                        mov              rdi, qword ptr [1879052416]
                        mov              rsi, qword ptr [1879052424]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx374_2
.Lx374_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx374_2
.Lx374_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx374_21
.Lx374_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx374_21:
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx374_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx374_3]
                        lea              rdx, [rip + .Lx374_4]
                                                                                        jmp   rax
.Lx374_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx374_2
.Lx374_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx374_2
.Lx374_1:
                        call             rt_faildescr@PLT
.Lx374_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                                                                                        jmp   n367_assign_α
n365_call_β:
                                                                                        jmp   n366_lit_string_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "stk_pop_final"
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n368_call_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn378:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n370_lit_string_α
                                                                                        jmp   n369_assign_α
n368_call_β:
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n371_call_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn382:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop_final_ω
                                                                                        jmp   proc_pop_final_γ
n371_call_β:
                                                                                        jmp   proc_pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_β:
                                                                                        jmp   proc_pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 232]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_final_α
proc_Pop_final_α:
                        .global          proc_Pop_final_α
                        .global          proc_Pop_final_β
                        .global          proc_Pop_final_γ
                        .global          proc_Pop_final_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Pop_final_α_body:
#=======================================================================================================================
# Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n384_var_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n385_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n385_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n386_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n387_binop_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n387_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n388_call_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn396:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Pop_final_γ
                                                                                        jmp   n389_assign_α
n388_call_β:
                                                                                        jmp   proc_Pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_β:
                                                                                        jmp   proc_Pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 152]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_node_repr_α
proc_node_repr_α:
                        .global          proc_node_repr_α
                        .global          proc_node_repr_β
                        .global          proc_node_repr_γ
                        .global          proc_node_repr_ω
                        sub              rsp, 1168
                        mov              [rsp + 1144], rcx
                        mov              [rsp + 1152], rdx
                        mov              [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_node_repr_α_body:
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n399_call_α
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn460:              .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn460]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n400_var_α
                                                                                        jmp   n401_keyword_snobol4_α
n399_call_β:
                                                                                        jmp   n400_var_α
#=======================================================================================================================
# nr_frame       tag            =  stk_tag[f]
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [1879052848]
                        mov              rdx, qword ptr [1879052856]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n404_keyword_snobol4_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n405_subscript_α
#=======================================================================================================================
#                n              =  stk_n[f]
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n406_var_α
#-----------------------------------------------------------------------------------------------------------------------
n404_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx465_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n408_call_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n405_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n403_var_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n409_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n410_subscript_α
#=======================================================================================================================
#                r              =  "('" tag "'"
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n411_var_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "('"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn470:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n400_var_α
                                                                                        jmp   n412_lit_string_α
n408_call_β:
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_deref_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n403_var_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n413_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n410_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n407_lit_string_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n414_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n415_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n417_call_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "STRING"
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n403_var_α
#-----------------------------------------------------------------------------------------------------------------------
n414_deref_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n407_lit_string_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n418_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n415_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n419_lit_string_α
#=======================================================================================================================
#                i              =  0
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n420_assign_α
.Lx478_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n417_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn480:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n400_var_α
                                                                                        jmp   n421_lit_string_α
n417_call_β:
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n418_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n407_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n422_binop_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n423_var_α
#=======================================================================================================================
#                node_repr      =  "'" f "'"                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n424_var_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n422_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n425_assign_α
#=======================================================================================================================
# nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n426_var_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n428_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n425_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n416_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n429_op74_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n430_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_binop_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_op74_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 7
                                                                                        je    .Lx493_1
                        cmp              eax, 6
                                                                                        jne   .Lx493_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx493_0
.Lx493_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n432_op74_α
.Lx493_0:
                        lea              rdi, [rbp + 736]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 704]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n432_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n433_binop_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n434_binop_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n432_op74_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 7
                                                                                        je    .Lx497_1
                        cmp              eax, 6
                                                                                        jne   .Lx497_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx497_0
.Lx497_1:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n435_op76_α
.Lx497_0:
                        lea              rdi, [rbp + 720]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 688]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n435_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n433_binop_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n436_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n434_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n437_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n435_op76_α:
                        lea              rdi, [rbp + 704]
                        lea              rsi, [rbp + 688]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n427_var_α
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                                                                                        jmp   n438_var_α
#-----------------------------------------------------------------------------------------------------------------------
n436_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   proc_node_repr_γ
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   proc_node_repr_γ
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n439_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n440_binop_α
.Lx505_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n440_binop_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 100
                                                                                        je    .Lx506_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx506_2
.Lx506_1:
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n441_binop_α
.Lx506_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              r8d, 0
                        lea              r9, [rbp + 752]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n441_binop_α
.Lx506_2:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n427_var_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n441_binop_α
n440_binop_β:
                                                                                        jmp   n427_var_α
#-----------------------------------------------------------------------------------------------------------------------
n441_binop_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n442_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n442_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n443_var_α
#=======================================================================================================================
#                r              =  r ', ' node_repr(stk_c[f][i])
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n444_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n446_binop_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          ", "
#=======================================================================================================================
#                i              =  i                          :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n447_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n448_var_α
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n450_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n450_subscript_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n445_var_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n451_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n451_deref_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n445_var_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n452_var_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n453_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n453_subscript_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n445_var_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n454_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n454_deref_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n445_var_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n455_call_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_α:
                        sub              rsp, 112
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052672]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052680]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052704]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052712]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052624]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052632]
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rip + .Lx522_0]
                        mov              esi, 6
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx522_5
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052648], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx522_6]
                        lea              rdx, [rip + .Lx522_7]
                                                                                        jmp   rax
.Lx522_6:
                        mov              rdi, qword ptr [1879052624]
                        mov              rsi, qword ptr [1879052632]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 112
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx522_2
.Lx522_7:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 112
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx522_2
.Lx522_5:
                        add              rsp, 112
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx522_20
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx522_21
.Lx522_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx522_21:
                        mov              rdi, qword ptr [rip + .Lx522_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx522_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx522_3]
                        lea              rdx, [rip + .Lx522_4]
                                                                                        jmp   rax
.Lx522_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx522_2
.Lx522_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx522_2
.Lx522_1:
                        call             rt_faildescr@PLT
.Lx522_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n445_var_α
                                                                                        jmp   n456_binop_α
n455_call_β:
                                                                                        jmp   n445_var_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n456_binop_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n457_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n457_assign_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n445_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_β:
                                                                                        jmp   proc_node_repr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1144]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_ω:
                        mov              rax, [rbp + 1152]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_node_α
proc_pp_node_α:
                        .global          proc_pp_node_α
                        .global          proc_pp_node_β
                        .global          proc_pp_node_γ
                        .global          proc_pp_node_ω
                        sub              rsp, 2192
                        mov              [rsp + 2168], rcx
                        mov              [rsp + 2176], rdx
                        mov              [rsp + 2184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pp_node_α_body:
#=======================================================================================================================
# pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
#-----------------------------------------------------------------------------------------------------------------------
n525_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n526_call_α
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn635:              .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n527_var_α
                                                                                        jmp   n528_keyword_snobol4_α
n526_call_β:
                                                                                        jmp   n527_var_α
#=======================================================================================================================
# pp_frame       r              =  node_repr(f)
#-----------------------------------------------------------------------------------------------------------------------
n527_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n529_call_α
#-----------------------------------------------------------------------------------------------------------------------
n528_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx637_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n531_keyword_snobol4_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n529_call_α:
                        sub              rsp, 112
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052672]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052680]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052704]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052712]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052624]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052632]
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rip + .Lx639_0]
                        mov              esi, 6
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx639_5
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [1879052648], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx639_6]
                        lea              rdx, [rip + .Lx639_7]
                                                                                        jmp   rax
.Lx639_6:
                        mov              rdi, qword ptr [1879052624]
                        mov              rsi, qword ptr [1879052632]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 112
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx639_2
.Lx639_7:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 112
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx639_2
.Lx639_5:
                        add              rsp, 112
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx639_20
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx639_21
.Lx639_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx639_21:
                        mov              rdi, qword ptr [rip + .Lx639_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx639_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx639_3]
                        lea              rdx, [rip + .Lx639_4]
                                                                                        jmp   rax
.Lx639_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx639_2
.Lx639_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx639_2
.Lx639_1:
                        call             rt_faildescr@PLT
.Lx639_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n530_lit_string_α
                                                                                        jmp   n532_assign_α
n529_call_β:
                                                                                        jmp   n530_lit_string_α
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "node_repr"
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n533_var_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n531_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx641_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n534_call_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n530_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n535_call_α
#-----------------------------------------------------------------------------------------------------------------------
n534_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn645:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n527_var_α
                                                                                        jmp   n537_lit_string_α
n534_call_β:
                                                                                        jmp   n527_var_α
#-----------------------------------------------------------------------------------------------------------------------
n535_call_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn647:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn647]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n536_lit_integer_α
                                                                                        jmp   n538_assign_α
n535_call_β:
                                                                                        jmp   n536_lit_integer_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n539_var_α
.Lx648_0:
                        .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n540_call_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "STRING"
#-----------------------------------------------------------------------------------------------------------------------
n538_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n536_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n541_var_α
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn653:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn653]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n527_var_α
                                                                                        jmp   n543_lit_string_α
n540_call_β:
                                                                                        jmp   n527_var_α
#-----------------------------------------------------------------------------------------------------------------------
n541_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n544_call_α
#=======================================================================================================================
# pp_wrap        tag            =  stk_tag[f]
#-----------------------------------------------------------------------------------------------------------------------
n542_var_α:
                        mov              rax, qword ptr [1879052848]
                        mov              rdx, qword ptr [1879052856]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n545_var_α
#=======================================================================================================================
#                OUTPUT         =  DUPL(' ', indent) "'" f "'" suffix  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n547_var_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n544_call_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn658:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn658]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n542_var_α
                                                                                        jmp   n548_binop_α
n544_call_β:
                                                                                        jmp   n542_var_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n549_subscript_α
#=======================================================================================================================
#                n              =  stk_n[f]
#-----------------------------------------------------------------------------------------------------------------------
n546_var_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n550_var_α
#-----------------------------------------------------------------------------------------------------------------------
n547_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n552_call_α
#-----------------------------------------------------------------------------------------------------------------------
n548_binop_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 100
                                                                                        je    .Lx662_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 100
                                                                                        je    .Lx662_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx662_2
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx662_2
.Lx662_1:
                        mov              rax, qword ptr [rbp + 760]
                        mov              rcx, qword ptr [rbp + 776]
                        add              rax, rcx
                        mov              qword ptr [rbp + 736], 6
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n553_op74_α
.Lx662_0:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        lea              r9, [rbp + 736]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n553_op74_α
.Lx662_2:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n542_var_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n553_op74_α
n548_binop_β:
                                                                                        jmp   n542_var_α
#-----------------------------------------------------------------------------------------------------------------------
n549_subscript_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n546_var_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n554_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n555_subscript_α
#=======================================================================================================================
#                OUTPUT         =  pad '( ' "'" tag "',"
#-----------------------------------------------------------------------------------------------------------------------
n551_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n556_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn667:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn667]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   n558_lit_string_α
n552_call_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
n553_op74_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx669_1
                        cmp              eax, 6
                                                                                        jne   .Lx669_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx669_0
.Lx669_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n559_op74_α
.Lx669_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 720]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n559_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n554_deref_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n546_var_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n560_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n555_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n551_var_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n561_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n562_binop_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "( "
#=======================================================================================================================
#                i              =  0
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n563_assign_α
.Lx673_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n564_binop_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n559_op74_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 7
                                                                                        je    .Lx676_1
                        cmp              eax, 6
                                                                                        jne   .Lx676_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx676_0
.Lx676_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n565_op76_α
.Lx676_0:
                        lea              rdi, [rbp + 736]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 704]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n565_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n560_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n546_var_α
#-----------------------------------------------------------------------------------------------------------------------
n561_deref_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n551_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n566_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n562_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n567_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_assign_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n568_var_α
#-----------------------------------------------------------------------------------------------------------------------
n564_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n569_var_α
#-----------------------------------------------------------------------------------------------------------------------
n565_op76_α:
                        lea              rdi, [rbp + 720]
                        lea              rsi, [rbp + 704]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n542_var_α
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                                                                                        jmp   n570_var_α
#-----------------------------------------------------------------------------------------------------------------------
n566_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n551_var_α
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n571_binop_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "'"
#=======================================================================================================================
# pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n568_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n572_var_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n573_binop_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n570_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n574_var_α
#-----------------------------------------------------------------------------------------------------------------------
n571_binop_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n575_var_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n576_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n573_binop_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n577_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n574_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n578_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n575_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n579_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n576_op74_α:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 7
                                                                                        je    .Lx695_1
                        cmp              eax, 6
                                                                                        jne   .Lx695_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx695_0
.Lx695_1:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n580_op74_α
.Lx695_0:
                        lea              rdi, [rbp + 1392]
                        lea              rsi, [rbp + 1376]
                        lea              rdx, [rbp + 1360]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n580_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n581_binop_α
.Lx696_0:
                        .quad            .Lx696_0_s
.Lx696_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n578_binop_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n582_var_α
#-----------------------------------------------------------------------------------------------------------------------
n579_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n583_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n580_op74_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 7
                                                                                        je    .Lx700_1
                        cmp              eax, 6
                                                                                        jne   .Lx700_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 6
                                                                                        jne   .Lx700_0
.Lx700_1:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n584_op76_α
.Lx700_0:
                        lea              rdi, [rbp + 1376]
                        lea              rsi, [rbp + 1392]
                        lea              rdx, [rbp + 1344]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n584_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n581_binop_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n585_var_α
#-----------------------------------------------------------------------------------------------------------------------
n582_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n586_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n587_binop_α
.Lx703_0:
                        .quad            .Lx703_0_s
.Lx703_0_s:
                        .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n584_op76_α:
                        lea              rdi, [rbp + 1360]
                        lea              rsi, [rbp + 1344]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   proc_pp_node_γ
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n589_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n586_binop_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n590_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n587_binop_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n591_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n592_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n589_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n593_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n590_assign_α:
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              rdi, qword ptr [rip + .Lx711_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   proc_pp_node_γ
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n591_assign_α:
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              rdi, qword ptr [rip + .Lx712_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n557_lit_integer_α
.Lx712_0:
                        .quad            .Lx712_0_s
.Lx712_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n594_binop_α
.Lx713_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n593_assign_α:
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              rdi, qword ptr [rip + .Lx714_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   proc_pp_node_γ
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n594_binop_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 100
                                                                                        je    .Lx715_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx715_2
.Lx715_1:
                        mov              rax, qword ptr [rbp + 1432]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1408], 6
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n595_binop_α
.Lx715_0:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              r8d, 0
                        lea              r9, [rbp + 1408]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n595_binop_α
.Lx715_2:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n595_binop_α
n594_binop_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
n595_binop_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n596_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n596_assign_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n597_var_α
#=======================================================================================================================
#                nxt            =  LT(i, n) i                 :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n597_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n598_var_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n600_op74_α
#=======================================================================================================================
# pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n599_var_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n601_var_α
#-----------------------------------------------------------------------------------------------------------------------
n600_op74_α:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 7
                                                                                        je    .Lx722_1
                        cmp              eax, 6
                                                                                        jne   .Lx722_0
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 6
                                                                                        jne   .Lx722_0
.Lx722_1:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n602_op74_α
.Lx722_0:
                        lea              rdi, [rbp + 1552]
                        lea              rsi, [rbp + 1536]
                        lea              rdx, [rbp + 1520]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n602_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n603_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n602_op74_α:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 7
                                                                                        je    .Lx725_1
                        cmp              eax, 6
                                                                                        jne   .Lx725_0
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 6
                                                                                        jne   .Lx725_0
.Lx725_1:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n604_op76_α
.Lx725_0:
                        lea              rdi, [rbp + 1536]
                        lea              rsi, [rbp + 1552]
                        lea              rdx, [rbp + 1504]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n604_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n603_subscript_α:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              rdx, qword ptr [rbp + 1968]
                        mov              rcx, qword ptr [rbp + 1976]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n605_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n604_op76_α:
                        lea              rdi, [rbp + 1520]
                        lea              rsi, [rbp + 1504]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n599_var_α
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                                                                                        jmp   n606_var_α
#-----------------------------------------------------------------------------------------------------------------------
n605_deref_α:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n607_var_α
#-----------------------------------------------------------------------------------------------------------------------
n606_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n608_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n607_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n609_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n608_binop_α:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n610_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n609_subscript_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2016]
                        mov              rcx, qword ptr [rbp + 2024]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n611_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n610_assign_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n612_var_α
#-----------------------------------------------------------------------------------------------------------------------
n611_deref_α:
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n613_var_α
#=======================================================================================================================
#                pp_node(stk_c[f][i], indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n612_var_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n614_var_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n616_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n617_subscript_α
#=======================================================================================================================
#                i              =  i                          :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n615_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n618_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n619_binop_α
.Lx740_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n617_subscript_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n615_var_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n620_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n618_assign_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n568_var_α
#-----------------------------------------------------------------------------------------------------------------------
n619_binop_α:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 100
                                                                                        je    .Lx743_0
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 6
                                                                                        jne   .Lx743_2
.Lx743_1:
                        mov              rax, qword ptr [rbp + 2088]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 2064], 6
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n621_lit_string_α
.Lx743_0:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2096]
                        mov              rcx, qword ptr [rbp + 2104]
                        mov              r8d, 0
                        lea              r9, [rbp + 2064]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n621_lit_string_α
.Lx743_2:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2096]
                        mov              rcx, qword ptr [rbp + 2104]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n621_lit_string_α
n619_binop_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
n620_deref_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n615_var_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n622_var_α
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n623_var_α
.Lx745_0:
                        .quad            .Lx745_0_s
.Lx745_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n622_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n624_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n623_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n625_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n624_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n615_var_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n626_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n625_binop_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n627_call_α
#-----------------------------------------------------------------------------------------------------------------------
n626_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n615_var_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n628_var_α
#-----------------------------------------------------------------------------------------------------------------------
n627_call_α:
                        sub              rsp, 160
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052736]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052744]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052760]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052768]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052776]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052704]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052712]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [1879052784]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [1879052792]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [1879052720]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [1879052728]
                        mov              qword ptr [rsp + 152], rax
                        mov              rdi, qword ptr [rip + .Lx752_0]
                        mov              esi, 9
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx752_5
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx752_6]
                        lea              rdx, [rip + .Lx752_7]
                                                                                        jmp   rax
.Lx752_6:
                        mov              rdi, qword ptr [1879052720]
                        mov              rsi, qword ptr [1879052728]
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 160
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx752_2
.Lx752_7:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 160
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx752_2
.Lx752_5:
                        add              rsp, 160
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx752_20
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx752_21
.Lx752_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx752_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx752_22
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx752_23
.Lx752_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        call             rt_arg_stage@PLT
.Lx752_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx752_24
                        mov              rax, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx752_25
.Lx752_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        call             rt_arg_stage@PLT
.Lx752_25:
                        mov              rdi, qword ptr [rip + .Lx752_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx752_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx752_3]
                        lea              rdx, [rip + .Lx752_4]
                                                                                        jmp   rax
.Lx752_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx752_2
.Lx752_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx752_2
.Lx752_1:
                        call             rt_faildescr@PLT
.Lx752_2:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   proc_pp_node_γ
n627_call_β:
                                                                                        jmp   proc_pp_node_γ
.Lx752_0:
                        .quad            .Lx752_0_s
.Lx752_0_s:
                        .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n628_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n629_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n630_binop_α
.Lx754_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n630_binop_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 100
                                                                                        je    .Lx755_0
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 6
                                                                                        jne   .Lx755_2
.Lx755_1:
                        mov              rax, qword ptr [rbp + 1800]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 1776], 6
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n631_lit_string_α
.Lx755_0:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 0
                        lea              r9, [rbp + 1776]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n631_lit_string_α
.Lx755_2:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n615_var_α
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n631_lit_string_α
n630_binop_β:
                                                                                        jmp   n615_var_α
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx756_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n632_call_α
.Lx756_0:
                        .quad            .Lx756_0_s
.Lx756_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n632_call_α:
                        sub              rsp, 160
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052736]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052744]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052760]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052768]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052776]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052704]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052712]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [1879052784]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [1879052792]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [1879052720]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [1879052728]
                        mov              qword ptr [rsp + 152], rax
                        mov              rdi, qword ptr [rip + .Lx758_0]
                        mov              esi, 9
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx758_5
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx758_6]
                        lea              rdx, [rip + .Lx758_7]
                                                                                        jmp   rax
.Lx758_6:
                        mov              rdi, qword ptr [1879052720]
                        mov              rsi, qword ptr [1879052728]
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 160
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx758_2
.Lx758_7:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 160
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx758_2
.Lx758_5:
                        add              rsp, 160
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx758_20
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx758_21
.Lx758_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        call             rt_arg_stage@PLT
.Lx758_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx758_22
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx758_23
.Lx758_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        call             rt_arg_stage@PLT
.Lx758_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx758_24
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx758_25
.Lx758_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx758_25:
                        mov              rdi, qword ptr [rip + .Lx758_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx758_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx758_3]
                        lea              rdx, [rip + .Lx758_4]
                                                                                        jmp   rax
.Lx758_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx758_2
.Lx758_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx758_2
.Lx758_1:
                        call             rt_faildescr@PLT
.Lx758_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n615_var_α
                                                                                        jmp   n615_var_α
n632_call_β:
                                                                                        jmp   n615_var_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_β:
                                                                                        jmp   proc_pp_node_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2168]
                        lea              rsp, [rbp + 2192]
                        mov              rbp, [rbp + 2184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_ω:
                        mov              rax, [rbp + 2176]
                        lea              rsp, [rbp + 2192]
                        mov              rbp, [rbp + 2184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_bank_α
proc_pp_bank_α:
                        .global          proc_pp_bank_α
                        .global          proc_pp_bank_β
                        .global          proc_pp_bank_γ
                        .global          proc_pp_bank_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pp_bank_α_body:
#=======================================================================================================================
# pp_bank        pp_node(bank, 0, '')
#-----------------------------------------------------------------------------------------------------------------------
n759_var_α:
                        mov              rax, qword ptr [1879052928]
                        mov              rdx, qword ptr [1879052936]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n760_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n762_lit_string_α
.Lx767_0:
                        .quad            0
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n763_call_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n764_call_α
.Lx769_0:
                        .quad            .Lx769_0_s
.Lx769_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n763_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn771:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn771]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_bank_γ
                                                                                        jmp   n765_assign_α
n763_call_β:
                                                                                        jmp   proc_pp_bank_γ
#-----------------------------------------------------------------------------------------------------------------------
n764_call_α:
                        sub              rsp, 160
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052736]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052744]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052760]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052768]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052776]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052704]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052712]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [1879052784]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [1879052792]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [1879052720]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [1879052728]
                        mov              qword ptr [rsp + 152], rax
                        mov              rdi, qword ptr [rip + .Lx773_0]
                        mov              esi, 9
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx773_5
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx773_6]
                        lea              rdx, [rip + .Lx773_7]
                                                                                        jmp   rax
.Lx773_6:
                        mov              rdi, qword ptr [1879052720]
                        mov              rsi, qword ptr [1879052728]
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 160
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx773_2
.Lx773_7:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052648], rax
                        add              rsp, 160
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx773_2
.Lx773_5:
                        add              rsp, 160
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx773_20
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx773_21
.Lx773_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_arg_stage@PLT
.Lx773_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx773_22
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx773_23
.Lx773_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        call             rt_arg_stage@PLT
.Lx773_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx773_24
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx773_25
.Lx773_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_arg_stage@PLT
.Lx773_25:
                        mov              rdi, qword ptr [rip + .Lx773_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx773_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx773_3]
                        lea              rdx, [rip + .Lx773_4]
                                                                                        jmp   rax
.Lx773_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx773_2
.Lx773_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx773_2
.Lx773_1:
                        call             rt_faildescr@PLT
.Lx773_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n761_lit_string_α
                                                                                        jmp   n761_lit_string_α
n764_call_β:
                                                                                        jmp   n761_lit_string_α
.Lx773_0:
                        .quad            .Lx773_0_s
.Lx773_0_s:
                        .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n765_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052800], rax
                        mov              qword ptr [1879052808], rdx
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   proc_pp_bank_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_β:
                                                                                        jmp   proc_pp_bank_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rbp + 112], r8
                        mov              dword ptr [rbp + 104], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n777_match_assign_cond_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n775_match_assign_save_α:
                        lea              rdi, [rbp + 48]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n776_match_defer_α
n775_match_assign_save_β:
                        lea              rdi, [rbp + 48]
                        call             rt_cap_pop@PLT
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n776_match_defer_α:
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx780_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx780_4]
                        lea              rdx, [rip + .Lx780_5]
                                                                                        jmp   rax
.Lx780_4:
                                                                                        jmp   n777_match_assign_cond_α
.Lx780_5:
                                                                                        jmp   n775_match_assign_save_β
.Lx780_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx780_2:
                        test             rax, rax
                                                                                        je    .Lx780_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx780_7]
                        lea              rdx, [rip + .Lx780_8]
                                                                                        jmp   rax
.Lx780_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx780_2
.Lx780_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx780_2
.Lx780_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n775_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx780_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n777_match_assign_cond_α
.Lx780_6:
                        add              rsp, 16
                                                                                        jmp   n775_match_assign_save_β
n776_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n777_match_assign_cond_α:
                        lea              rdi, [rbp + 48]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$0_scanhit
n777_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n776_match_defer_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 80
                        mov              [rsp + 56], rcx
                        mov              [rsp + 64], rdx
                        mov              [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rbp + 48], r8
                        mov              dword ptr [rbp + 40], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n783_match_span_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n783_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx785_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx785_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx785_10
                        cmp              esi, 10
                                                                                        je    .Lx785_10
                                                                                        jmp   .Lx785_1
.Lx785_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx785_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx785_11
                        cmp              esi, 10
                                                                                        je    .Lx785_11
                                                                                        jmp   .Lx785_1
.Lx785_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx785_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx785_12
                        cmp              esi, 10
                                                                                        je    .Lx785_12
                                                                                        jmp   .Lx785_1
.Lx785_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx785_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx785_13
                        cmp              esi, 10
                                                                                        je    .Lx785_13
                                                                                        jmp   .Lx785_1
.Lx785_13:
                        add              ecx, 1
                                                                                        jmp   .Lx785_0
.Lx785_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx785_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx785_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_scanhit
n783_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 40], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 56]
                        mov              rbp, [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 112
                        mov              [rsp + 88], rcx
                        mov              [rsp + 96], rdx
                        mov              [rsp + 104], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rbp + 80], r8
                        mov              dword ptr [rbp + 72], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n786_match_sequence_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n786_match_sequence_α:
                                                                                        jmp   n787_match_notany_α
n786_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n786_match_sequence_β:
                                                                                        jmp   n788_match_break_β
n786_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n787_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   proc_PAT$2_ω
                        add              r14d, 1
                                                                                        jmp   n788_match_break_α
n787_match_notany_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n788_match_break_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx793_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx793_237
                        add              rsp, 16
                                                                                        jmp   n787_match_notany_β
.Lx793_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx793_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx793_238
                        add              rsp, 16
                                                                                        jmp   n787_match_notany_β
.Lx793_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx793_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx793_239
                        add              rsp, 16
                                                                                        jmp   n787_match_notany_β
.Lx793_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx793_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx793_240
                        add              rsp, 16
                                                                                        jmp   n787_match_notany_β
.Lx793_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx793_1
                        add              ecx, 1
                                                                                        jmp   .Lx793_0
.Lx793_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$2_γ
n788_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n787_match_notany_β
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 80], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 72]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 80], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 72]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 72], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
8:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 88]
                        mov              rbp, [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 96]
                        lea              rsp, [rbp + 112]
                        mov              rbp, [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rbp + 592], r8
                        mov              dword ptr [rbp + 584], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n794_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   n795_match_lit_α
n794_match_sequence_as:
                        mov              eax, dword ptr [rbp + 20]
                        add              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 1
                                                                                        je    n796_match_assign_save_α
                        cmp              eax, 2
                                                                                        je    n798_lit_string_α
                        cmp              eax, 3
                                                                                        je    n800_match_arbno_α
                        cmp              eax, 4
                                                                                        je    n801_call_α
                        cmp              eax, 5
                                                                                        je    n803_match_lit_α
                                                                                        jmp   proc_PAT$3_γ
n794_match_sequence_β:
                        mov              dword ptr [rbp + 20], 6
n794_match_sequence_af:
                        mov              eax, dword ptr [rbp + 20]
                        sub              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 0
                                                                                        je    n795_match_lit_β
                        cmp              eax, 1
                                                                                        je    n797_match_assign_cond_β
                        cmp              eax, 2
                                                                                        je    n799_match_value_β
                        cmp              eax, 3
                                                                                        je    n800_match_arbno_β
                        cmp              eax, 4
                                                                                        je    n802_match_value_β
                        cmp              eax, 5
                                                                                        je    n803_match_lit_β
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n795_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n794_match_sequence_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n794_match_sequence_af
                        add              r14d, 1
                                                                                        jmp   n794_match_sequence_as
n795_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n794_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n796_match_assign_save_α:
                        lea              rdi, [rbp + 80]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n804_match_defer_α
n796_match_assign_save_β:
                        lea              rdi, [rbp + 80]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n794_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n797_match_assign_cond_α:
                        lea              rdi, [rbp + 80]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n794_match_sequence_as
n797_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n804_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n805_call_α
n798_lit_string_β:
                                                                                        jmp   n794_match_sequence_af
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n799_match_value_α:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx826_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx826_4]
                        lea              rdx, [rip + .Lx826_5]
                                                                                        jmp   rax
.Lx826_4:
                                                                                        jmp   n794_match_sequence_as
.Lx826_5:
                                                                                        jmp   n794_match_sequence_af
.Lx826_0:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n794_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx826_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n794_match_sequence_as
.Lx826_6:
                        add              rsp, 16
                                                                                        jmp   n794_match_sequence_af
n799_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n800_match_arbno_α:
                        mov              dword ptr [rbp + 224], r14d
                        mov              dword ptr [rbp + 228], r14d
                        mov              dword ptr [rbp + 232], 0
                        mov              qword ptr [rbp + 248], rsp
                        mov              qword ptr [rbp + 240], 0
                                                                                        jmp   n794_match_sequence_as
n800_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 228]
                        mov              rax, qword ptr [rbp + 240]
                        sub              rsp, 304
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rbp + 240], rsp
                        mov              rbp, rsp
                        add              rbp, -232
                                                                                        jmp   n806_match_defer_α
n800_match_arbno_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              r14d, eax
                                                                                        je    n800_match_arbno_af
                        mov              rbp, qword ptr [rbp + 232]
                        mov              eax, dword ptr [rbp + 232]
                        add              eax, 1
                        mov              dword ptr [rbp + 232], eax
                        mov              dword ptr [rbp + 228], r14d
                                                                                        jmp   n794_match_sequence_as
n800_match_arbno_af:
                        mov              rax, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              rsp, [rbp + 536]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 232]
                        test             ecx, ecx
                                                                                        jz    .Lx828_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 232], ecx
                        mov              qword ptr [rbp + 240], rax
                        lea              rbp, [rax + -232]
                                                                                        jmp   n800_match_arbno_af
.Lx828_2:
                        mov              r14d, dword ptr [rbp + 224]
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   n794_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n801_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052576]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052584]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx830_0]
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx830_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx830_6]
                        lea              rdx, [rip + .Lx830_7]
                                                                                        jmp   rax
.Lx830_6:
                        mov              rdi, qword ptr [1879052576]
                        mov              rsi, qword ptr [1879052584]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052576], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052584], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx830_2
.Lx830_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052576], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052584], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx830_2
.Lx830_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx830_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx830_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx830_3]
                        lea              rdx, [rip + .Lx830_4]
                                                                                        jmp   rax
.Lx830_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx830_2
.Lx830_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx830_2
.Lx830_1:
                        call             rt_faildescr@PLT
.Lx830_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n794_match_sequence_af
                                                                                        jmp   n802_match_value_α
n801_call_β:
                                                                                        jmp   n794_match_sequence_af
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n802_match_value_α:
                        lea              rdi, [rbp + 544]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx831_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx831_4]
                        lea              rdx, [rip + .Lx831_5]
                                                                                        jmp   rax
.Lx831_4:
                                                                                        jmp   n794_match_sequence_as
.Lx831_5:
                                                                                        jmp   n794_match_sequence_af
.Lx831_0:
                        lea              rdi, [rbp + 544]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n794_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx831_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n794_match_sequence_as
.Lx831_6:
                        add              rsp, 16
                                                                                        jmp   n794_match_sequence_af
n802_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n803_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n794_match_sequence_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n794_match_sequence_af
                        add              r14d, 1
                                                                                        jmp   n794_match_sequence_as
n803_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n794_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n804_match_defer_α:
                        mov              rax, qword ptr [1879052960]
                        mov              rdx, qword ptr [1879052968]
                        cmp              eax, 3
                                                                                        jne   .Lx834_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx834_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx834_10
.Lx834_9:
                        xor              eax, eax
.Lx834_10:
                        test             rax, rax
                                                                                        jz    .Lx834_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx834_4]
                        lea              rdx, [rip + .Lx834_5]
                                                                                        jmp   rax
.Lx834_4:
                                                                                        jmp   n797_match_assign_cond_α
.Lx834_5:
                                                                                        jmp   n796_match_assign_save_β
.Lx834_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx834_2:
                        test             rax, rax
                                                                                        je    .Lx834_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx834_7]
                        lea              rdx, [rip + .Lx834_8]
                                                                                        jmp   rax
.Lx834_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx834_2
.Lx834_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx834_2
.Lx834_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n796_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx834_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n797_match_assign_cond_α
.Lx834_6:
                        add              rsp, 16
                                                                                        jmp   n796_match_assign_save_β
n804_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n805_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052480]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052488]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052512]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052520]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx836_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx836_5
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [1879052488], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx836_6]
                        lea              rdx, [rip + .Lx836_7]
                                                                                        jmp   rax
.Lx836_6:
                        mov              rdi, qword ptr [1879052512]
                        mov              rsi, qword ptr [1879052520]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052488], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx836_2
.Lx836_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052520], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052488], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx836_2
.Lx836_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx836_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx836_21
.Lx836_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx836_21:
                        mov              rdi, qword ptr [rip + .Lx836_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx836_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx836_3]
                        lea              rdx, [rip + .Lx836_4]
                                                                                        jmp   rax
.Lx836_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx836_2
.Lx836_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx836_2
.Lx836_1:
                        call             rt_faildescr@PLT
.Lx836_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n794_match_sequence_af
                                                                                        jmp   n799_match_value_α
n805_call_β:
                                                                                        jmp   n794_match_sequence_af
.Lx836_0:
                        .quad            .Lx836_0_s
.Lx836_0_s:
                        .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n806_match_defer_α:
                        mov              rax, qword ptr [1879052944]
                        mov              rdx, qword ptr [1879052952]
                        cmp              eax, 3
                                                                                        jne   .Lx837_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx837_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx837_10
.Lx837_9:
                        xor              eax, eax
.Lx837_10:
                        test             rax, rax
                                                                                        jz    .Lx837_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx837_4]
                        lea              rdx, [rip + .Lx837_5]
                                                                                        jmp   rax
.Lx837_4:
                                                                                        jmp   n807_match_fence1_α
.Lx837_5:
                                                                                        jmp   n800_match_arbno_af
.Lx837_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx837_2:
                        test             rax, rax
                                                                                        je    .Lx837_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx837_7]
                        lea              rdx, [rip + .Lx837_8]
                                                                                        jmp   rax
.Lx837_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx837_2
.Lx837_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx837_2
.Lx837_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n800_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx837_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n807_match_fence1_α
.Lx837_6:
                        add              rsp, 16
                                                                                        jmp   n800_match_arbno_af
n806_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n807_match_fence1_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n808_match_alternate_α
n807_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 272], rbp
                                                                                        jmp   n800_match_arbno_as
n807_match_fence1_β:
n807_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n800_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n808_match_alternate_α:
                        mov              dword ptr [rbp + 288], r14d
                        mov              dword ptr [rbp + 292], 0
                                                                                        jmp   n809_match_defer_α
n808_match_alternate_as:
                                                                                        jmp   n807_match_fence1_as
n808_match_alternate_β:
                        mov              eax, dword ptr [rbp + 292]
                        cmp              eax, 0
                                                                                        je    n809_match_defer_β
                                                                                        jmp   n810_match_sequence_β
n808_match_alternate_af:
                        add              dword ptr [rbp + 292], 1
                        mov              r14d, dword ptr [rbp + 288]
                        mov              eax, dword ptr [rbp + 292]
                        cmp              eax, 1
                                                                                        je    n810_match_sequence_α
                                                                                        jmp   n807_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n809_match_defer_α:
                        mov              rax, qword ptr [1879052976]
                        mov              rdx, qword ptr [1879052984]
                        cmp              eax, 3
                                                                                        jne   .Lx842_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx842_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx842_10
.Lx842_9:
                        xor              eax, eax
.Lx842_10:
                        test             rax, rax
                                                                                        jz    .Lx842_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx842_4]
                        lea              rdx, [rip + .Lx842_5]
                                                                                        jmp   rax
.Lx842_4:
                                                                                        jmp   n808_match_alternate_as
.Lx842_5:
                                                                                        jmp   n808_match_alternate_af
.Lx842_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx842_2:
                        test             rax, rax
                                                                                        je    .Lx842_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx842_7]
                        lea              rdx, [rip + .Lx842_8]
                                                                                        jmp   rax
.Lx842_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx842_2
.Lx842_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx842_2
.Lx842_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n808_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx842_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n808_match_alternate_as
.Lx842_6:
                        add              rsp, 16
                                                                                        jmp   n808_match_alternate_af
n809_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n810_match_sequence_α:
                        mov              dword ptr [rbp + 320], r14d
                        mov              dword ptr [rbp + 324], 0
                                                                                        jmp   n811_match_assign_save_α
n810_match_sequence_as:
                        mov              eax, dword ptr [rbp + 324]
                        add              eax, 1
                        mov              dword ptr [rbp + 324], eax
                        cmp              eax, 1
                                                                                        je    n813_lit_string_α
                                                                                        jmp   n808_match_alternate_as
n810_match_sequence_β:
                        mov              dword ptr [rbp + 324], 2
n810_match_sequence_af:
                        mov              eax, dword ptr [rbp + 324]
                        sub              eax, 1
                        mov              dword ptr [rbp + 324], eax
                        cmp              eax, 0
                                                                                        je    n812_match_assign_cond_β
                        cmp              eax, 1
                                                                                        je    n814_match_value_β
                                                                                        jmp   n808_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n811_match_assign_save_α:
                        lea              rdi, [rbp + 368]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n815_match_defer_α
n811_match_assign_save_β:
                        lea              rdi, [rbp + 368]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n810_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n812_match_assign_cond_α:
                        lea              rdi, [rbp + 368]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S6]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n810_match_sequence_as
n812_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n815_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n813_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx849_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n816_call_α
n813_lit_string_β:
                                                                                        jmp   n810_match_sequence_af
.Lx849_0:
                        .quad            .Lx849_0_s
.Lx849_0_s:
                        .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n814_match_value_α:
                        lea              rdi, [rbp + 432]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx850_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx850_4]
                        lea              rdx, [rip + .Lx850_5]
                                                                                        jmp   rax
.Lx850_4:
                                                                                        jmp   n810_match_sequence_as
.Lx850_5:
                                                                                        jmp   n810_match_sequence_af
.Lx850_0:
                        lea              rdi, [rbp + 432]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n810_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx850_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n810_match_sequence_as
.Lx850_6:
                        add              rsp, 16
                                                                                        jmp   n810_match_sequence_af
n814_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n815_match_defer_α:
                        mov              rax, qword ptr [1879052960]
                        mov              rdx, qword ptr [1879052968]
                        cmp              eax, 3
                                                                                        jne   .Lx851_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx851_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx851_10
.Lx851_9:
                        xor              eax, eax
.Lx851_10:
                        test             rax, rax
                                                                                        jz    .Lx851_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx851_4]
                        lea              rdx, [rip + .Lx851_5]
                                                                                        jmp   rax
.Lx851_4:
                                                                                        jmp   n812_match_assign_cond_α
.Lx851_5:
                                                                                        jmp   n811_match_assign_save_β
.Lx851_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx851_2:
                        test             rax, rax
                                                                                        je    .Lx851_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx851_7]
                        lea              rdx, [rip + .Lx851_8]
                                                                                        jmp   rax
.Lx851_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx851_2
.Lx851_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx851_2
.Lx851_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n811_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx851_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n812_match_assign_cond_α
.Lx851_6:
                        add              rsp, 16
                                                                                        jmp   n811_match_assign_save_β
n815_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n816_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052480]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052488]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052544]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052552]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx853_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx853_5
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [1879052488], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx853_6]
                        lea              rdx, [rip + .Lx853_7]
                                                                                        jmp   rax
.Lx853_6:
                        mov              rdi, qword ptr [1879052544]
                        mov              rsi, qword ptr [1879052552]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052552], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052488], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx853_2
.Lx853_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052552], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052488], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx853_2
.Lx853_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx853_20
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx853_21
.Lx853_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx853_21:
                        mov              rdi, qword ptr [rip + .Lx853_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx853_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx853_3]
                        lea              rdx, [rip + .Lx853_4]
                                                                                        jmp   rax
.Lx853_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx853_2
.Lx853_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx853_2
.Lx853_1:
                        call             rt_faildescr@PLT
.Lx853_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n810_match_sequence_af
                                                                                        jmp   n814_match_value_α
n816_call_β:
                                                                                        jmp   n810_match_sequence_af
.Lx853_0:
                        .quad            .Lx853_0_s
.Lx853_0_s:
                        .string          "Push_item"
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 592], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 584]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 592], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 584]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 584], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
8:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 576]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 600]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n856_match_assign_cond_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n854_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n855_match_sequence_α
n854_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n855_match_sequence_α:
                                                                                        jmp   n857_match_lit_α
n855_match_sequence_as:
                                                                                        jmp   n856_match_assign_cond_α
n855_match_sequence_β:
                                                                                        jmp   n859_match_lit_β
n855_match_sequence_af:
                                                                                        jmp   n854_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n856_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$4_scanhit
n856_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n855_match_sequence_β
#-----------------------------------------------------------------------------------------------------------------------
n857_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n854_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n854_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n858_match_bal_α
n857_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n854_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n858_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                        mov              dword ptr [rsp + 8], 0
n858_match_bal_β:
.Lx869_0:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx869_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 0], 1
                        mov              edx, dword ptr [rsp + 8]
                        cmp              esi, 40
                                                                                        jne   .Lx869_1
                        add              edx, 1
                                                                                        jmp   .Lx869_2
.Lx869_1:
                        cmp              esi, 41
                                                                                        jne   .Lx869_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx869_3
.Lx869_2:
                        mov              dword ptr [rsp + 8], edx
                        test             edx, edx
                                                                                        jne   .Lx869_0
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax
                                                                                        jmp   n859_match_lit_α
.Lx869_3:
                        mov              eax, dword ptr [rsp + 4]
                        mov              r14d, eax
                        add              rsp, 16
                                                                                        jmp   n857_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n859_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n858_match_bal_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n858_match_bal_β
                        add              r14d, 1
                                                                                        jmp   n856_match_assign_cond_α
n859_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n858_match_bal_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
8:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "list(head,tail)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "stk_push_frame"
.Lstartup_pp0_0:        .string          "v"
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
                        lea              rsi, [rip + proc_stk_push_frame_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "stk_push_item"
.Lstartup_pp1_0:        .string          "v"
.Lstartup_pp1_1:        .string          "cur"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            .Lstartup_pp1_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_stk_push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "stk_pop_into_parent"
.Lstartup_pp2_0:        .string          "child"
.Lstartup_pp2_1:        .string          "par"
.Lstartup_pp2_2:        .string          "n"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            .Lstartup_pp2_1
                        .quad            .Lstartup_pp2_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_stk_pop_into_parent_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 672
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "stk_pop_final"
.Lstartup_pp3_0:        .string          "var"
.Lstartup_pp3_1:        .string          "child"
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
                        lea              rsi, [rip + proc_stk_pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "init_list"
.Lstartup_pp4_0:        .string          "v"
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
                        lea              rsi, [rip + proc_init_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Init_list"
.Lstartup_pp5_0:        .string          "vs"
                        .align           8
.Lstartup_pnames5:
                        .quad            .Lstartup_pp5_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + .Lstartup_pnames5]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Init_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "push_list"
.Lstartup_pp6_0:        .string          "v"
                        .align           8
.Lstartup_pnames6:
                        .quad            .Lstartup_pp6_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + .Lstartup_pnames6]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_push_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Push_list"
.Lstartup_pp7_0:        .string          "vs"
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
                        lea              rsi, [rip + proc_Push_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "push_item"
.Lstartup_pp8_0:        .string          "v"
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
                        lea              rsi, [rip + proc_push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Push_item"
.Lstartup_pp9_0:        .string          "vs"
                        .align           8
.Lstartup_pnames9:
                        .quad            .Lstartup_pp9_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + .Lstartup_pnames9]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pop_list"
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
                        lea              rsi, [rip + proc_pop_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "Pop_list"
                        .align           8
.Lstartup_pnames11:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + .Lstartup_pnames11]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_Pop_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pop_final"
.Lstartup_pp12_0:       .string          "v"
                        .align           8
.Lstartup_pnames12:
                        .quad            .Lstartup_pp12_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + .Lstartup_pnames12]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "Pop_final"
.Lstartup_pp13_0:       .string          "vs"
                        .align           8
.Lstartup_pnames13:
                        .quad            .Lstartup_pp13_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + .Lstartup_pnames13]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_Pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "node_repr"
.Lstartup_pp14_0:       .string          "f"
.Lstartup_pp14_1:       .string          "r"
.Lstartup_pp14_2:       .string          "sep"
.Lstartup_pp14_3:       .string          "i"
.Lstartup_pp14_4:       .string          "n"
.Lstartup_pp14_5:       .string          "tag"
                        .align           8
.Lstartup_pnames14:
                        .quad            .Lstartup_pp14_0
                        .quad            .Lstartup_pp14_1
                        .quad            .Lstartup_pp14_2
                        .quad            .Lstartup_pp14_3
                        .quad            .Lstartup_pp14_4
                        .quad            .Lstartup_pp14_5
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + .Lstartup_pnames14]
                        mov              edx, 6
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_node_repr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "pp_node"
.Lstartup_pp15_0:       .string          "f"
.Lstartup_pp15_1:       .string          "indent"
.Lstartup_pp15_2:       .string          "suffix"
.Lstartup_pp15_3:       .string          "r"
.Lstartup_pp15_4:       .string          "pad"
.Lstartup_pp15_5:       .string          "tag"
.Lstartup_pp15_6:       .string          "n"
.Lstartup_pp15_7:       .string          "i"
.Lstartup_pp15_8:       .string          "nxt"
                        .align           8
.Lstartup_pnames15:
                        .quad            .Lstartup_pp15_0
                        .quad            .Lstartup_pp15_1
                        .quad            .Lstartup_pp15_2
                        .quad            .Lstartup_pp15_3
                        .quad            .Lstartup_pp15_4
                        .quad            .Lstartup_pp15_5
                        .quad            .Lstartup_pp15_6
                        .quad            .Lstartup_pp15_7
                        .quad            .Lstartup_pp15_8
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + .Lstartup_pnames15]
                        mov              edx, 9
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_pp_node_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 9
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pp_bank"
                        .align           8
.Lstartup_pnames16:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + .Lstartup_pnames16]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_pp_bank_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "stk_push_frame"
.Lgvan1:                .string          "v"
.Lgvan2:                .string          "stk_push_item"
.Lgvan3:                .string          "cur"
.Lgvan4:                .string          "stk_pop_into_parent"
.Lgvan5:                .string          "child"
.Lgvan6:                .string          "par"
.Lgvan7:                .string          "n"
.Lgvan8:                .string          "stk_pop_final"
.Lgvan9:                .string          "var"
.Lgvan10:               .string          "init_list"
.Lgvan11:               .string          "Init_list"
.Lgvan12:               .string          "vs"
.Lgvan13:               .string          "push_list"
.Lgvan14:               .string          "Push_list"
.Lgvan15:               .string          "push_item"
.Lgvan16:               .string          "Push_item"
.Lgvan17:               .string          "pop_list"
.Lgvan18:               .string          "Pop_list"
.Lgvan19:               .string          "pop_final"
.Lgvan20:               .string          "Pop_final"
.Lgvan21:               .string          "node_repr"
.Lgvan22:               .string          "f"
.Lgvan23:               .string          "r"
.Lgvan24:               .string          "sep"
.Lgvan25:               .string          "i"
.Lgvan26:               .string          "tag"
.Lgvan27:               .string          "pp_node"
.Lgvan28:               .string          "indent"
.Lgvan29:               .string          "suffix"
.Lgvan30:               .string          "pad"
.Lgvan31:               .string          "nxt"
.Lgvan32:               .string          "pp_bank"
.Lgvan33:               .string          "nl"
.Lgvan34:               .string          "frame_id"
.Lgvan35:               .string          "stk_tag"
.Lgvan36:               .string          "stk_n"
.Lgvan37:               .string          "stk_c"
.Lgvan38:               .string          "stk"
.Lgvan39:               .string          "dummy"
.Lgvan40:               .string          "bank"
.Lgvan41:               .string          "delim"
.Lgvan42:               .string          "word"
.Lgvan43:               .string          "group"
.Lgvan44:               .string          "wrd"
.Lgvan45:               .string          "spat"
.Lgvan46:               .string          "item"
.Lgvan47:               .string          "line"
.Lgvan48:               .string          "src"
.Lgvan49:               .string          "t0"
.Lgvan50:               .string          "t1"
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
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .quad            .Lgvan32
                        .quad            .Lgvan33
                        .quad            .Lgvan34
                        .quad            .Lgvan35
                        .quad            .Lgvan36
                        .quad            .Lgvan37
                        .quad            .Lgvan38
                        .quad            .Lgvan39
                        .quad            .Lgvan40
                        .quad            .Lgvan41
                        .quad            .Lgvan42
                        .quad            .Lgvan43
                        .quad            .Lgvan44
                        .quad            .Lgvan45
                        .quad            .Lgvan46
                        .quad            .Lgvan47
                        .quad            .Lgvan48
                        .quad            .Lgvan49
                        .quad            .Lgvan50
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 51
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 51
                        call             gva_register@PLT
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
                        sub              rsp, 1832
                        mov              rdi, rsp
                        mov              ecx, 1832
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1824], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#                &ALPHABET      POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n872_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx953_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n873_match_head_α
n872_keyword_snobol4_β:
                                                                                        jmp   n880_lit_string_α
.Lx953_0:
                        .quad            .Lx953_0_s
.Lx953_0_s:
                        .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n873_match_head_α:
                        mov              qword ptr [rbp + 56], rbp
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 48], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx955_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n874_match_sequence_α
n873_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx955_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx955_1
                                                                                        jmp   .Lx955_0
.Lx955_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n880_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n874_match_sequence_α:
                                                                                        jmp   n876_lit_integer_α
n874_match_sequence_as:
                                                                                        jmp   n875_match_release_α
n874_match_sequence_β:
                                                                                        jmp   n879_match_assign_cond_β
n874_match_sequence_af:
                                                                                        jmp   n873_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n875_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx959_1:
                        test             rax, rax
                                                                                        je    .Lx959_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx959_3]
                        lea              rdx, [rip + .Lx959_4]
                                                                                        jmp   rax
.Lx959_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx959_1
.Lx959_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx959_1
.Lx959_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n880_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n876_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n877_match_pos_α
n876_lit_integer_β:
                                                                                        jmp   n873_match_head_β
.Lx960_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n877_match_pos_α:
                        mov              rax, 10
                        cmp              r14d, eax
                                                                                        jne   n873_match_head_β
                                                                                        jmp   n878_match_assign_save_α
n877_match_pos_β:
                                                                                        jmp   n873_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n878_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n881_match_len_α
n878_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n873_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n879_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n875_match_release_α
n879_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n881_match_len_β
#=======================================================================================================================
#                DATA('list(head,tail)')
#-----------------------------------------------------------------------------------------------------------------------
n880_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n882_call_α
n880_lit_string_β:
                                                                                        jmp   n883_lit_integer_α
.Lx966_0:
                        .quad            .Lx966_0_s
.Lx966_0_s:
                        .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
n881_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx967_240
                        add              rsp, 16
                                                                                        jmp   n873_match_head_β
.Lx967_240:
                        add              r14d, 1
                                                                                        jmp   n879_match_assign_cond_α
n881_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n873_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n882_call_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn969:              .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn969]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n883_lit_integer_α
                                                                                        jmp   n883_lit_integer_α
n882_call_β:
                                                                                        jmp   n883_lit_integer_α
#=======================================================================================================================
#                frame_id       =  0
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n884_assign_α
n883_lit_integer_β:
                                                                                        jmp   n885_call_α
.Lx970_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n884_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n885_call_α
n884_assign_β:
                                                                                        jmp   n885_call_α
#=======================================================================================================================
#                stk_tag        =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n885_call_α:
                        .section         .rodata
.Lrkfn973:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn973]
                        lea              rsi, [rbp + 320]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n887_call_α
                                                                                        jmp   n886_assign_α
n885_call_β:
                                                                                        jmp   n887_call_α
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n887_call_α
n886_assign_β:
                                                                                        jmp   n887_call_α
#=======================================================================================================================
#                stk_n          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n887_call_α:
                        .section         .rodata
.Lrkfn976:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn976]
                        lea              rsi, [rbp + 368]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n889_call_α
                                                                                        jmp   n888_assign_α
n887_call_β:
                                                                                        jmp   n889_call_α
#-----------------------------------------------------------------------------------------------------------------------
n888_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [1879052864], rax
                        mov              qword ptr [1879052872], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n889_call_α
n888_assign_β:
                                                                                        jmp   n889_call_α
#=======================================================================================================================
#                stk_c          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n889_call_α:
                        .section         .rodata
.Lrkfn979:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn979]
                        lea              rsi, [rbp + 416]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n891_lit_string_α
                                                                                        jmp   n890_assign_α
n889_call_β:
                                                                                        jmp   n891_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n890_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052880], rax
                        mov              qword ptr [1879052888], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n891_lit_string_α
n890_assign_β:
                                                                                        jmp   n891_lit_string_α
#=======================================================================================================================
#                DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
#                DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
#                DEFINE('stk_pop_into_parent(child,par,n)')   :(stk_pop_into_parent_end)
#                DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
#                DEFINE('init_list(v)')
#                DEFINE('Init_list(vs)')                      :(init_list_end)
#                DEFINE('push_list(v)')
#                DEFINE('Push_list(vs)')                      :(push_list_end)
#                DEFINE('push_item(v)')
#                DEFINE('Push_item(vs)')                      :(push_item_end)
#                DEFINE('pop_list()')
#                DEFINE('Pop_list()')                         :(pop_list_end)
#                DEFINE('pop_final(v)')
#                DEFINE('Pop_final(vs)')                      :(pop_final_end)
#                DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
#                DEFINE('pp_node(f,indent,suffix)r,pad,tag,n,i,nxt') :(pp_node_end)
#                DEFINE('pp_bank()')                          :(pp_bank_end)
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n891_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n892_call_α
n891_lit_string_β:
                                                                                        jmp   n894_lit_string_α
.Lx981_0:
                        .quad            .Lx981_0_s
.Lx981_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n892_call_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn983:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn983]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n894_lit_string_α
                                                                                        jmp   n893_assign_α
n892_call_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052944], rax
                        mov              qword ptr [1879052952], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n894_lit_string_α
n893_assign_β:
                                                                                        jmp   n894_lit_string_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n894_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx985_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n895_call_α
n894_lit_string_β:
                                                                                        jmp   n897_lit_string_α
.Lx985_0:
                        .quad            .Lx985_0_s
.Lx985_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n895_call_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn987:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn987]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n897_lit_string_α
                                                                                        jmp   n896_assign_α
n895_call_β:
                                                                                        jmp   n897_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n896_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [1879052960], rax
                        mov              qword ptr [1879052968], rdx
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n897_lit_string_α
n896_assign_β:
                                                                                        jmp   n897_lit_string_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
n897_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n898_call_α
n897_lit_string_β:
                                                                                        jmp   n900_lit_string_α
.Lx989_0:
                        .quad            .Lx989_0_s
.Lx989_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n898_call_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn991:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn991]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n900_lit_string_α
                                                                                        jmp   n899_assign_α
n898_call_β:
                                                                                        jmp   n900_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n899_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052976], rax
                        mov              qword ptr [1879052984], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n900_lit_string_α
n899_assign_β:
                                                                                        jmp   n900_lit_string_α
#=======================================================================================================================
#                spat           =  ('(' BAL ')') . item
#-----------------------------------------------------------------------------------------------------------------------
n900_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n901_call_α
n900_lit_string_β:
                                                                                        jmp   n903_var_α
.Lx993_0:
                        .quad            .Lx993_0_s
.Lx993_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n901_call_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn995:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn995]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n903_var_α
                                                                                        jmp   n902_assign_α
n901_call_β:
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n902_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [1879053008], rax
                        mov              qword ptr [1879053016], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n903_var_α
n902_assign_β:
                                                                                        jmp   n903_var_α
#=======================================================================================================================
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:
                        mov              rdi, qword ptr [rip + .Lx997_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    n905_lit_string_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n904_assign_α
n903_var_β:
                                                                                        jmp   n905_lit_string_α
.Lx997_0:
                        .quad            .Lx997_0_s
.Lx997_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n904_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [1879053040], rax
                        mov              qword ptr [1879053048], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n906_var_α
n904_assign_β:
                                                                                        jmp   n905_lit_string_α
#=======================================================================================================================
#                dummy          =  init_list('bank')
#-----------------------------------------------------------------------------------------------------------------------
n905_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n907_call_α
n905_lit_string_β:
                                                                                        jmp   n910_lit_string_α
.Lx999_0:
                        .quad            .Lx999_0_s
.Lx999_0_s:
                        .string          "bank"
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n906_var_α:
                        mov              rax, qword ptr [1879053056]
                        mov              rdx, qword ptr [1879053064]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n908_var_α
n906_var_β:
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n907_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052448]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1002_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1002_5
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1002_6]
                        lea              rdx, [rip + .Lx1002_7]
                                                                                        jmp   rax
.Lx1002_6:
                        mov              rdi, qword ptr [1879052448]
                        mov              rsi, qword ptr [1879052456]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1002_2
.Lx1002_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1002_2
.Lx1002_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1002_20
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1002_21
.Lx1002_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        call             rt_arg_stage@PLT
.Lx1002_21:
                        mov              rdi, qword ptr [rip + .Lx1002_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1002_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1002_3]
                        lea              rdx, [rip + .Lx1002_4]
                                                                                        jmp   rax
.Lx1002_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1002_2
.Lx1002_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1002_2
.Lx1002_1:
                        call             rt_faildescr@PLT
.Lx1002_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n910_lit_string_α
                                                                                        jmp   n909_assign_α
n907_call_β:
                                                                                        jmp   n910_lit_string_α
.Lx1002_0:
                        .quad            .Lx1002_0_s
.Lx1002_0_s:
                        .string          "init_list"
#-----------------------------------------------------------------------------------------------------------------------
n908_var_α:
                        mov              rax, qword ptr [1879053040]
                        mov              rdx, qword ptr [1879053048]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n911_binop_α
n908_var_β:
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n909_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n910_lit_string_α
n909_assign_β:
                                                                                        jmp   n910_lit_string_α
#=======================================================================================================================
#                dummy          =  stk_push_frame('BANK')
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n912_call_α
n910_lit_string_β:
                                                                                        jmp   n915_call_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "BANK"
#-----------------------------------------------------------------------------------------------------------------------
n911_binop_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n913_var_α
n911_binop_β:
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n912_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1008_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1008_5
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1008_6]
                        lea              rdx, [rip + .Lx1008_7]
                                                                                        jmp   rax
.Lx1008_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1008_2
.Lx1008_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1008_2
.Lx1008_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1008_20
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1008_21
.Lx1008_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx1008_21:
                        mov              rdi, qword ptr [rip + .Lx1008_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1008_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1008_3]
                        lea              rdx, [rip + .Lx1008_4]
                                                                                        jmp   rax
.Lx1008_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1008_2
.Lx1008_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1008_2
.Lx1008_1:
                        call             rt_faildescr@PLT
.Lx1008_2:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n915_call_α
                                                                                        jmp   n914_assign_α
n912_call_β:
                                                                                        jmp   n915_call_α
.Lx1008_0:
                        .quad            .Lx1008_0_s
.Lx1008_0_s:
                        .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n913_var_α:
                        mov              rax, qword ptr [1879052816]
                        mov              rdx, qword ptr [1879052824]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n916_binop_α
n913_var_β:
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n914_assign_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n915_call_α
n914_assign_β:
                                                                                        jmp   n915_call_α
#=======================================================================================================================
#                t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n915_call_α:
                        .section         .rodata
.Lrkfn1012:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1012]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n918_var_α
                                                                                        jmp   n917_assign_α
n915_call_β:
                                                                                        jmp   n918_var_α
#-----------------------------------------------------------------------------------------------------------------------
n916_binop_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n919_assign_α
n916_binop_β:
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n917_assign_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [1879053072], rax
                        mov              qword ptr [1879053080], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n918_var_α
n917_assign_β:
                                                                                        jmp   n918_var_α
#=======================================================================================================================
# loop           src            spat =  ''                    :F(all_done)
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:
                        mov              rax, qword ptr [1879053056]
                        mov              rdx, qword ptr [1879053064]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n920_match_head_α
n918_var_β:
                                                                                        jmp   n921_call_α
#-----------------------------------------------------------------------------------------------------------------------
n919_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [1879053056], rax
                        mov              qword ptr [1879053064], rdx
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n903_var_α
n919_assign_β:
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n920_match_head_α:
                        mov              qword ptr [rbp + 1144], rbp
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 1136], r12
                        mov              qword ptr [rbp + 1120], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1112], rax
                        mov              dword ptr [rbp + 1104], 0
.Lx1018_0:
                        mov              r14d, dword ptr [rbp + 1104]
                                                                                        jmp   n922_match_defer_α
n920_match_head_β:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, r15d
                                                                                        jg    .Lx1018_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1018_1
                                                                                        jmp   .Lx1018_0
.Lx1018_1:
                        mov              rax, qword ptr [rbp + 1112]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1120]
                        mov              r12, qword ptr [rbp + 1136]
                        mov              rbp, qword ptr [rbp + 1144]
                                                                                        jmp   n921_call_α
#=======================================================================================================================
# all_done       t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n921_call_α:
                        .section         .rodata
.Lrkfn1020:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1020]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n924_lit_string_α
                                                                                        jmp   n923_assign_α
n921_call_β:
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_match_defer_α:
                        mov              rax, qword ptr [1879053008]
                        mov              rdx, qword ptr [1879053016]
                        cmp              eax, 3
                                                                                        jne   .Lx1021_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1021_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1021_10
.Lx1021_9:
                        xor              eax, eax
.Lx1021_10:
                        test             rax, rax
                                                                                        jz    .Lx1021_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1021_4]
                        lea              rdx, [rip + .Lx1021_5]
                                                                                        jmp   rax
.Lx1021_4:
                                                                                        jmp   n925_match_release_α
.Lx1021_5:
                                                                                        jmp   n920_match_head_β
.Lx1021_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx1021_2:
                        test             rax, rax
                                                                                        je    .Lx1021_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1021_7]
                        lea              rdx, [rip + .Lx1021_8]
                                                                                        jmp   rax
.Lx1021_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1021_2
.Lx1021_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1021_2
.Lx1021_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n920_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1021_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n925_match_release_α
.Lx1021_6:
                        add              rsp, 16
                                                                                        jmp   n920_match_head_β
n922_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n923_assign_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        mov              qword ptr [1879053088], rax
                        mov              qword ptr [1879053096], rdx
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n924_lit_string_α
n923_assign_β:
                                                                                        jmp   n924_lit_string_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n926_var_α
n924_lit_string_β:
                                                                                        jmp   n929_lit_string_α
.Lx1023_0:
                        .quad            .Lx1023_0_s
.Lx1023_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n925_match_release_α:
                        mov              rax, qword ptr [rbp + 1112]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rbp + 1128], r14
                        mov              rsp, qword ptr [rbp + 1120]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1025_1:
                        test             rax, rax
                                                                                        je    .Lx1025_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1025_3]
                        lea              rdx, [rip + .Lx1025_4]
                                                                                        jmp   rax
.Lx1025_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1025_1
.Lx1025_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1025_1
.Lx1025_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 1136]
                                                                                        jmp   n927_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n926_var_α:
                        mov              rax, qword ptr [1879053088]
                        mov              rdx, qword ptr [1879053096]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n928_var_α
n926_var_β:
                                                                                        jmp   n929_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n927_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n930_match_replace_α
n927_lit_string_β:
                                                                                        jmp   n921_call_α
.Lx1027_0:
                        .quad            .Lx1027_0_s
.Lx1027_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n928_var_α:
                        mov              rax, qword ptr [1879053072]
                        mov              rdx, qword ptr [1879053080]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n931_binop_α
n928_var_β:
                                                                                        jmp   n929_lit_string_α
#=======================================================================================================================
#                dummy          =  stk_pop_final('bank')
#-----------------------------------------------------------------------------------------------------------------------
n929_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n932_call_α
n929_lit_string_β:
                                                                                        jmp   n936_call_α
.Lx1029_0:
                        .quad            .Lx1029_0_s
.Lx1029_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n930_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx1031_0]
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              ecx, dword ptr [rbp + 1104]
                        mov              r8, qword ptr [rbp + 1128]
                        lea              r9, [rbp + 1168]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx1031_1
.Lx1031_0:
                        .quad            .Lx1031_0_s
.Lx1031_0_s:
                        .string          "src"
.Lx1031_1:
                        mov              rbp, qword ptr [rbp + 1144]
                                                                                        jmp   n933_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n931_binop_α:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 100
                                                                                        je    .Lx1032_0
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 100
                                                                                        je    .Lx1032_0
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 6
                                                                                        jne   .Lx1032_2
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 6
                                                                                        jne   .Lx1032_2
.Lx1032_1:
                        mov              rax, qword ptr [rbp + 1672]
                        mov              rcx, qword ptr [rbp + 1688]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1648], 6
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n934_binop_α
.Lx1032_0:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              r8d, 1
                        lea              r9, [rbp + 1648]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n934_binop_α
.Lx1032_2:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n929_lit_string_α
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n934_binop_α
n931_binop_β:
                                                                                        jmp   n929_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n932_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052432]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052416]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx1034_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1034_5
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [1879052440], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1034_6]
                        lea              rdx, [rip + .Lx1034_7]
                                                                                        jmp   rax
.Lx1034_6:
                        mov              rdi, qword ptr [1879052416]
                        mov              rsi, qword ptr [1879052424]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1034_2
.Lx1034_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1034_2
.Lx1034_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1034_20
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1034_21
.Lx1034_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        call             rt_arg_stage@PLT
.Lx1034_21:
                        mov              rdi, qword ptr [rip + .Lx1034_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1034_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1034_3]
                        lea              rdx, [rip + .Lx1034_4]
                                                                                        jmp   rax
.Lx1034_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1034_2
.Lx1034_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1034_2
.Lx1034_1:
                        call             rt_faildescr@PLT
.Lx1034_2:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n936_call_α
                                                                                        jmp   n935_assign_α
n932_call_β:
                                                                                        jmp   n936_call_α
.Lx1034_0:
                        .quad            .Lx1034_0_s
.Lx1034_0_s:
                        .string          "stk_pop_final"
#=======================================================================================================================
#                dummy          =  stk_push_frame('ROOT')
#-----------------------------------------------------------------------------------------------------------------------
n933_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx1035_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n937_call_α
n933_lit_string_β:
                                                                                        jmp   n941_var_α
.Lx1035_0:
                        .quad            .Lx1035_0_s
.Lx1035_0_s:
                        .string          "ROOT"
#-----------------------------------------------------------------------------------------------------------------------
n934_binop_α:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n938_assign_α
n934_binop_β:
                                                                                        jmp   n929_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n935_assign_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n936_call_α
n935_assign_β:
                                                                                        jmp   n936_call_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n936_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052800]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052808]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx1039_0]
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1039_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1039_6]
                        lea              rdx, [rip + .Lx1039_7]
                                                                                        jmp   rax
.Lx1039_6:
                        mov              rdi, qword ptr [1879052800]
                        mov              rsi, qword ptr [1879052808]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052800], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052808], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1039_2
.Lx1039_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052800], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052808], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1039_2
.Lx1039_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1039_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1039_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1039_3]
                        lea              rdx, [rip + .Lx1039_4]
                                                                                        jmp   rax
.Lx1039_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1039_2
.Lx1039_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1039_2
.Lx1039_1:
                        call             rt_faildescr@PLT
.Lx1039_2:
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   n939_assign_α
n936_call_β:
                                                                                        jmp   main_γ
.Lx1039_0:
                        .quad            .Lx1039_0_s
.Lx1039_0_s:
                        .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
n937_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1041_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1041_5
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1041_6]
                        lea              rdx, [rip + .Lx1041_7]
                                                                                        jmp   rax
.Lx1041_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1041_2
.Lx1041_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1041_2
.Lx1041_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1041_20
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1041_21
.Lx1041_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        call             rt_arg_stage@PLT
.Lx1041_21:
                        mov              rdi, qword ptr [rip + .Lx1041_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1041_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1041_3]
                        lea              rdx, [rip + .Lx1041_4]
                                                                                        jmp   rax
.Lx1041_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1041_2
.Lx1041_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1041_2
.Lx1041_1:
                        call             rt_faildescr@PLT
.Lx1041_2:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n941_var_α
                                                                                        jmp   n940_assign_α
n937_call_β:
                                                                                        jmp   n941_var_α
.Lx1041_0:
                        .quad            .Lx1041_0_s
.Lx1041_0_s:
                        .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n938_assign_α:
                        mov              rsi, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              rdi, qword ptr [rip + .Lx1042_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n929_lit_string_α
n938_assign_β:
                                                                                        jmp   n929_lit_string_α
.Lx1042_0:
                        .quad            .Lx1042_0_s
.Lx1042_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n939_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   main_γ
n939_assign_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n940_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n941_var_α
n940_assign_β:
                                                                                        jmp   n941_var_α
#=======================================================================================================================
#                item           group                         :F(parse_fail)
#-----------------------------------------------------------------------------------------------------------------------
n941_var_α:
                        mov              rax, qword ptr [1879053024]
                        mov              rdx, qword ptr [1879053032]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n942_match_head_α
n941_var_β:
                                                                                        jmp   n943_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n942_match_head_α:
                        mov              qword ptr [rbp + 1352], rbp
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 1344], r12
                        mov              qword ptr [rbp + 1328], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1320], rax
                        mov              dword ptr [rbp + 1312], 0
.Lx1047_0:
                        mov              r14d, dword ptr [rbp + 1312]
                                                                                        jmp   n944_match_defer_α
n942_match_head_β:
                        add              dword ptr [rbp + 1312], 1
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, r15d
                                                                                        jg    .Lx1047_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1047_1
                                                                                        jmp   .Lx1047_0
.Lx1047_1:
                        mov              rax, qword ptr [rbp + 1320]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1328]
                        mov              r12, qword ptr [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1352]
                                                                                        jmp   n943_lit_string_α
#=======================================================================================================================
# parse_fail     OUTPUT         =  'Parse failed on: ' item
#-----------------------------------------------------------------------------------------------------------------------
n943_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx1048_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n945_var_α
n943_lit_string_β:
                                                                                        jmp   n948_call_α
.Lx1048_0:
                        .quad            .Lx1048_0_s
.Lx1048_0_s:
                        .string          "Parse failed on: "
#-----------------------------------------------------------------------------------------------------------------------
n944_match_defer_α:
                        mov              rax, qword ptr [1879052976]
                        mov              rdx, qword ptr [1879052984]
                        cmp              eax, 3
                                                                                        jne   .Lx1049_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1049_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1049_10
.Lx1049_9:
                        xor              eax, eax
.Lx1049_10:
                        test             rax, rax
                                                                                        jz    .Lx1049_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1049_4]
                        lea              rdx, [rip + .Lx1049_5]
                                                                                        jmp   rax
.Lx1049_4:
                                                                                        jmp   n946_match_release_α
.Lx1049_5:
                                                                                        jmp   n942_match_head_β
.Lx1049_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx1049_2:
                        test             rax, rax
                                                                                        je    .Lx1049_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1049_7]
                        lea              rdx, [rip + .Lx1049_8]
                                                                                        jmp   rax
.Lx1049_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1049_2
.Lx1049_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1049_2
.Lx1049_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n942_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1049_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n946_match_release_α
.Lx1049_6:
                        add              rsp, 16
                                                                                        jmp   n942_match_head_β
n944_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n945_var_α:
                        mov              rax, qword ptr [1879053024]
                        mov              rdx, qword ptr [1879053032]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n947_binop_α
n945_var_β:
                                                                                        jmp   n948_call_α
#-----------------------------------------------------------------------------------------------------------------------
n946_match_release_α:
                        mov              rax, qword ptr [rbp + 1320]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1328]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1052_1:
                        test             rax, rax
                                                                                        je    .Lx1052_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1052_3]
                        lea              rdx, [rip + .Lx1052_4]
                                                                                        jmp   rax
.Lx1052_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1052_1
.Lx1052_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1052_1
.Lx1052_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1352]
                                                                                        jmp   n949_call_α
#-----------------------------------------------------------------------------------------------------------------------
n947_binop_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n950_assign_α
n947_binop_β:
                                                                                        jmp   n948_call_α
#=======================================================================================================================
#                dummy          =  stk_pop_into_parent()      :(loop)
#-----------------------------------------------------------------------------------------------------------------------
n948_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx1055_0]
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1055_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1055_6]
                        lea              rdx, [rip + .Lx1055_7]
                                                                                        jmp   rax
.Lx1055_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1055_2
.Lx1055_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1055_2
.Lx1055_5:
                        add              rsp, 64
                        mov              rdi, qword ptr [rip + .Lx1055_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1055_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1055_3]
                        lea              rdx, [rip + .Lx1055_4]
                                                                                        jmp   rax
.Lx1055_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1055_2
.Lx1055_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1055_2
.Lx1055_1:
                        call             rt_faildescr@PLT
.Lx1055_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n918_var_α
                                                                                        jmp   n951_assign_α
n948_call_β:
                                                                                        jmp   n918_var_α
.Lx1055_0:
                        .quad            .Lx1055_0_s
.Lx1055_0_s:
                        .string          "stk_pop_into_parent"
#=======================================================================================================================
#                dummy          =  stk_pop_into_parent()      :(loop)
#-----------------------------------------------------------------------------------------------------------------------
n949_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx1057_0]
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1057_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1057_6]
                        lea              rdx, [rip + .Lx1057_7]
                                                                                        jmp   rax
.Lx1057_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1057_2
.Lx1057_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1057_2
.Lx1057_5:
                        add              rsp, 64
                        mov              rdi, qword ptr [rip + .Lx1057_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1057_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1057_3]
                        lea              rdx, [rip + .Lx1057_4]
                                                                                        jmp   rax
.Lx1057_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1057_2
.Lx1057_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1057_2
.Lx1057_1:
                        call             rt_faildescr@PLT
.Lx1057_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n918_var_α
                                                                                        jmp   n952_assign_α
n949_call_β:
                                                                                        jmp   n918_var_α
.Lx1057_0:
                        .quad            .Lx1057_0_s
.Lx1057_0_s:
                        .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n950_assign_α:
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              rdi, qword ptr [rip + .Lx1058_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n948_call_α
n950_assign_β:
                                                                                        jmp   n948_call_α
.Lx1058_0:
                        .quad            .Lx1058_0_s
.Lx1058_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n951_assign_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n918_var_α
n951_assign_β:
                                                                                        jmp   n918_var_α
#-----------------------------------------------------------------------------------------------------------------------
n952_assign_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [1879052912], rax
                        mov              qword ptr [1879052920], rdx
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n918_var_α
n952_assign_β:
                                                                                        jmp   n918_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1824]
                        add              rsp, 1832
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1824]
                        add              rsp, 1832
                        ret
                        .section         .rodata
.S0:                    .string          "epsilon"
.S1:                    .string          "*pop_list"
.S2:                    .string          "tag"
.S3:                    .string          "word"
.S4:                    .string          "delim"
.S5:                    .string          "group"
.S6:                    .string          "wrd"
.S7:                    .string          "item"
.S8:                    .string          "nl"
.S9:                    .string          "spat"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
