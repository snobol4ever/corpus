                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_list_reverse_α
proc_list_reverse_α:
                        .global          proc_list_reverse_α
                        .global          proc_list_reverse_β
                        .global          proc_list_reverse_γ
                        .global          proc_list_reverse_ω
                        sub              rsp, 432
                        mov              [rsp + 408], rcx
                        mov              [rsp + 416], rdx
                        mov              [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_list_reverse_α_body:
#=======================================================================================================================
# list_reverse   acc            =
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n1_assign_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n2_var_α
#=======================================================================================================================
#                cur            =  lst
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n4_var_α
#=======================================================================================================================
# lr1            DIFFER(cur)                                  :F(lr_done)
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n5_call_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn22:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_α
                                                                                        jmp   n7_var_α
n5_call_β:
                                                                                        jmp   n6_var_α
#=======================================================================================================================
# lr_done        list_reverse   =  acc                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n8_assign_α
#=======================================================================================================================
#                acc            =  list(head(cur), acc)
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n9_call_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   proc_list_reverse_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn27:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n10_var_α
                                                                                        jmp   n11_var_α
n9_call_β:
                                                                                        jmp   n10_var_α
#=======================================================================================================================
#                cur            =  tail(cur)                  :(lr1)
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n12_call_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n13_call_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn31:               .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n4_var_α
                                                                                        jmp   n14_assign_α
n12_call_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn33:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]
                        lea              rsi, [rbp + 160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n10_var_α
                                                                                        jmp   n15_assign_α
n13_call_β:
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_β:
                                                                                        jmp   proc_list_reverse_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 408]
                        lea              rsp, [rbp + 432]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_ω:
                        mov              rax, [rbp + 416]
                        lea              rsp, [rbp + 432]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_frame_α
proc_stk_push_frame_α:
                        .global          proc_stk_push_frame_α
                        .global          proc_stk_push_frame_β
                        .global          proc_stk_push_frame_γ
                        .global          proc_stk_push_frame_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_push_frame_α_body:
#=======================================================================================================================
# stk_push_frame stk            =  list(list(v,), stk)
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n39_call_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          ""
#=======================================================================================================================
#                stk_push_frame =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n40_call_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn49:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                                                                                        jmp   n41_var_α
n39_call_β:
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn51:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_push_frame_γ
                                                                                        jmp   n42_assign_α
n40_call_β:
                                                                                        jmp   proc_stk_push_frame_γ
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n43_call_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   proc_stk_push_frame_γ
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn55:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rbp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                                                                                        jmp   n44_assign_α
n43_call_β:
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n38_lit_string_α
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
                        mov              rax, [rbp + 280]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_item_α
proc_stk_push_item_α:
                        .global          proc_stk_push_item_α
                        .global          proc_stk_push_item_β
                        .global          proc_stk_push_item_γ
                        .global          proc_stk_push_item_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_push_item_α_body:
#=======================================================================================================================
# stk_push_item  head(stk)      =  list(v, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n58_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx68_0]
                        mov              rsi, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n59_lit_string_α
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n60_var_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "head"
#=======================================================================================================================
#                stk_push_item  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n61_call_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn72:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_push_item_γ
                                                                                        jmp   n63_assign_α
n61_call_β:
                                                                                        jmp   proc_stk_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n64_call_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   proc_stk_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn76:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n59_lit_string_α
                                                                                        jmp   n65_call_α
n64_call_β:
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn78:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n59_lit_string_α
                                                                                        jmp   n66_assign_var_α
n65_call_β:
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_var_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n59_lit_string_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n59_lit_string_α
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
                        mov              rax, [rbp + 280]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
                        .global          proc_stk_pop_into_parent_α
                        .global          proc_stk_pop_into_parent_β
                        .global          proc_stk_pop_into_parent_γ
                        .global          proc_stk_pop_into_parent_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_pop_into_parent_α_body:
#=======================================================================================================================
#                child          =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n81_call_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn99:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n82_var_α
                                                                                        jmp   n83_call_α
n81_call_β:
                                                                                        jmp   n82_var_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n84_call_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx102_5
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx102_6]
                        lea              rdx, [rip + .Lx102_7]
                                                                                        jmp   rax
.Lx102_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx102_20
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx102_21
.Lx102_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        call             rt_arg_stage@PLT
.Lx102_21:
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx102_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx102_3]
                        lea              rdx, [rip + .Lx102_4]
                                                                                        jmp   rax
.Lx102_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx102_2
.Lx102_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx102_2
.Lx102_1:
                        call             rt_faildescr@PLT
.Lx102_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n82_var_α
                                                                                        jmp   n86_assign_α
n83_call_β:
                                                                                        jmp   n82_var_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn104:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n85_var_α
                                                                                        jmp   n87_assign_α
n84_call_β:
                                                                                        jmp   n85_var_α
#=======================================================================================================================
#                head(stk)      =  list(child, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n88_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx108_0]
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n89_lit_string_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n90_var_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "head"
#=======================================================================================================================
#                stk_pop_into_parent =  .dummy                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n91_call_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn112:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_pop_into_parent_γ
                                                                                        jmp   n93_assign_α
n91_call_β:
                                                                                        jmp   proc_stk_pop_into_parent_γ
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n94_call_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   proc_stk_pop_into_parent_γ
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn116:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n89_lit_string_α
                                                                                        jmp   n95_call_α
n94_call_β:
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn118:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n89_lit_string_α
                                                                                        jmp   n96_assign_var_α
n95_call_β:
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_var_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n89_lit_string_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n89_lit_string_α
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
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_final_α
proc_stk_pop_final_α:
                        .global          proc_stk_pop_final_α
                        .global          proc_stk_pop_final_β
                        .global          proc_stk_pop_final_γ
                        .global          proc_stk_pop_final_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_pop_final_α_body:
#=======================================================================================================================
# stk_pop_final  $var           =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n121_call_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn134:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n122_var_α
                                                                                        jmp   n123_var_α
n121_call_β:
                                                                                        jmp   n122_var_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n124_call_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n126_call_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn138:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n127_assign_α
n124_call_β:
                                                                                        jmp   n125_lit_string_α
#=======================================================================================================================
#                stk_pop_final  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n128_call_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn141:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n122_var_α
                                                                                        jmp   n129_call_α
n126_call_β:
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn144:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_pop_final_γ
                                                                                        jmp   n130_assign_α
n128_call_β:
                                                                                        jmp   proc_stk_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx146_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx146_5
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx146_6]
                        lea              rdx, [rip + .Lx146_7]
                                                                                        jmp   rax
.Lx146_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_20
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx146_21
.Lx146_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_arg_stage@PLT
.Lx146_21:
                        mov              rdi, qword ptr [rip + .Lx146_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx146_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx146_3]
                        lea              rdx, [rip + .Lx146_4]
                                                                                        jmp   rax
.Lx146_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_1:
                        call             rt_faildescr@PLT
.Lx146_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n122_var_α
                                                                                        jmp   n131_assign_var_α
n129_call_β:
                                                                                        jmp   n122_var_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   proc_stk_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_var_α:
                        mov              rdi, qword ptr [rbp + 0]
                        mov              rsi, qword ptr [rbp + 8]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n122_var_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n122_var_α
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
                        mov              rax, [rbp + 360]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_ω:
                        mov              rax, [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_init_list_α
proc_init_list_α:
                        .global          proc_init_list_α
                        .global          proc_init_list_β
                        .global          proc_init_list_γ
                        .global          proc_init_list_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_init_list_α_body:
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n150_call_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn162:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                                                                                        jmp   n152_lit_string_α
n150_call_β:
                                                                                        jmp   n151_lit_string_α
#=======================================================================================================================
#                stk            =
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n153_assign_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n154_assign_var_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_var_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n151_lit_string_α
#=======================================================================================================================
#                init_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n156_call_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn169:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n158_lit_string_α
                                                                                        jmp   n157_assign_α
n156_call_β:
                                                                                        jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n159_call_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn173:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_init_list_ω
                                                                                        jmp   proc_init_list_γ
n159_call_β:
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
                        mov              rax, [rbp + 280]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
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
# Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n175_var_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n176_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n176_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n178_binop_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n179_call_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn187:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Init_list_γ
                                                                                        jmp   n180_assign_α
n179_call_β:
                                                                                        jmp   proc_Init_list_γ
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
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
n189_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n190_call_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx199_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx199_6]
                        lea              rdx, [rip + .Lx199_7]
                                                                                        jmp   rax
.Lx199_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx199_2
.Lx199_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx199_2
.Lx199_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx199_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx199_21
.Lx199_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx199_21:
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx199_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx199_3]
                        lea              rdx, [rip + .Lx199_4]
                                                                                        jmp   rax
.Lx199_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx199_2
.Lx199_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx199_2
.Lx199_1:
                        call             rt_faildescr@PLT
.Lx199_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n191_lit_string_α
                                                                                        jmp   n192_assign_α
n190_call_β:
                                                                                        jmp   n191_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "stk_push_frame"
#=======================================================================================================================
#                push_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n193_call_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn203:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n195_lit_string_α
                                                                                        jmp   n194_assign_α
n193_call_β:
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n196_call_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn207:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_push_list_ω
                                                                                        jmp   proc_push_list_γ
n196_call_β:
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
# Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n209_var_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n210_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n212_binop_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n212_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n213_call_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn221:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Push_list_γ
                                                                                        jmp   n214_assign_α
n213_call_β:
                                                                                        jmp   proc_Push_list_γ
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
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
n223_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n224_call_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx233_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx233_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx233_6]
                        lea              rdx, [rip + .Lx233_7]
                                                                                        jmp   rax
.Lx233_6:
                        mov              rdi, qword ptr [1879052384]
                        mov              rsi, qword ptr [1879052392]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx233_21
.Lx233_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx233_21:
                        mov              rdi, qword ptr [rip + .Lx233_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx233_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx233_3]
                        lea              rdx, [rip + .Lx233_4]
                                                                                        jmp   rax
.Lx233_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_1:
                        call             rt_faildescr@PLT
.Lx233_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n225_lit_string_α
                                                                                        jmp   n226_assign_α
n224_call_β:
                                                                                        jmp   n225_lit_string_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "stk_push_item"
#=======================================================================================================================
#                push_item      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n227_call_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn237:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n229_lit_string_α
                                                                                        jmp   n228_assign_α
n227_call_β:
                                                                                        jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n230_call_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n230_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn241:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_push_item_ω
                                                                                        jmp   proc_push_item_γ
n230_call_β:
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
# Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n243_var_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n244_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n246_binop_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n247_call_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn255:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Push_item_γ
                                                                                        jmp   n248_assign_α
n247_call_β:
                                                                                        jmp   proc_Push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
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
n257_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx265_0]
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx265_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx265_6]
                        lea              rdx, [rip + .Lx265_7]
                                                                                        jmp   rax
.Lx265_6:
                        mov              rdi, qword ptr [1879052400]
                        mov              rsi, qword ptr [1879052408]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx265_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx265_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx265_3]
                        lea              rdx, [rip + .Lx265_4]
                                                                                        jmp   rax
.Lx265_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_1:
                        call             rt_faildescr@PLT
.Lx265_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n259_lit_string_α
                                                                                        jmp   n258_assign_α
n257_call_β:
                                                                                        jmp   n259_lit_string_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n259_lit_string_α
#=======================================================================================================================
#                pop_list       =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n260_call_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn269:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n262_lit_string_α
                                                                                        jmp   n261_assign_α
n260_call_β:
                                                                                        jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n263_call_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn273:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop_list_ω
                                                                                        jmp   proc_pop_list_γ
n263_call_β:
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
n274_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n275_call_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn279:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Pop_list_γ
                                                                                        jmp   n276_assign_α
n275_call_β:
                                                                                        jmp   proc_Pop_list_γ
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
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
n281_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n282_call_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052448]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052432]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx291_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx291_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052456], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_6]
                        lea              rdx, [rip + .Lx291_7]
                                                                                        jmp   rax
.Lx291_6:
                        mov              rdi, qword ptr [1879052432]
                        mov              rsi, qword ptr [1879052440]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052456], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052456], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx291_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx291_21
.Lx291_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx291_21:
                        mov              rdi, qword ptr [rip + .Lx291_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx291_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_3]
                        lea              rdx, [rip + .Lx291_4]
                                                                                        jmp   rax
.Lx291_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_1:
                        call             rt_faildescr@PLT
.Lx291_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n283_lit_string_α
                                                                                        jmp   n284_assign_α
n282_call_β:
                                                                                        jmp   n283_lit_string_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "stk_pop_final"
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n285_call_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n283_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn295:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n287_lit_string_α
                                                                                        jmp   n286_assign_α
n285_call_β:
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rbp + 0], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n288_call_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:
                        mov              rax, qword ptr [rbp + 0]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn299:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop_final_ω
                                                                                        jmp   proc_pop_final_γ
n288_call_β:
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
# Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n301_var_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n302_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n302_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n303_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n304_binop_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n305_call_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn313:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_Pop_final_γ
                                                                                        jmp   n306_assign_α
n305_call_β:
                                                                                        jmp   proc_Pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
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
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_node_repr_α_body:
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n316_call_α
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn355:              .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n317_lit_string_α
                                                                                        jmp   n318_keyword_snobol4_α
n316_call_β:
                                                                                        jmp   n317_lit_string_α
#=======================================================================================================================
# nr_list        r              =  '('
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n319_assign_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n318_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx357_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n320_keyword_snobol4_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n321_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx359_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n322_call_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "UCASE"
#=======================================================================================================================
#                sep            =
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n323_assign_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
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
.Lrkfn362:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n317_lit_string_α
                                                                                        jmp   n324_lit_string_α
n322_call_β:
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n325_var_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n326_call_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "STRING"
#=======================================================================================================================
#                c              =  node
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n327_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn367:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n317_lit_string_α
                                                                                        jmp   n329_lit_string_α
n326_call_β:
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n328_var_α
#=======================================================================================================================
# nr_lp          DIFFER(c)                                    :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n330_call_α
#=======================================================================================================================
#                node_repr      =  "'" node "'"               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n332_var_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn372:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn372]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n331_var_α
                                                                                        jmp   n333_var_α
n330_call_β:
                                                                                        jmp   n331_var_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n334_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n335_binop_α
#=======================================================================================================================
#                r              =  r sep node_repr(head(c))
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n338_binop_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n335_binop_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n340_binop_α
#=======================================================================================================================
#                sep            =  ', '
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n341_assign_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n338_binop_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n342_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n343_binop_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n340_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n344_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n345_var_α
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   proc_node_repr_γ
#-----------------------------------------------------------------------------------------------------------------------
n343_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n346_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n347_call_α
#=======================================================================================================================
#                c              =  tail(c)                    :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n348_call_α
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   proc_node_repr_γ
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn390:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn390]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n337_lit_string_α
                                                                                        jmp   n349_call_α
n347_call_β:
                                                                                        jmp   n337_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn392:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n328_var_α
                                                                                        jmp   n350_assign_α
n348_call_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:
                        sub              rsp, 80
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052672]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052680]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052704]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052712]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rip + .Lx394_0]
                        mov              esi, 4
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx394_5
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [1879052664], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx394_6]
                        lea              rdx, [rip + .Lx394_7]
                                                                                        jmp   rax
.Lx394_6:
                        mov              rdi, qword ptr [1879052640]
                        mov              rsi, qword ptr [1879052648]
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_7:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_5:
                        add              rsp, 80
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_20
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx394_21
.Lx394_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx394_21:
                        mov              rdi, qword ptr [rip + .Lx394_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx394_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4]
                                                                                        jmp   rax
.Lx394_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_1:
                        call             rt_faildescr@PLT
.Lx394_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n337_lit_string_α
                                                                                        jmp   n351_binop_α
n349_call_β:
                                                                                        jmp   n337_lit_string_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n351_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n352_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n337_lit_string_α
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
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_node_α
proc_pp_node_α:
                        .global          proc_pp_node_α
                        .global          proc_pp_node_β
                        .global          proc_pp_node_γ
                        .global          proc_pp_node_ω
                        sub              rsp, 1456
                        mov              [rsp + 1432], rcx
                        mov              [rsp + 1440], rdx
                        mov              [rsp + 1448], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pp_node_α_body:
#=======================================================================================================================
# pp_node        r              =  node_repr(node)
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n399_call_α
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:
                        sub              rsp, 80
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052672]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052680]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052704]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052712]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052640]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052648]
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rip + .Lx460_0]
                        mov              esi, 4
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx460_5
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [1879052664], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx460_6]
                        lea              rdx, [rip + .Lx460_7]
                                                                                        jmp   rax
.Lx460_6:
                        mov              rdi, qword ptr [1879052640]
                        mov              rsi, qword ptr [1879052648]
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx460_2
.Lx460_7:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052640], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052648], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052704], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052712], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 80
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx460_2
.Lx460_5:
                        add              rsp, 80
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx460_20
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx460_21
.Lx460_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        call             rt_arg_stage@PLT
.Lx460_21:
                        mov              rdi, qword ptr [rip + .Lx460_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx460_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx460_3]
                        lea              rdx, [rip + .Lx460_4]
                                                                                        jmp   rax
.Lx460_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx460_2
.Lx460_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx460_2
.Lx460_1:
                        call             rt_faildescr@PLT
.Lx460_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n400_lit_string_α
                                                                                        jmp   n401_assign_α
n399_call_β:
                                                                                        jmp   n400_lit_string_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "node_repr"
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n402_var_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n400_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n403_call_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn465:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n404_lit_integer_α
                                                                                        jmp   n405_assign_α
n403_call_β:
                                                                                        jmp   n404_lit_integer_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n406_var_α
.Lx466_0:
                        .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n405_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n404_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n409_call_α
#=======================================================================================================================
# pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn472:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n408_var_α
                                                                                        jmp   n412_binop_α
n409_call_β:
                                                                                        jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n413_binop_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "( "
#=======================================================================================================================
#                c              =  tail(node)
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n414_call_α
#-----------------------------------------------------------------------------------------------------------------------
n412_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 100
                                                                                        je    .Lx475_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 100
                                                                                        je    .Lx475_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx475_2
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx475_2
.Lx475_1:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, qword ptr [rbp + 280]
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n416_op74_α
.Lx475_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 0
                        lea              r9, [rbp + 240]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n416_op74_α
.Lx475_2:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n408_var_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n416_op74_α
n412_binop_β:
                                                                                        jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n413_binop_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n417_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n414_call_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn478:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n415_var_α
                                                                                        jmp   n418_assign_α
n414_call_β:
                                                                                        jmp   n415_var_α
#=======================================================================================================================
# pp_wch         DIFFER(c)                                    :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n419_call_α
#-----------------------------------------------------------------------------------------------------------------------
n416_op74_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 7
                                                                                        je    .Lx481_1
                        cmp              eax, 6
                                                                                        jne   .Lx481_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx481_0
.Lx481_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n420_op74_α
.Lx481_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n420_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n421_binop_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n418_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn485:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn485]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   n422_var_α
n419_call_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
n420_op74_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 7
                                                                                        je    .Lx487_1
                        cmp              eax, 6
                                                                                        jne   .Lx487_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx487_0
.Lx487_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n423_op76_α
.Lx487_0:
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n423_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n421_binop_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n424_var_α
#=======================================================================================================================
#                nxt            =  tail(c)
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n425_call_α
#-----------------------------------------------------------------------------------------------------------------------
n423_op76_α:
                        lea              rdi, [rbp + 224]
                        lea              rsi, [rbp + 208]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n408_var_α
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                                                                                        jmp   n427_var_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n428_call_α
#-----------------------------------------------------------------------------------------------------------------------
n425_call_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn494:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn494]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n426_var_α
                                                                                        jmp   n429_assign_α
n425_call_β:
                                                                                        jmp   n426_var_α
#=======================================================================================================================
#                DIFFER(nxt)                                  :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n430_call_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n432_var_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn498:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn498]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n411_var_α
                                                                                        jmp   n433_binop_α
n428_call_β:
                                                                                        jmp   n411_var_α
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n426_var_α
#-----------------------------------------------------------------------------------------------------------------------
n430_call_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn501:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn501]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n431_var_α
                                                                                        jmp   n434_var_α
n430_call_β:
                                                                                        jmp   n431_var_α
#=======================================================================================================================
# pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n435_call_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n436_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n433_binop_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n437_lit_string_α
#=======================================================================================================================
#                pp_node(head(c), indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n438_call_α
#-----------------------------------------------------------------------------------------------------------------------
n435_call_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn507:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn507]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   n440_var_α
n435_call_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
n436_binop_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n441_var_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n442_binop_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn511:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n439_var_α
                                                                                        jmp   n443_var_α
n438_call_β:
                                                                                        jmp   n439_var_α
#=======================================================================================================================
#                c              =  nxt                        :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n444_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n445_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n446_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n442_binop_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n447_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n448_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n444_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n449_binop_α
.Lx518_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n450_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              rdi, qword ptr [rip + .Lx520_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n411_var_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n451_binop_α
.Lx521_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n449_binop_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 100
                                                                                        je    .Lx522_0
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 6
                                                                                        jne   .Lx522_2
.Lx522_1:
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 1328], 6
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n452_lit_string_α
.Lx522_0:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              r8d, 0
                        lea              r9, [rbp + 1328]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n452_lit_string_α
.Lx522_2:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n452_lit_string_α
n449_binop_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
n450_assign_α:
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              rdi, qword ptr [rip + .Lx523_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   proc_pp_node_γ
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 100
                                                                                        je    .Lx524_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                                                                                        jne   .Lx524_2
.Lx524_1:
                        mov              rax, qword ptr [rbp + 1112]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 1088], 6
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n453_lit_string_α
.Lx524_0:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              r8d, 0
                        lea              r9, [rbp + 1088]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n453_lit_string_α
.Lx524_2:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n439_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n453_lit_string_α
n451_binop_β:
                                                                                        jmp   n439_var_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n454_var_α
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n455_call_α
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n456_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_α:
                        sub              rsp, 128
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052736]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052744]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052760]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052672]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052680]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052768]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052776]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052784]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052792]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [1879052720]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [1879052728]
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rip + .Lx529_0]
                        mov              esi, 7
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx529_5
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx529_6]
                        lea              rdx, [rip + .Lx529_7]
                                                                                        jmp   rax
.Lx529_6:
                        mov              rdi, qword ptr [1879052720]
                        mov              rsi, qword ptr [1879052728]
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 128
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx529_2
.Lx529_7:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 128
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx529_2
.Lx529_5:
                        add              rsp, 128
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx529_20
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx529_21
.Lx529_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx529_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx529_22
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx529_23
.Lx529_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        call             rt_arg_stage@PLT
.Lx529_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx529_24
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx529_25
.Lx529_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        call             rt_arg_stage@PLT
.Lx529_25:
                        mov              rdi, qword ptr [rip + .Lx529_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx529_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx529_3]
                        lea              rdx, [rip + .Lx529_4]
                                                                                        jmp   rax
.Lx529_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx529_2
.Lx529_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx529_2
.Lx529_1:
                        call             rt_faildescr@PLT
.Lx529_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n439_var_α
                                                                                        jmp   n439_var_α
n455_call_β:
                                                                                        jmp   n439_var_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n456_binop_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n457_call_α
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:
                        sub              rsp, 128
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052736]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052744]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052760]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052672]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052680]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052768]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052776]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052784]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052792]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [1879052720]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [1879052728]
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rip + .Lx532_0]
                        mov              esi, 7
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx532_5
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx532_6]
                        lea              rdx, [rip + .Lx532_7]
                                                                                        jmp   rax
.Lx532_6:
                        mov              rdi, qword ptr [1879052720]
                        mov              rsi, qword ptr [1879052728]
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 128
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_7:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 128
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_5:
                        add              rsp, 128
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx532_21
.Lx532_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx532_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_22
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx532_23
.Lx532_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        call             rt_arg_stage@PLT
.Lx532_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_24
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx532_25
.Lx532_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        call             rt_arg_stage@PLT
.Lx532_25:
                        mov              rdi, qword ptr [rip + .Lx532_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx532_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx532_3]
                        lea              rdx, [rip + .Lx532_4]
                                                                                        jmp   rax
.Lx532_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_1:
                        call             rt_faildescr@PLT
.Lx532_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   proc_pp_node_γ
n457_call_β:
                                                                                        jmp   proc_pp_node_γ
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
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
                        mov              rax, [rbp + 1432]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_ω:
                        mov              rax, [rbp + 1440]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
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
n533_var_α:
                        mov              rax, qword ptr [1879052960]
                        mov              rdx, qword ptr [1879052968]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n534_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n536_lit_string_α
.Lx541_0:
                        .quad            0
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n537_call_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n538_call_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn545:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn545]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_bank_γ
                                                                                        jmp   n539_assign_α
n537_call_β:
                                                                                        jmp   proc_pp_bank_γ
#-----------------------------------------------------------------------------------------------------------------------
n538_call_α:
                        sub              rsp, 128
                        mov              rax, qword ptr [1879052656]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052664]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052736]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052744]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052760]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052672]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052680]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [1879052768]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [1879052776]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [1879052688]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [1879052696]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [1879052784]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [1879052792]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [1879052720]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [1879052728]
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rip + .Lx547_0]
                        mov              esi, 7
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx547_5
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx547_6]
                        lea              rdx, [rip + .Lx547_7]
                                                                                        jmp   rax
.Lx547_6:
                        mov              rdi, qword ptr [1879052720]
                        mov              rsi, qword ptr [1879052728]
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 128
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx547_2
.Lx547_7:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [1879052720], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [1879052728], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [1879052784], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [1879052792], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [1879052688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [1879052696], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [1879052768], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [1879052776], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052672], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052680], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052760], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052664], rax
                        add              rsp, 128
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx547_2
.Lx547_5:
                        add              rsp, 128
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx547_20
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx547_21
.Lx547_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_arg_stage@PLT
.Lx547_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx547_22
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx547_23
.Lx547_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        call             rt_arg_stage@PLT
.Lx547_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx547_24
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx547_25
.Lx547_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_arg_stage@PLT
.Lx547_25:
                        mov              rdi, qword ptr [rip + .Lx547_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx547_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx547_3]
                        lea              rdx, [rip + .Lx547_4]
                                                                                        jmp   rax
.Lx547_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx547_2
.Lx547_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx547_2
.Lx547_1:
                        call             rt_faildescr@PLT
.Lx547_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n535_lit_string_α
                                                                                        jmp   n535_lit_string_α
n538_call_β:
                                                                                        jmp   n535_lit_string_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n539_assign_α:
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
                        lea              rax, [rip + n551_match_assign_cond_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n549_match_assign_save_α:
                        lea              rdi, [rbp + 48]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n550_match_defer_α
n549_match_assign_save_β:
                        lea              rdi, [rbp + 48]
                        call             rt_cap_pop@PLT
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n550_match_defer_α:
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx554_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx554_4]
                        lea              rdx, [rip + .Lx554_5]
                                                                                        jmp   rax
.Lx554_4:
                                                                                        jmp   n551_match_assign_cond_α
.Lx554_5:
                                                                                        jmp   n549_match_assign_save_β
.Lx554_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx554_2:
                        test             rax, rax
                                                                                        je    .Lx554_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx554_7]
                        lea              rdx, [rip + .Lx554_8]
                                                                                        jmp   rax
.Lx554_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx554_2
.Lx554_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx554_2
.Lx554_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n549_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx554_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n551_match_assign_cond_α
.Lx554_6:
                        add              rsp, 16
                                                                                        jmp   n549_match_assign_save_β
n550_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n551_match_assign_cond_α:
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
n551_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n550_match_defer_β
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
                        lea              rax, [rip + n557_match_span_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n557_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx559_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx559_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx559_10
                        cmp              esi, 10
                                                                                        je    .Lx559_10
                                                                                        jmp   .Lx559_1
.Lx559_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx559_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx559_11
                        cmp              esi, 10
                                                                                        je    .Lx559_11
                                                                                        jmp   .Lx559_1
.Lx559_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx559_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx559_12
                        cmp              esi, 10
                                                                                        je    .Lx559_12
                                                                                        jmp   .Lx559_1
.Lx559_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx559_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx559_13
                        cmp              esi, 10
                                                                                        je    .Lx559_13
                                                                                        jmp   .Lx559_1
.Lx559_13:
                        add              ecx, 1
                                                                                        jmp   .Lx559_0
.Lx559_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx559_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx559_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_scanhit
n557_match_span_β:
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
                        lea              rax, [rip + n560_match_sequence_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n560_match_sequence_α:
                                                                                        jmp   n561_match_notany_α
n560_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n560_match_sequence_β:
                                                                                        jmp   n562_match_break_β
n560_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n561_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   proc_PAT$2_ω
                        add              r14d, 1
                                                                                        jmp   n562_match_break_α
n561_match_notany_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n562_match_break_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx567_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx567_237
                        add              rsp, 16
                                                                                        jmp   n561_match_notany_β
.Lx567_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx567_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx567_238
                        add              rsp, 16
                                                                                        jmp   n561_match_notany_β
.Lx567_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx567_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx567_239
                        add              rsp, 16
                                                                                        jmp   n561_match_notany_β
.Lx567_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx567_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx567_240
                        add              rsp, 16
                                                                                        jmp   n561_match_notany_β
.Lx567_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx567_1
                        add              ecx, 1
                                                                                        jmp   .Lx567_0
.Lx567_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$2_γ
n562_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n561_match_notany_β
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
n568_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   n569_match_lit_α
n568_match_sequence_as:
                        mov              eax, dword ptr [rbp + 20]
                        add              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 1
                                                                                        je    n570_match_assign_save_α
                        cmp              eax, 2
                                                                                        je    n572_lit_string_α
                        cmp              eax, 3
                                                                                        je    n574_match_arbno_α
                        cmp              eax, 4
                                                                                        je    n575_call_α
                        cmp              eax, 5
                                                                                        je    n577_match_lit_α
                                                                                        jmp   proc_PAT$3_γ
n568_match_sequence_β:
                        mov              dword ptr [rbp + 20], 6
n568_match_sequence_af:
                        mov              eax, dword ptr [rbp + 20]
                        sub              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 0
                                                                                        je    n569_match_lit_β
                        cmp              eax, 1
                                                                                        je    n571_match_assign_cond_β
                        cmp              eax, 2
                                                                                        je    n573_match_value_β
                        cmp              eax, 3
                                                                                        je    n574_match_arbno_β
                        cmp              eax, 4
                                                                                        je    n576_match_value_β
                        cmp              eax, 5
                                                                                        je    n577_match_lit_β
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n569_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n568_match_sequence_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n568_match_sequence_af
                        add              r14d, 1
                                                                                        jmp   n568_match_sequence_as
n569_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n568_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n570_match_assign_save_α:
                        lea              rdi, [rbp + 80]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n578_match_defer_α
n570_match_assign_save_β:
                        lea              rdi, [rbp + 80]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n568_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n571_match_assign_cond_α:
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
                                                                                        jmp   n568_match_sequence_as
n571_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n578_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n579_call_α
n572_lit_string_β:
                                                                                        jmp   n568_match_sequence_af
.Lx599_0:
                        .quad            .Lx599_0_s
.Lx599_0_s:
                        .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n573_match_value_α:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx600_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx600_4]
                        lea              rdx, [rip + .Lx600_5]
                                                                                        jmp   rax
.Lx600_4:
                                                                                        jmp   n568_match_sequence_as
.Lx600_5:
                                                                                        jmp   n568_match_sequence_af
.Lx600_0:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n568_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx600_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n568_match_sequence_as
.Lx600_6:
                        add              rsp, 16
                                                                                        jmp   n568_match_sequence_af
n573_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n574_match_arbno_α:
                        mov              dword ptr [rbp + 224], r14d
                        mov              dword ptr [rbp + 228], r14d
                        mov              dword ptr [rbp + 232], 0
                        mov              qword ptr [rbp + 248], rsp
                        mov              qword ptr [rbp + 240], 0
                                                                                        jmp   n568_match_sequence_as
n574_match_arbno_β:
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
                                                                                        jmp   n580_match_defer_α
n574_match_arbno_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              r14d, eax
                                                                                        je    n574_match_arbno_af
                        mov              rbp, qword ptr [rbp + 232]
                        mov              eax, dword ptr [rbp + 232]
                        add              eax, 1
                        mov              dword ptr [rbp + 232], eax
                        mov              dword ptr [rbp + 228], r14d
                                                                                        jmp   n568_match_sequence_as
n574_match_arbno_af:
                        mov              rax, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              rsp, [rbp + 536]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 232]
                        test             ecx, ecx
                                                                                        jz    .Lx602_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 232], ecx
                        mov              qword ptr [rbp + 240], rax
                        lea              rbp, [rax + -232]
                                                                                        jmp   n574_match_arbno_af
.Lx602_2:
                        mov              r14d, dword ptr [rbp + 224]
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   n568_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052600]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx604_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx604_6]
                        lea              rdx, [rip + .Lx604_7]
                                                                                        jmp   rax
.Lx604_6:
                        mov              rdi, qword ptr [1879052592]
                        mov              rsi, qword ptr [1879052600]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx604_2
.Lx604_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx604_2
.Lx604_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx604_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx604_3]
                        lea              rdx, [rip + .Lx604_4]
                                                                                        jmp   rax
.Lx604_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx604_2
.Lx604_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx604_2
.Lx604_1:
                        call             rt_faildescr@PLT
.Lx604_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n568_match_sequence_af
                                                                                        jmp   n576_match_value_α
n575_call_β:
                                                                                        jmp   n568_match_sequence_af
.Lx604_0:
                        .quad            .Lx604_0_s
.Lx604_0_s:
                        .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n576_match_value_α:
                        lea              rdi, [rbp + 544]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx605_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx605_4]
                        lea              rdx, [rip + .Lx605_5]
                                                                                        jmp   rax
.Lx605_4:
                                                                                        jmp   n568_match_sequence_as
.Lx605_5:
                                                                                        jmp   n568_match_sequence_af
.Lx605_0:
                        lea              rdi, [rbp + 544]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n568_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx605_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n568_match_sequence_as
.Lx605_6:
                        add              rsp, 16
                                                                                        jmp   n568_match_sequence_af
n576_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n577_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n568_match_sequence_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n568_match_sequence_af
                        add              r14d, 1
                                                                                        jmp   n568_match_sequence_as
n577_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n568_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n578_match_defer_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        cmp              eax, 3
                                                                                        jne   .Lx608_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx608_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx608_10
.Lx608_9:
                        xor              eax, eax
.Lx608_10:
                        test             rax, rax
                                                                                        jz    .Lx608_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx608_4]
                        lea              rdx, [rip + .Lx608_5]
                                                                                        jmp   rax
.Lx608_4:
                                                                                        jmp   n571_match_assign_cond_α
.Lx608_5:
                                                                                        jmp   n570_match_assign_save_β
.Lx608_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx608_2:
                        test             rax, rax
                                                                                        je    .Lx608_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx608_7]
                        lea              rdx, [rip + .Lx608_8]
                                                                                        jmp   rax
.Lx608_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx608_2
.Lx608_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx608_2
.Lx608_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n570_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx608_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n571_match_assign_cond_α
.Lx608_6:
                        add              rsp, 16
                                                                                        jmp   n570_match_assign_save_β
n578_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n579_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052528]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx610_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx610_5
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx610_6]
                        lea              rdx, [rip + .Lx610_7]
                                                                                        jmp   rax
.Lx610_6:
                        mov              rdi, qword ptr [1879052528]
                        mov              rsi, qword ptr [1879052536]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx610_2
.Lx610_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx610_2
.Lx610_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx610_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx610_21
.Lx610_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx610_21:
                        mov              rdi, qword ptr [rip + .Lx610_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx610_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx610_3]
                        lea              rdx, [rip + .Lx610_4]
                                                                                        jmp   rax
.Lx610_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx610_2
.Lx610_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx610_2
.Lx610_1:
                        call             rt_faildescr@PLT
.Lx610_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n568_match_sequence_af
                                                                                        jmp   n573_match_value_α
n579_call_β:
                                                                                        jmp   n568_match_sequence_af
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n580_match_defer_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        cmp              eax, 3
                                                                                        jne   .Lx611_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx611_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx611_10
.Lx611_9:
                        xor              eax, eax
.Lx611_10:
                        test             rax, rax
                                                                                        jz    .Lx611_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx611_4]
                        lea              rdx, [rip + .Lx611_5]
                                                                                        jmp   rax
.Lx611_4:
                                                                                        jmp   n581_match_fence1_α
.Lx611_5:
                                                                                        jmp   n574_match_arbno_af
.Lx611_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx611_2:
                        test             rax, rax
                                                                                        je    .Lx611_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx611_7]
                        lea              rdx, [rip + .Lx611_8]
                                                                                        jmp   rax
.Lx611_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx611_2
.Lx611_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx611_2
.Lx611_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n574_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx611_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n581_match_fence1_α
.Lx611_6:
                        add              rsp, 16
                                                                                        jmp   n574_match_arbno_af
n580_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n581_match_fence1_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n582_match_alternate_α
n581_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 272], rbp
                                                                                        jmp   n574_match_arbno_as
n581_match_fence1_β:
n581_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n574_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n582_match_alternate_α:
                        mov              dword ptr [rbp + 288], r14d
                        mov              dword ptr [rbp + 292], 0
                                                                                        jmp   n583_match_defer_α
n582_match_alternate_as:
                                                                                        jmp   n581_match_fence1_as
n582_match_alternate_β:
                        mov              eax, dword ptr [rbp + 292]
                        cmp              eax, 0
                                                                                        je    n583_match_defer_β
                                                                                        jmp   n584_match_sequence_β
n582_match_alternate_af:
                        add              dword ptr [rbp + 292], 1
                        mov              r14d, dword ptr [rbp + 288]
                        mov              eax, dword ptr [rbp + 292]
                        cmp              eax, 1
                                                                                        je    n584_match_sequence_α
                                                                                        jmp   n581_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n583_match_defer_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        cmp              eax, 3
                                                                                        jne   .Lx616_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx616_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx616_10
.Lx616_9:
                        xor              eax, eax
.Lx616_10:
                        test             rax, rax
                                                                                        jz    .Lx616_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx616_4]
                        lea              rdx, [rip + .Lx616_5]
                                                                                        jmp   rax
.Lx616_4:
                                                                                        jmp   n582_match_alternate_as
.Lx616_5:
                                                                                        jmp   n582_match_alternate_af
.Lx616_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx616_2:
                        test             rax, rax
                                                                                        je    .Lx616_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx616_7]
                        lea              rdx, [rip + .Lx616_8]
                                                                                        jmp   rax
.Lx616_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx616_2
.Lx616_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx616_2
.Lx616_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n582_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx616_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n582_match_alternate_as
.Lx616_6:
                        add              rsp, 16
                                                                                        jmp   n582_match_alternate_af
n583_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n584_match_sequence_α:
                        mov              dword ptr [rbp + 320], r14d
                        mov              dword ptr [rbp + 324], 0
                                                                                        jmp   n585_match_assign_save_α
n584_match_sequence_as:
                        mov              eax, dword ptr [rbp + 324]
                        add              eax, 1
                        mov              dword ptr [rbp + 324], eax
                        cmp              eax, 1
                                                                                        je    n587_lit_string_α
                                                                                        jmp   n582_match_alternate_as
n584_match_sequence_β:
                        mov              dword ptr [rbp + 324], 2
n584_match_sequence_af:
                        mov              eax, dword ptr [rbp + 324]
                        sub              eax, 1
                        mov              dword ptr [rbp + 324], eax
                        cmp              eax, 0
                                                                                        je    n586_match_assign_cond_β
                        cmp              eax, 1
                                                                                        je    n588_match_value_β
                                                                                        jmp   n582_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n585_match_assign_save_α:
                        lea              rdi, [rbp + 368]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n589_match_defer_α
n585_match_assign_save_β:
                        lea              rdi, [rbp + 368]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n584_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n586_match_assign_cond_α:
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
                                                                                        jmp   n584_match_sequence_as
n586_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n589_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n590_call_α
n587_lit_string_β:
                                                                                        jmp   n584_match_sequence_af
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n588_match_value_α:
                        lea              rdi, [rbp + 432]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx624_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx624_4]
                        lea              rdx, [rip + .Lx624_5]
                                                                                        jmp   rax
.Lx624_4:
                                                                                        jmp   n584_match_sequence_as
.Lx624_5:
                                                                                        jmp   n584_match_sequence_af
.Lx624_0:
                        lea              rdi, [rbp + 432]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n584_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx624_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n584_match_sequence_as
.Lx624_6:
                        add              rsp, 16
                                                                                        jmp   n584_match_sequence_af
n588_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n589_match_defer_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        cmp              eax, 3
                                                                                        jne   .Lx625_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx625_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx625_10
.Lx625_9:
                        xor              eax, eax
.Lx625_10:
                        test             rax, rax
                                                                                        jz    .Lx625_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx625_4]
                        lea              rdx, [rip + .Lx625_5]
                                                                                        jmp   rax
.Lx625_4:
                                                                                        jmp   n586_match_assign_cond_α
.Lx625_5:
                                                                                        jmp   n585_match_assign_save_β
.Lx625_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx625_2:
                        test             rax, rax
                                                                                        je    .Lx625_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx625_7]
                        lea              rdx, [rip + .Lx625_8]
                                                                                        jmp   rax
.Lx625_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx625_2
.Lx625_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx625_2
.Lx625_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n585_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx625_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n586_match_assign_cond_α
.Lx625_6:
                        add              rsp, 16
                                                                                        jmp   n585_match_assign_save_β
n589_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n590_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052560]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052568]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx627_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx627_5
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx627_6]
                        lea              rdx, [rip + .Lx627_7]
                                                                                        jmp   rax
.Lx627_6:
                        mov              rdi, qword ptr [1879052560]
                        mov              rsi, qword ptr [1879052568]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052560], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx627_2
.Lx627_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052560], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052568], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx627_2
.Lx627_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_20
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx627_21
.Lx627_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx627_21:
                        mov              rdi, qword ptr [rip + .Lx627_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx627_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx627_3]
                        lea              rdx, [rip + .Lx627_4]
                                                                                        jmp   rax
.Lx627_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx627_2
.Lx627_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx627_2
.Lx627_1:
                        call             rt_faildescr@PLT
.Lx627_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n584_match_sequence_af
                                                                                        jmp   n588_match_value_α
n590_call_β:
                                                                                        jmp   n584_match_sequence_af
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
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
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rbp + 640], r8
                        mov              dword ptr [rbp + 632], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n628_match_sequence_β]
                        mov              qword ptr [rbp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n628_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   n629_lit_integer_α
n628_match_sequence_as:
                        mov              eax, dword ptr [rbp + 20]
                        add              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 1
                                                                                        je    n631_lit_string_α
                        cmp              eax, 2
                                                                                        je    n633_lit_string_α
                        cmp              eax, 3
                                                                                        je    n635_match_arbno_α
                        cmp              eax, 4
                                                                                        je    n636_lit_string_α
                        cmp              eax, 5
                                                                                        je    n638_lit_integer_α
                                                                                        jmp   proc_PAT$4_γ
n628_match_sequence_β:
                        mov              dword ptr [rbp + 20], 6
n628_match_sequence_af:
                        mov              eax, dword ptr [rbp + 20]
                        sub              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 0
                                                                                        je    n630_match_pos_β
                        cmp              eax, 1
                                                                                        je    n632_match_value_β
                        cmp              eax, 2
                                                                                        je    n634_match_value_β
                        cmp              eax, 3
                                                                                        je    n635_match_arbno_β
                        cmp              eax, 4
                                                                                        je    n637_match_value_β
                        cmp              eax, 5
                                                                                        je    n639_match_rpos_β
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n630_match_pos_α
n629_lit_integer_β:
                                                                                        jmp   n628_match_sequence_af
.Lx654_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n630_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n628_match_sequence_af
                                                                                        jmp   n628_match_sequence_as
n630_match_pos_β:
                                                                                        jmp   n628_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n640_call_α
n631_lit_string_β:
                                                                                        jmp   n628_match_sequence_af
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n632_match_value_α:
                        lea              rdi, [rbp + 80]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx657_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx657_4]
                        lea              rdx, [rip + .Lx657_5]
                                                                                        jmp   rax
.Lx657_4:
                                                                                        jmp   n628_match_sequence_as
.Lx657_5:
                                                                                        jmp   n628_match_sequence_af
.Lx657_0:
                        lea              rdi, [rbp + 80]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n628_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx657_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n628_match_sequence_as
.Lx657_6:
                        add              rsp, 16
                                                                                        jmp   n628_match_sequence_af
n632_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n641_call_α
n633_lit_string_β:
                                                                                        jmp   n628_match_sequence_af
.Lx658_0:
                        .quad            .Lx658_0_s
.Lx658_0_s:
                        .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n634_match_value_α:
                        lea              rdi, [rbp + 160]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx659_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx659_4]
                        lea              rdx, [rip + .Lx659_5]
                                                                                        jmp   rax
.Lx659_4:
                                                                                        jmp   n628_match_sequence_as
.Lx659_5:
                                                                                        jmp   n628_match_sequence_af
.Lx659_0:
                        lea              rdi, [rbp + 160]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n628_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx659_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n628_match_sequence_as
.Lx659_6:
                        add              rsp, 16
                                                                                        jmp   n628_match_sequence_af
n634_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n635_match_arbno_α:
                        mov              dword ptr [rbp + 240], r14d
                        mov              dword ptr [rbp + 244], r14d
                        mov              dword ptr [rbp + 248], 0
                        mov              qword ptr [rbp + 264], rsp
                        mov              qword ptr [rbp + 256], 0
                                                                                        jmp   n628_match_sequence_as
n635_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 244]
                        mov              rax, qword ptr [rbp + 256]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 256], rsp
                        mov              rbp, rsp
                        add              rbp, -248
                                                                                        jmp   n642_match_sequence_α
n635_match_arbno_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              r14d, eax
                                                                                        je    n635_match_arbno_af
                        mov              rbp, qword ptr [rbp + 248]
                        mov              eax, dword ptr [rbp + 248]
                        add              eax, 1
                        mov              dword ptr [rbp + 248], eax
                        mov              dword ptr [rbp + 244], r14d
                                                                                        jmp   n628_match_sequence_as
n635_match_arbno_af:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 520]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 248]
                        test             ecx, ecx
                                                                                        jz    .Lx661_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 248], ecx
                        mov              qword ptr [rbp + 256], rax
                        lea              rbp, [rax + -248]
                                                                                        jmp   n635_match_arbno_af
.Lx661_2:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   n628_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n644_call_α
n636_lit_string_β:
                                                                                        jmp   n628_match_sequence_af
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n637_match_value_α:
                        lea              rdi, [rbp + 544]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx663_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx663_4]
                        lea              rdx, [rip + .Lx663_5]
                                                                                        jmp   rax
.Lx663_4:
                                                                                        jmp   n628_match_sequence_as
.Lx663_5:
                                                                                        jmp   n628_match_sequence_af
.Lx663_0:
                        lea              rdi, [rbp + 544]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n628_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx663_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n628_match_sequence_as
.Lx663_6:
                        add              rsp, 16
                                                                                        jmp   n628_match_sequence_af
n637_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n639_match_rpos_α
n638_lit_integer_β:
                                                                                        jmp   n628_match_sequence_af
.Lx664_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n639_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n628_match_sequence_af
                                                                                        jmp   n628_match_sequence_as
n639_match_rpos_β:
                                                                                        jmp   n628_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n640_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052480]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052488]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx667_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx667_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx667_6]
                        lea              rdx, [rip + .Lx667_7]
                                                                                        jmp   rax
.Lx667_6:
                        mov              rdi, qword ptr [1879052480]
                        mov              rsi, qword ptr [1879052488]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx667_2
.Lx667_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx667_2
.Lx667_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx667_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx667_21
.Lx667_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx667_21:
                        mov              rdi, qword ptr [rip + .Lx667_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx667_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx667_3]
                        lea              rdx, [rip + .Lx667_4]
                                                                                        jmp   rax
.Lx667_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx667_2
.Lx667_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx667_2
.Lx667_1:
                        call             rt_faildescr@PLT
.Lx667_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n628_match_sequence_af
                                                                                        jmp   n632_match_value_α
n640_call_β:
                                                                                        jmp   n628_match_sequence_af
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n641_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052528]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx669_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx669_5
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx669_6]
                        lea              rdx, [rip + .Lx669_7]
                                                                                        jmp   rax
.Lx669_6:
                        mov              rdi, qword ptr [1879052528]
                        mov              rsi, qword ptr [1879052536]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx669_2
.Lx669_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx669_2
.Lx669_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx669_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx669_21
.Lx669_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx669_21:
                        mov              rdi, qword ptr [rip + .Lx669_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx669_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx669_3]
                        lea              rdx, [rip + .Lx669_4]
                                                                                        jmp   rax
.Lx669_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx669_2
.Lx669_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx669_2
.Lx669_1:
                        call             rt_faildescr@PLT
.Lx669_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n628_match_sequence_af
                                                                                        jmp   n634_match_value_α
n641_call_β:
                                                                                        jmp   n628_match_sequence_af
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n642_match_sequence_α:
                        mov              dword ptr [rbp + 288], r14d
                        mov              dword ptr [rbp + 292], 0
                                                                                        jmp   n645_lit_string_α
n642_match_sequence_as:
                        mov              eax, dword ptr [rbp + 292]
                        add              eax, 1
                        mov              dword ptr [rbp + 292], eax
                        cmp              eax, 1
                                                                                        je    n647_match_arbno_α
                        cmp              eax, 2
                                                                                        je    n648_match_defer_α
                        cmp              eax, 3
                                                                                        je    n643_call_α
                                                                                        jmp   n635_match_arbno_as
n642_match_sequence_β:
                        mov              dword ptr [rbp + 292], 4
n642_match_sequence_af:
                        mov              eax, dword ptr [rbp + 292]
                        sub              eax, 1
                        mov              dword ptr [rbp + 292], eax
                        cmp              eax, 0
                                                                                        je    n646_match_value_β
                        cmp              eax, 1
                                                                                        je    n647_match_arbno_β
                        cmp              eax, 2
                                                                                        je    n648_match_defer_β
                        cmp              eax, 3
                                                                                        je    n649_match_value_β
                                                                                        jmp   n635_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052600]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx673_0]
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx673_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx673_6]
                        lea              rdx, [rip + .Lx673_7]
                                                                                        jmp   rax
.Lx673_6:
                        mov              rdi, qword ptr [1879052592]
                        mov              rsi, qword ptr [1879052600]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx673_2
.Lx673_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx673_2
.Lx673_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx673_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx673_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx673_3]
                        lea              rdx, [rip + .Lx673_4]
                                                                                        jmp   rax
.Lx673_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx673_2
.Lx673_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx673_2
.Lx673_1:
                        call             rt_faildescr@PLT
.Lx673_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n642_match_sequence_af
                                                                                        jmp   n649_match_value_α
n643_call_β:
                                                                                        jmp   n642_match_sequence_af
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n644_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052624]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052632]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx675_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx675_5
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx675_6]
                        lea              rdx, [rip + .Lx675_7]
                                                                                        jmp   rax
.Lx675_6:
                        mov              rdi, qword ptr [1879052624]
                        mov              rsi, qword ptr [1879052632]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx675_2
.Lx675_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052624], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052632], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx675_2
.Lx675_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx675_20
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx675_21
.Lx675_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx675_21:
                        mov              rdi, qword ptr [rip + .Lx675_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx675_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx675_3]
                        lea              rdx, [rip + .Lx675_4]
                                                                                        jmp   rax
.Lx675_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx675_2
.Lx675_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx675_2
.Lx675_1:
                        call             rt_faildescr@PLT
.Lx675_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n628_match_sequence_af
                                                                                        jmp   n637_match_value_α
n644_call_β:
                                                                                        jmp   n628_match_sequence_af
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n650_call_α
n645_lit_string_β:
                                                                                        jmp   n642_match_sequence_af
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n646_match_value_α:
                        lea              rdi, [rbp + 320]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx677_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx677_4]
                        lea              rdx, [rip + .Lx677_5]
                                                                                        jmp   rax
.Lx677_4:
                                                                                        jmp   n642_match_sequence_as
.Lx677_5:
                                                                                        jmp   n642_match_sequence_af
.Lx677_0:
                        lea              rdi, [rbp + 320]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n642_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx677_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n642_match_sequence_as
.Lx677_6:
                        add              rsp, 16
                                                                                        jmp   n642_match_sequence_af
n646_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n647_match_arbno_α:
                        mov              dword ptr [rbp + 400], r14d
                        mov              dword ptr [rbp + 404], r14d
                        mov              dword ptr [rbp + 408], 0
                        mov              qword ptr [rbp + 424], rsp
                        mov              qword ptr [rbp + 416], 0
                                                                                        jmp   n642_match_sequence_as
n647_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 404]
                        mov              rax, qword ptr [rbp + 416]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 416], rsp
                        mov              rbp, rsp
                        add              rbp, -408
                                                                                        jmp   n651_match_defer_α
n647_match_arbno_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              r14d, eax
                                                                                        je    n651_match_defer_β
                        mov              rbp, qword ptr [rbp + 408]
                        mov              eax, dword ptr [rbp + 408]
                        add              eax, 1
                        mov              dword ptr [rbp + 408], eax
                        mov              dword ptr [rbp + 404], r14d
                                                                                        jmp   n642_match_sequence_as
n647_match_arbno_af:
                        mov              rax, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              rsp, [rbp + 472]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 408]
                        test             ecx, ecx
                                                                                        jz    .Lx679_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 408], ecx
                        mov              qword ptr [rbp + 416], rax
                        lea              rbp, [rax + -408]
                                                                                        jmp   n651_match_defer_β
.Lx679_2:
                        mov              r14d, dword ptr [rbp + 400]
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   n642_match_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n648_match_defer_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        cmp              eax, 3
                                                                                        jne   .Lx680_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx680_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx680_10
.Lx680_9:
                        xor              eax, eax
.Lx680_10:
                        test             rax, rax
                                                                                        jz    .Lx680_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx680_4]
                        lea              rdx, [rip + .Lx680_5]
                                                                                        jmp   rax
.Lx680_4:
                                                                                        jmp   n642_match_sequence_as
.Lx680_5:
                                                                                        jmp   n642_match_sequence_af
.Lx680_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx680_2:
                        test             rax, rax
                                                                                        je    .Lx680_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx680_7]
                        lea              rdx, [rip + .Lx680_8]
                                                                                        jmp   rax
.Lx680_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx680_2
.Lx680_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx680_2
.Lx680_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n642_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx680_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n642_match_sequence_as
.Lx680_6:
                        add              rsp, 16
                                                                                        jmp   n642_match_sequence_af
n648_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n649_match_value_α:
                        lea              rdi, [rbp + 496]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx681_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx681_4]
                        lea              rdx, [rip + .Lx681_5]
                                                                                        jmp   rax
.Lx681_4:
                                                                                        jmp   n642_match_sequence_as
.Lx681_5:
                                                                                        jmp   n642_match_sequence_af
.Lx681_0:
                        lea              rdi, [rbp + 496]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n642_match_sequence_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx681_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n642_match_sequence_as
.Lx681_6:
                        add              rsp, 16
                                                                                        jmp   n642_match_sequence_af
n649_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n650_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052528]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx683_5
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx683_6]
                        lea              rdx, [rip + .Lx683_7]
                                                                                        jmp   rax
.Lx683_6:
                        mov              rdi, qword ptr [1879052528]
                        mov              rsi, qword ptr [1879052536]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx683_2
.Lx683_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052536], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052504], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx683_2
.Lx683_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx683_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx683_21
.Lx683_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx683_21:
                        mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx683_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4]
                                                                                        jmp   rax
.Lx683_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx683_2
.Lx683_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx683_2
.Lx683_1:
                        call             rt_faildescr@PLT
.Lx683_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n642_match_sequence_af
                                                                                        jmp   n646_match_value_α
n650_call_β:
                                                                                        jmp   n642_match_sequence_af
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n651_match_defer_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        cmp              eax, 3
                                                                                        jne   .Lx684_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx684_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx684_10
.Lx684_9:
                        xor              eax, eax
.Lx684_10:
                        test             rax, rax
                                                                                        jz    .Lx684_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx684_4]
                        lea              rdx, [rip + .Lx684_5]
                                                                                        jmp   rax
.Lx684_4:
                                                                                        jmp   n647_match_arbno_as
.Lx684_5:
                                                                                        jmp   n647_match_arbno_af
.Lx684_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx684_2:
                        test             rax, rax
                                                                                        je    .Lx684_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx684_7]
                        lea              rdx, [rip + .Lx684_8]
                                                                                        jmp   rax
.Lx684_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx684_2
.Lx684_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx684_2
.Lx684_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n647_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx684_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n647_match_arbno_as
.Lx684_6:
                        add              rsp, 16
                                                                                        jmp   n647_match_arbno_af
n651_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 640], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 632]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 640], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 632]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 632], eax
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
                                                                                        jmp   qword ptr [rbp + 624]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 648]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
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
.Lstartup_pname0:       .string          "list_reverse"
.Lstartup_pp0_0:        .string          "lst"
.Lstartup_pp0_1:        .string          "acc"
.Lstartup_pp0_2:        .string          "cur"
                        .align           8
.Lstartup_pnames0:
                        .quad            .Lstartup_pp0_0
                        .quad            .Lstartup_pp0_1
                        .quad            .Lstartup_pp0_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_list_reverse_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "stk_push_frame"
.Lstartup_pp1_0:        .string          "v"
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
                        lea              rsi, [rip + proc_stk_push_frame_α]
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
                        .section         .rodata
.Lstartup_pname2:       .string          "stk_push_item"
.Lstartup_pp2_0:        .string          "v"
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
                        lea              rsi, [rip + proc_stk_push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "stk_pop_into_parent"
.Lstartup_pp3_0:        .string          "child"
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
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_stk_pop_into_parent_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "stk_pop_final"
.Lstartup_pp4_0:        .string          "var"
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
                        lea              rsi, [rip + proc_stk_pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "init_list"
.Lstartup_pp5_0:        .string          "v"
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
                        lea              rsi, [rip + proc_init_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Init_list"
.Lstartup_pp6_0:        .string          "vs"
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
                        lea              rsi, [rip + proc_Init_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "push_list"
.Lstartup_pp7_0:        .string          "v"
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
                        lea              rsi, [rip + proc_push_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Push_list"
.Lstartup_pp8_0:        .string          "vs"
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
                        lea              rsi, [rip + proc_Push_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "push_item"
.Lstartup_pp9_0:        .string          "v"
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
                        lea              rsi, [rip + proc_push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "Push_item"
.Lstartup_pp10_0:       .string          "vs"
                        .align           8
.Lstartup_pnames10:
                        .quad            .Lstartup_pp10_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + .Lstartup_pnames10]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_Push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pop_list"
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
                        lea              rsi, [rip + proc_pop_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "Pop_list"
                        .align           8
.Lstartup_pnames12:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + .Lstartup_pnames12]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_Pop_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pop_final"
.Lstartup_pp13_0:       .string          "v"
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
                        lea              rsi, [rip + proc_pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "Pop_final"
.Lstartup_pp14_0:       .string          "vs"
                        .align           8
.Lstartup_pnames14:
                        .quad            .Lstartup_pp14_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + .Lstartup_pnames14]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_Pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "node_repr"
.Lstartup_pp15_0:       .string          "node"
.Lstartup_pp15_1:       .string          "r"
.Lstartup_pp15_2:       .string          "c"
.Lstartup_pp15_3:       .string          "sep"
                        .align           8
.Lstartup_pnames15:
                        .quad            .Lstartup_pp15_0
                        .quad            .Lstartup_pp15_1
                        .quad            .Lstartup_pp15_2
                        .quad            .Lstartup_pp15_3
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + .Lstartup_pnames15]
                        mov              edx, 4
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_node_repr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pp_node"
.Lstartup_pp16_0:       .string          "node"
.Lstartup_pp16_1:       .string          "indent"
.Lstartup_pp16_2:       .string          "suffix"
.Lstartup_pp16_3:       .string          "r"
.Lstartup_pp16_4:       .string          "pad"
.Lstartup_pp16_5:       .string          "c"
.Lstartup_pp16_6:       .string          "nxt"
                        .align           8
.Lstartup_pnames16:
                        .quad            .Lstartup_pp16_0
                        .quad            .Lstartup_pp16_1
                        .quad            .Lstartup_pp16_2
                        .quad            .Lstartup_pp16_3
                        .quad            .Lstartup_pp16_4
                        .quad            .Lstartup_pp16_5
                        .quad            .Lstartup_pp16_6
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + .Lstartup_pnames16]
                        mov              edx, 7
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_pp_node_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 7
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1424
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "pp_bank"
.Lstartup_pp17_0:       .string          "cur"
                        .align           8
.Lstartup_pnames17:
                        .quad            .Lstartup_pp17_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + .Lstartup_pnames17]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_pp_bank_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "list_reverse"
.Lgvan1:                .string          "lst"
.Lgvan2:                .string          "acc"
.Lgvan3:                .string          "cur"
.Lgvan4:                .string          "stk_push_frame"
.Lgvan5:                .string          "v"
.Lgvan6:                .string          "stk_push_item"
.Lgvan7:                .string          "stk_pop_into_parent"
.Lgvan8:                .string          "child"
.Lgvan9:                .string          "stk_pop_final"
.Lgvan10:               .string          "var"
.Lgvan11:               .string          "init_list"
.Lgvan12:               .string          "Init_list"
.Lgvan13:               .string          "vs"
.Lgvan14:               .string          "push_list"
.Lgvan15:               .string          "Push_list"
.Lgvan16:               .string          "push_item"
.Lgvan17:               .string          "Push_item"
.Lgvan18:               .string          "pop_list"
.Lgvan19:               .string          "Pop_list"
.Lgvan20:               .string          "pop_final"
.Lgvan21:               .string          "Pop_final"
.Lgvan22:               .string          "node_repr"
.Lgvan23:               .string          "node"
.Lgvan24:               .string          "r"
.Lgvan25:               .string          "c"
.Lgvan26:               .string          "sep"
.Lgvan27:               .string          "pp_node"
.Lgvan28:               .string          "indent"
.Lgvan29:               .string          "suffix"
.Lgvan30:               .string          "pad"
.Lgvan31:               .string          "nxt"
.Lgvan32:               .string          "pp_bank"
.Lgvan33:               .string          "nl"
.Lgvan34:               .string          "stk"
.Lgvan35:               .string          "dummy"
.Lgvan36:               .string          "delim"
.Lgvan37:               .string          "word"
.Lgvan38:               .string          "group"
.Lgvan39:               .string          "tag"
.Lgvan40:               .string          "wrd"
.Lgvan41:               .string          "treebank"
.Lgvan42:               .string          "bank"
.Lgvan43:               .string          "line"
.Lgvan44:               .string          "src"
.Lgvan45:               .string          "t0"
.Lgvan46:               .string          "t1"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 47
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 47
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
                        sub              rsp, 1080
                        mov              rdi, rsp
                        mov              ecx, 1080
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1072], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#                &ALPHABET      POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n685_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx734_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n686_match_head_α
n685_keyword_snobol4_β:
                                                                                        jmp   n693_lit_string_α
.Lx734_0:
                        .quad            .Lx734_0_s
.Lx734_0_s:
                        .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n686_match_head_α:
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
.Lx736_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n687_match_sequence_α
n686_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx736_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx736_1
                                                                                        jmp   .Lx736_0
.Lx736_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n693_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n687_match_sequence_α:
                                                                                        jmp   n689_lit_integer_α
n687_match_sequence_as:
                                                                                        jmp   n688_match_release_α
n687_match_sequence_β:
                                                                                        jmp   n692_match_assign_cond_β
n687_match_sequence_af:
                                                                                        jmp   n686_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n688_match_release_α:
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
.Lx740_1:
                        test             rax, rax
                                                                                        je    .Lx740_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx740_3]
                        lea              rdx, [rip + .Lx740_4]
                                                                                        jmp   rax
.Lx740_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx740_1
.Lx740_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx740_1
.Lx740_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n693_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx741_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n690_match_pos_α
n689_lit_integer_β:
                                                                                        jmp   n686_match_head_β
.Lx741_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n690_match_pos_α:
                        mov              rax, 10
                        cmp              r14d, eax
                                                                                        jne   n686_match_head_β
                                                                                        jmp   n691_match_assign_save_α
n690_match_pos_β:
                                                                                        jmp   n686_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n691_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n694_match_len_α
n691_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n686_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n692_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n688_match_release_α
n692_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n694_match_len_β
#=======================================================================================================================
#                DATA('list(head,tail)')
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n695_call_α
n693_lit_string_β:
                                                                                        jmp   n696_lit_string_α
.Lx747_0:
                        .quad            .Lx747_0_s
.Lx747_0_s:
                        .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
n694_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx748_240
                        add              rsp, 16
                                                                                        jmp   n686_match_head_β
.Lx748_240:
                        add              r14d, 1
                                                                                        jmp   n692_match_assign_cond_α
n694_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n686_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n695_call_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn750:              .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn750]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n696_lit_string_α
                                                                                        jmp   n696_lit_string_α
n695_call_β:
                                                                                        jmp   n696_lit_string_α
#=======================================================================================================================
#                DEFINE('list_reverse(lst)acc,cur')           :(list_reverse_end)
#                DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
#                DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
#                DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
#                DEFINE('stk_pop_final(var)')                 :(stk_pop_final_end)
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
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n697_call_α
n696_lit_string_β:
                                                                                        jmp   n699_lit_string_α
.Lx751_0:
                        .quad            .Lx751_0_s
.Lx751_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n697_call_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn753:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn753]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n699_lit_string_α
                                                                                        jmp   n698_assign_α
n697_call_β:
                                                                                        jmp   n699_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n698_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [1879052864], rax
                        mov              qword ptr [1879052872], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n699_lit_string_α
n698_assign_β:
                                                                                        jmp   n699_lit_string_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n700_call_α
n699_lit_string_β:
                                                                                        jmp   n702_lit_string_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n700_call_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn757:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn757]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n702_lit_string_α
                                                                                        jmp   n701_assign_α
n700_call_β:
                                                                                        jmp   n702_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n701_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [1879052880], rax
                        mov              qword ptr [1879052888], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n702_lit_string_α
n701_assign_β:
                                                                                        jmp   n702_lit_string_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n703_call_α
n702_lit_string_β:
                                                                                        jmp   n705_lit_string_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n703_call_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn761:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn761]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n705_lit_string_α
                                                                                        jmp   n704_assign_α
n703_call_β:
                                                                                        jmp   n705_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n704_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [1879052896], rax
                        mov              qword ptr [1879052904], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n705_lit_string_α
n704_assign_β:
                                                                                        jmp   n705_lit_string_α
#=======================================================================================================================
#                treebank       =
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n706_call_α
n705_lit_string_β:
                                                                                        jmp   n708_var_α
.Lx763_0:
                        .quad            .Lx763_0_s
.Lx763_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n706_call_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn765:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn765]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n708_var_α
                                                                                        jmp   n707_assign_α
n706_call_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n707_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052944], rax
                        mov              qword ptr [1879052952], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n708_var_α
n707_assign_β:
                                                                                        jmp   n708_var_α
#=======================================================================================================================
#                DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
#                DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
#                DEFINE('pp_bank()cur')                       :(pp_bank_end)
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
n708_var_α:
                        mov              rdi, qword ptr [rip + .Lx767_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    n710_call_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n709_assign_α
n708_var_β:
                                                                                        jmp   n710_call_α
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n709_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052976], rax
                        mov              qword ptr [1879052984], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n711_var_α
n709_assign_β:
                                                                                        jmp   n710_call_α
#=======================================================================================================================
# slurp_done     t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n710_call_α:
                        .section         .rodata
.Lrkfn770:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn770]
                        lea              rsi, [rbp + 736]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n713_var_α
                                                                                        jmp   n712_assign_α
n710_call_β:
                                                                                        jmp   n713_var_α
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:
                        mov              rax, qword ptr [1879052992]
                        mov              rdx, qword ptr [1879053000]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n714_var_α
n711_var_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n712_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [1879053008], rax
                        mov              qword ptr [1879053016], rdx
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n713_var_α
n712_assign_β:
                                                                                        jmp   n713_var_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:
                        mov              rax, qword ptr [1879052992]
                        mov              rdx, qword ptr [1879053000]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n715_match_head_α
n713_var_β:
                                                                                        jmp   n716_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n714_var_α:
                        mov              rax, qword ptr [1879052976]
                        mov              rdx, qword ptr [1879052984]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n717_binop_α
n714_var_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n715_match_head_α:
                        mov              qword ptr [rbp + 808], rbp
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 800], r12
                        mov              qword ptr [rbp + 784], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 776], rax
                        mov              dword ptr [rbp + 768], 0
.Lx776_0:
                        mov              r14d, dword ptr [rbp + 768]
                                                                                        jmp   n718_match_defer_α
n715_match_head_β:
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, r15d
                                                                                        jg    .Lx776_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx776_1
                                                                                        jmp   .Lx776_0
.Lx776_1:
                        mov              rax, qword ptr [rbp + 776]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 784]
                        mov              r12, qword ptr [rbp + 800]
                        mov              rbp, qword ptr [rbp + 808]
                                                                                        jmp   n716_lit_string_α
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n719_assign_α
n716_lit_string_β:
                                                                                        jmp   main_γ
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n717_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n720_var_α
n717_binop_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n718_match_defer_α:
                        mov              rax, qword ptr [1879052944]
                        mov              rdx, qword ptr [1879052952]
                        cmp              eax, 3
                                                                                        jne   .Lx779_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx779_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx779_10
.Lx779_9:
                        xor              eax, eax
.Lx779_10:
                        test             rax, rax
                                                                                        jz    .Lx779_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx779_4]
                        lea              rdx, [rip + .Lx779_5]
                                                                                        jmp   rax
.Lx779_4:
                                                                                        jmp   n721_match_release_α
.Lx779_5:
                                                                                        jmp   n715_match_head_β
.Lx779_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx779_2:
                        test             rax, rax
                                                                                        je    .Lx779_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx779_7]
                        lea              rdx, [rip + .Lx779_8]
                                                                                        jmp   rax
.Lx779_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx779_2
.Lx779_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx779_2
.Lx779_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n715_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx779_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n721_match_release_α
.Lx779_6:
                        add              rsp, 16
                                                                                        jmp   n715_match_head_β
n718_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n719_assign_α:
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              rdi, qword ptr [rip + .Lx780_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   main_γ
n719_assign_β:
                                                                                        jmp   main_γ
.Lx780_0:
                        .quad            .Lx780_0_s
.Lx780_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:
                        mov              rax, qword ptr [1879052816]
                        mov              rdx, qword ptr [1879052824]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n722_binop_α
n720_var_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n721_match_release_α:
                        mov              rax, qword ptr [rbp + 776]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 784]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx783_1:
                        test             rax, rax
                                                                                        je    .Lx783_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx783_3]
                        lea              rdx, [rip + .Lx783_4]
                                                                                        jmp   rax
.Lx783_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx783_1
.Lx783_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx783_1
.Lx783_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 800]
                        mov              rbp, qword ptr [rbp + 808]
                                                                                        jmp   n723_call_α
#-----------------------------------------------------------------------------------------------------------------------
n722_binop_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n724_assign_α
n722_binop_β:
                                                                                        jmp   n708_var_α
#=======================================================================================================================
#                t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n723_call_α:
                        .section         .rodata
.Lrkfn786:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn786]
                        lea              rsi, [rbp + 880]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n726_lit_string_α
                                                                                        jmp   n725_assign_α
n723_call_β:
                                                                                        jmp   n726_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n724_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052992], rax
                        mov              qword ptr [1879053000], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n708_var_α
n724_assign_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n725_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [1879053024], rax
                        mov              qword ptr [1879053032], rdx
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n726_lit_string_α
n725_assign_β:
                                                                                        jmp   n726_lit_string_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n727_var_α
n726_lit_string_β:
                                                                                        jmp   n729_call_α
.Lx789_0:
                        .quad            .Lx789_0_s
.Lx789_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n727_var_α:
                        mov              rax, qword ptr [1879053024]
                        mov              rdx, qword ptr [1879053032]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n728_var_α
n727_var_β:
                                                                                        jmp   n729_call_α
#-----------------------------------------------------------------------------------------------------------------------
n728_var_α:
                        mov              rax, qword ptr [1879053008]
                        mov              rdx, qword ptr [1879053016]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n730_binop_α
n728_var_β:
                                                                                        jmp   n729_call_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n729_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052800]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052808]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx793_0]
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx793_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx793_6]
                        lea              rdx, [rip + .Lx793_7]
                                                                                        jmp   rax
.Lx793_6:
                        mov              rdi, qword ptr [1879052800]
                        mov              rsi, qword ptr [1879052808]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052800], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052808], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx793_2
.Lx793_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052800], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052808], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx793_2
.Lx793_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx793_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx793_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx793_3]
                        lea              rdx, [rip + .Lx793_4]
                                                                                        jmp   rax
.Lx793_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx793_2
.Lx793_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx793_2
.Lx793_1:
                        call             rt_faildescr@PLT
.Lx793_2:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   n731_assign_α
n729_call_β:
                                                                                        jmp   main_γ
.Lx793_0:
                        .quad            .Lx793_0_s
.Lx793_0_s:
                        .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
n730_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 100
                                                                                        je    .Lx794_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 100
                                                                                        je    .Lx794_0
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                                                                                        jne   .Lx794_2
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx794_2
.Lx794_1:
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, qword ptr [rbp + 984]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 944], 6
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n732_binop_α
.Lx794_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              r8d, 1
                        lea              r9, [rbp + 944]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n732_binop_α
.Lx794_2:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n729_call_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n732_binop_α
n730_binop_β:
                                                                                        jmp   n729_call_α
#-----------------------------------------------------------------------------------------------------------------------
n731_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   main_γ
n731_assign_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n732_binop_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n733_assign_α
n732_binop_β:
                                                                                        jmp   n729_call_α
#-----------------------------------------------------------------------------------------------------------------------
n733_assign_α:
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              rdi, qword ptr [rip + .Lx797_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n729_call_α
n733_assign_β:
                                                                                        jmp   n729_call_α
.Lx797_0:
                        .quad            .Lx797_0_s
.Lx797_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1072]
                        add              rsp, 1080
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1072]
                        add              rsp, 1080
                        ret
                        .section         .rodata
.S0:                    .string          "epsilon"
.S1:                    .string          "*pop_list"
.S2:                    .string          "tag"
.S3:                    .string          "word"
.S4:                    .string          "delim"
.S5:                    .string          "group"
.S6:                    .string          "wrd"
.S7:                    .string          "nl"
.S8:                    .string          "treebank"
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
