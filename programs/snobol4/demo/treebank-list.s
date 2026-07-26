                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_list_reverse_α
proc_list_reverse_α:
                        .global          proc_list_reverse_α
                        .global          proc_list_reverse_β
                        .global          proc_list_reverse_γ
                        .global          proc_list_reverse_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_list_reverse_α_body:
#=======================================================================================================================
# list_reverse   acc            =
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n0_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx1_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain0_n1_α
.Lx1_0:
                        .quad            .Lx1_0_s
.Lx1_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n1_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain0_n2_α
#=======================================================================================================================
#                cur            =  lst
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n2_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain0_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n3_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain0_n4_α
#=======================================================================================================================
# lr1            DIFFER(cur)                                  :F(lr_done)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n4_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain0_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n5_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn7:                .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn7]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n6_α
                                                                                        jmp   xchain0_n7_α
xchain0_n5_β:
                                                                                        jmp   xchain0_n6_α
#=======================================================================================================================
# lr_done        list_reverse   =  acc                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n6_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain0_n8_α
#=======================================================================================================================
#                acc            =  list(head(cur), acc)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n7_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain0_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n8_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   proc_list_reverse_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n9_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn12:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn12]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n10_α
                                                                                        jmp   xchain0_n11_α
xchain0_n9_β:
                                                                                        jmp   xchain0_n10_α
#=======================================================================================================================
#                cur            =  tail(cur)                  :(lr1)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n10_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   xchain0_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n11_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain0_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n12_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+496]
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn16:               .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n4_α
                                                                                        jmp   xchain0_n14_α
xchain0_n12_β:
                                                                                        jmp   xchain0_n4_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n13_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+320]
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn18:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn18]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    xchain0_n10_α
                                                                                        jmp   xchain0_n15_α
xchain0_n13_β:
                                                                                        jmp   xchain0_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n14_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain0_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n15_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain0_n10_α
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
                        mov              rax, [rbp + 616]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_frame_α
proc_stk_push_frame_α:
                        .global          proc_stk_push_frame_α
                        .global          proc_stk_push_frame_β
                        .global          proc_stk_push_frame_γ
                        .global          proc_stk_push_frame_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_push_frame_α_body:
#=======================================================================================================================
# stk_push_frame stk            =  list(list(v,), stk)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain21_n0_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain21_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain21_n1_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain21_n3_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          ""
#=======================================================================================================================
#                stk_push_frame =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain21_n2_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   xchain21_n4_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
xchain21_n3_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn26:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    xchain21_n2_α
                                                                                        jmp   xchain21_n5_α
xchain21_n3_β:
                                                                                        jmp   xchain21_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain21_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn28:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_push_frame_γ
                                                                                        jmp   xchain21_n6_α
xchain21_n4_β:
                                                                                        jmp   proc_stk_push_frame_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain21_n5_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain21_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain21_n6_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   proc_stk_push_frame_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain21_n7_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+128]
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+144]
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn32:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain21_n2_α
                                                                                        jmp   xchain21_n8_α
xchain21_n7_β:
                                                                                        jmp   xchain21_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain21_n8_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain21_n2_α
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
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_item_α
proc_stk_push_item_α:
                        .global          proc_stk_push_item_α
                        .global          proc_stk_push_item_β
                        .global          proc_stk_push_item_γ
                        .global          proc_stk_push_item_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_push_item_α_body:
#=======================================================================================================================
# stk_push_item  head(stk)      =  list(v, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain34_n0_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain34_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_FIELD_GET lv
xchain34_n1_α:
                        mov              rdi, qword ptr [rip + .Lx36_0]
                        mov              rsi, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain34_n2_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   xchain34_n3_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "head"
#=======================================================================================================================
#                stk_push_item  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain34_n2_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain34_n4_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain34_n3_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain34_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain34_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn40:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_push_item_γ
                                                                                        jmp   xchain34_n6_α
xchain34_n4_β:
                                                                                        jmp   proc_stk_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain34_n5_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain34_n7_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain34_n6_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   proc_stk_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain34_n7_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn44:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn44]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    xchain34_n2_α
                                                                                        jmp   xchain34_n8_α
xchain34_n7_β:
                                                                                        jmp   xchain34_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain34_n8_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn46:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    xchain34_n2_α
                                                                                        jmp   xchain34_n9_α
xchain34_n8_β:
                                                                                        jmp   xchain34_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain34_n9_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain34_n2_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain34_n2_α
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
                        mov              rax, [rbp + 456]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
                        .global          proc_stk_pop_into_parent_α
                        .global          proc_stk_pop_into_parent_β
                        .global          proc_stk_pop_into_parent_γ
                        .global          proc_stk_pop_into_parent_ω
                        sub              rsp, 720
                        mov              [rsp + 696], rcx
                        mov              [rsp + 704], rdx
                        mov              [rsp + 712], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_pop_into_parent_α_body:
#=======================================================================================================================
#                child          =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain48_n0_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain48_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn51:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    xchain48_n2_α
                                                                                        jmp   xchain48_n3_α
xchain48_n1_β:
                                                                                        jmp   xchain48_n2_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain48_n2_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain48_n4_α
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n3_α:
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
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx54_5
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx54_6]
                        lea              rdx, [rip + .Lx54_7]
                                                                                        jmp   rax
.Lx54_6:
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
                                                                                        jmp   .Lx54_2
.Lx54_7:
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
                                                                                        jmp   .Lx54_2
.Lx54_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx54_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx54_21
.Lx54_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx54_21:
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx54_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx54_3]
                        lea              rdx, [rip + .Lx54_4]
                                                                                        jmp   rax
.Lx54_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx54_2
.Lx54_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx54_2
.Lx54_1:
                        call             rt_faildescr@PLT
.Lx54_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain48_n2_α
                                                                                        jmp   xchain48_n6_α
xchain48_n3_β:
                                                                                        jmp   xchain48_n2_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn56:               .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn56]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    xchain48_n5_α
                                                                                        jmp   xchain48_n7_α
xchain48_n4_β:
                                                                                        jmp   xchain48_n5_α
#=======================================================================================================================
#                head(stk)      =  list(child, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain48_n5_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain48_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain48_n6_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain48_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain48_n7_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain48_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_FIELD_GET lv
xchain48_n8_α:
                        mov              rdi, qword ptr [rip + .Lx60_0]
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain48_n9_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   xchain48_n10_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "head"
#=======================================================================================================================
#                stk_pop_into_parent =  .dummy                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain48_n9_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain48_n11_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain48_n10_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain48_n12_α
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n11_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn64:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_pop_into_parent_γ
                                                                                        jmp   xchain48_n13_α
xchain48_n11_β:
                                                                                        jmp   proc_stk_pop_into_parent_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain48_n12_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain48_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain48_n13_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   proc_stk_pop_into_parent_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n14_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn68:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    xchain48_n9_α
                                                                                        jmp   xchain48_n15_α
xchain48_n14_β:
                                                                                        jmp   xchain48_n9_α
#-----------------------------------------------------------------------------------------------------------------------
xchain48_n15_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn70:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rbp + 416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    xchain48_n9_α
                                                                                        jmp   xchain48_n16_α
xchain48_n15_β:
                                                                                        jmp   xchain48_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain48_n16_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain48_n9_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain48_n9_α
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
                        mov              rax, [rbp + 696]
                        lea              rsp, [rbp + 720]
                        mov              rbp, [rbp + 712]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_ω:
                        mov              rax, [rbp + 704]
                        lea              rsp, [rbp + 720]
                        mov              rbp, [rbp + 712]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_final_α
proc_stk_pop_final_α:
                        .global          proc_stk_pop_final_α
                        .global          proc_stk_pop_final_β
                        .global          proc_stk_pop_final_γ
                        .global          proc_stk_pop_final_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_stk_pop_final_α_body:
#=======================================================================================================================
# stk_pop_final  $var           =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain72_n0_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain72_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain72_n1_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn75:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain72_n2_α
                                                                                        jmp   xchain72_n3_α
xchain72_n1_β:
                                                                                        jmp   xchain72_n2_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain72_n2_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain72_n4_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain72_n3_α:
                        mov              rax, qword ptr [1879052832]
                        mov              rdx, qword ptr [1879052840]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain72_n6_α
#-----------------------------------------------------------------------------------------------------------------------
xchain72_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn79:               .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    xchain72_n5_α
                                                                                        jmp   xchain72_n7_α
xchain72_n4_β:
                                                                                        jmp   xchain72_n5_α
#=======================================================================================================================
#                stk_pop_final  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain72_n5_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   xchain72_n8_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
xchain72_n6_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn82:               .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    xchain72_n2_α
                                                                                        jmp   xchain72_n9_α
xchain72_n6_β:
                                                                                        jmp   xchain72_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain72_n7_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain72_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain72_n8_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn85:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_stk_pop_final_γ
                                                                                        jmp   xchain72_n10_α
xchain72_n8_β:
                                                                                        jmp   proc_stk_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain72_n9_α:
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
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx87_5
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx87_6]
                        lea              rdx, [rip + .Lx87_7]
                                                                                        jmp   rax
.Lx87_6:
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
                                                                                        jmp   .Lx87_2
.Lx87_7:
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
                                                                                        jmp   .Lx87_2
.Lx87_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx87_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx87_21
.Lx87_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx87_21:
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx87_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx87_3]
                        lea              rdx, [rip + .Lx87_4]
                                                                                        jmp   rax
.Lx87_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx87_2
.Lx87_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx87_2
.Lx87_1:
                        call             rt_faildescr@PLT
.Lx87_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    xchain72_n2_α
                                                                                        jmp   xchain72_n11_α
xchain72_n9_β:
                                                                                        jmp   xchain72_n2_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain72_n10_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   proc_stk_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain72_n11_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain72_n2_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain72_n2_α
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
                        mov              rax, [rbp + 520]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_init_list_α
proc_init_list_α:
                        .global          proc_init_list_α
                        .global          proc_init_list_β
                        .global          proc_init_list_γ
                        .global          proc_init_list_ω
                        sub              rsp, 400
                        mov              [rsp + 376], rcx
                        mov              [rsp + 384], rdx
                        mov              [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_init_list_α_body:
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain90_n0_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain90_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain90_n1_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn93:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain90_n2_α
                                                                                        jmp   xchain90_n3_α
xchain90_n1_β:
                                                                                        jmp   xchain90_n2_α
#=======================================================================================================================
#                stk            =
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain90_n2_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain90_n4_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain90_n3_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain90_n5_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain90_n4_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [1879052832], rax
                        mov              qword ptr [1879052840], rdx
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   xchain90_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN_VAR
xchain90_n5_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    xchain90_n2_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain90_n2_α
#=======================================================================================================================
#                init_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain90_n6_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   xchain90_n7_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
xchain90_n7_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn100:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    xchain90_n9_α
                                                                                        jmp   xchain90_n8_α
xchain90_n7_β:
                                                                                        jmp   xchain90_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain90_n8_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain90_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain90_n9_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain90_n10_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain90_n10_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn104:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_init_list_ω
                                                                                        jmp   proc_init_list_γ
xchain90_n10_β:
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
                        mov              rax, [rbp + 376]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_ω:
                        mov              rax, [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init_list_α
proc_Init_list_α:
                        .global          proc_Init_list_α
                        .global          proc_Init_list_β
                        .global          proc_Init_list_γ
                        .global          proc_Init_list_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Init_list_α_body:
#=======================================================================================================================
# Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain105_n0_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain105_n1_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain105_n1_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain105_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain105_n2_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain105_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain105_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain105_n4_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
xchain105_n4_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain105_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain105_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn112:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_Init_list_γ
                                                                                        jmp   xchain105_n6_α
xchain105_n5_β:
                                                                                        jmp   proc_Init_list_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain105_n6_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_list_α
proc_push_list_α:
                        .global          proc_push_list_α
                        .global          proc_push_list_β
                        .global          proc_push_list_γ
                        .global          proc_push_list_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_push_list_α_body:
#=======================================================================================================================
# push_list      dummy          =  stk_push_frame(v)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain114_n0_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain114_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain114_n1_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx117_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx117_5
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx117_6]
                        lea              rdx, [rip + .Lx117_7]
                                                                                        jmp   rax
.Lx117_6:
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
                                                                                        jmp   .Lx117_2
.Lx117_7:
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
                                                                                        jmp   .Lx117_2
.Lx117_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx117_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx117_21
.Lx117_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx117_21:
                        mov              rdi, qword ptr [rip + .Lx117_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx117_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx117_3]
                        lea              rdx, [rip + .Lx117_4]
                                                                                        jmp   rax
.Lx117_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx117_2
.Lx117_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx117_2
.Lx117_1:
                        call             rt_faildescr@PLT
.Lx117_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain114_n2_α
                                                                                        jmp   xchain114_n3_α
xchain114_n1_β:
                                                                                        jmp   xchain114_n2_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "stk_push_frame"
#=======================================================================================================================
#                push_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain114_n2_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain114_n4_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain114_n3_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain114_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain114_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn121:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain114_n6_α
                                                                                        jmp   xchain114_n5_α
xchain114_n4_β:
                                                                                        jmp   xchain114_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain114_n5_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain114_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain114_n6_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain114_n7_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain114_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn125:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_push_list_ω
                                                                                        jmp   proc_push_list_γ
xchain114_n7_β:
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
                        mov              rax, [rbp + 296]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_list_α
proc_Push_list_α:
                        .global          proc_Push_list_α
                        .global          proc_Push_list_β
                        .global          proc_Push_list_γ
                        .global          proc_Push_list_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Push_list_α_body:
#=======================================================================================================================
# Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain126_n0_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain126_n1_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain126_n1_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain126_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain126_n2_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain126_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain126_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain126_n4_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
xchain126_n4_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain126_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain126_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn133:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_Push_list_γ
                                                                                        jmp   xchain126_n6_α
xchain126_n5_β:
                                                                                        jmp   proc_Push_list_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain126_n6_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_item_α
proc_push_item_α:
                        .global          proc_push_item_α
                        .global          proc_push_item_β
                        .global          proc_push_item_γ
                        .global          proc_push_item_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_push_item_α_body:
#=======================================================================================================================
# push_item      dummy          =  stk_push_item(v)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain135_n0_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain135_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain135_n1_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx138_5
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx138_6]
                        lea              rdx, [rip + .Lx138_7]
                                                                                        jmp   rax
.Lx138_6:
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
                                                                                        jmp   .Lx138_2
.Lx138_7:
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
                                                                                        jmp   .Lx138_2
.Lx138_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx138_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx138_21
.Lx138_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx138_21:
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx138_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx138_3]
                        lea              rdx, [rip + .Lx138_4]
                                                                                        jmp   rax
.Lx138_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx138_2
.Lx138_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx138_2
.Lx138_1:
                        call             rt_faildescr@PLT
.Lx138_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain135_n2_α
                                                                                        jmp   xchain135_n3_α
xchain135_n1_β:
                                                                                        jmp   xchain135_n2_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "stk_push_item"
#=======================================================================================================================
#                push_item      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain135_n2_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain135_n4_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain135_n3_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain135_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain135_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn142:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain135_n6_α
                                                                                        jmp   xchain135_n5_α
xchain135_n4_β:
                                                                                        jmp   xchain135_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain135_n5_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain135_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain135_n6_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain135_n7_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain135_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn146:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_push_item_ω
                                                                                        jmp   proc_push_item_γ
xchain135_n7_β:
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
                        mov              rax, [rbp + 296]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_item_α
proc_Push_item_α:
                        .global          proc_Push_item_α
                        .global          proc_Push_item_β
                        .global          proc_Push_item_γ
                        .global          proc_Push_item_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Push_item_α_body:
#=======================================================================================================================
# Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain147_n0_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain147_n1_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain147_n1_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain147_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain147_n2_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain147_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain147_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain147_n4_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
xchain147_n4_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain147_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain147_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn154:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_Push_item_γ
                                                                                        jmp   xchain147_n6_α
xchain147_n5_β:
                                                                                        jmp   proc_Push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain147_n6_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_list_α
proc_pop_list_α:
                        .global          proc_pop_list_α
                        .global          proc_pop_list_β
                        .global          proc_pop_list_γ
                        .global          proc_pop_list_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pop_list_α_body:
#=======================================================================================================================
# pop_list       dummy          =  stk_pop_into_parent()
#-----------------------------------------------------------------------------------------------------------------------
xchain156_n0_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx158_0]
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx158_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx158_6]
                        lea              rdx, [rip + .Lx158_7]
                                                                                        jmp   rax
.Lx158_6:
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
                                                                                        jmp   .Lx158_2
.Lx158_7:
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
                                                                                        jmp   .Lx158_2
.Lx158_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx158_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx158_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx158_3]
                        lea              rdx, [rip + .Lx158_4]
                                                                                        jmp   rax
.Lx158_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx158_2
.Lx158_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx158_2
.Lx158_1:
                        call             rt_faildescr@PLT
.Lx158_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain156_n2_α
                                                                                        jmp   xchain156_n1_α
xchain156_n0_β:
                                                                                        jmp   xchain156_n2_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain156_n1_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain156_n2_α
#=======================================================================================================================
#                pop_list       =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain156_n2_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain156_n3_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
xchain156_n3_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn162:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    xchain156_n5_α
                                                                                        jmp   xchain156_n4_α
xchain156_n3_β:
                                                                                        jmp   xchain156_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain156_n4_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain156_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain156_n5_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain156_n6_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain156_n6_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn166:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop_list_ω
                                                                                        jmp   proc_pop_list_γ
xchain156_n6_β:
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
                        mov              rax, [rbp + 248]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_list_α
proc_Pop_list_α:
                        .global          proc_Pop_list_α
                        .global          proc_Pop_list_β
                        .global          proc_Pop_list_γ
                        .global          proc_Pop_list_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Pop_list_α_body:
#=======================================================================================================================
# Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain167_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain167_n1_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
xchain167_n1_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn170:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_Pop_list_γ
                                                                                        jmp   xchain167_n2_α
xchain167_n1_β:
                                                                                        jmp   proc_Pop_list_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain167_n2_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
                        mov              rax, [rbp + 200]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_final_α
proc_pop_final_α:
                        .global          proc_pop_final_α
                        .global          proc_pop_final_β
                        .global          proc_pop_final_γ
                        .global          proc_pop_final_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pop_final_α_body:
#=======================================================================================================================
# pop_final      dummy          =  stk_pop_final(v)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain172_n0_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain172_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain172_n1_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052448]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052432]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx175_5
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [1879052448], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [1879052456], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx175_6]
                        lea              rdx, [rip + .Lx175_7]
                                                                                        jmp   rax
.Lx175_6:
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
                                                                                        jmp   .Lx175_2
.Lx175_7:
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
                                                                                        jmp   .Lx175_2
.Lx175_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx175_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx175_21
.Lx175_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx175_21:
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx175_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx175_3]
                        lea              rdx, [rip + .Lx175_4]
                                                                                        jmp   rax
.Lx175_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx175_2
.Lx175_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx175_2
.Lx175_1:
                        call             rt_faildescr@PLT
.Lx175_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain172_n2_α
                                                                                        jmp   xchain172_n3_α
xchain172_n1_β:
                                                                                        jmp   xchain172_n2_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "stk_pop_final"
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain172_n2_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   xchain172_n4_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain172_n3_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain172_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain172_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn179:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain172_n6_α
                                                                                        jmp   xchain172_n5_α
xchain172_n4_β:
                                                                                        jmp   xchain172_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain172_n5_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain172_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain172_n6_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   xchain172_n7_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain172_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn183:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pop_final_ω
                                                                                        jmp   proc_pop_final_γ
xchain172_n7_β:
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
                        mov              rax, [rbp + 296]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_final_α
proc_Pop_final_α:
                        .global          proc_Pop_final_α
                        .global          proc_Pop_final_β
                        .global          proc_Pop_final_γ
                        .global          proc_Pop_final_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_Pop_final_α_body:
#=======================================================================================================================
# Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain184_n0_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   xchain184_n1_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain184_n1_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   xchain184_n2_α
#-----------------------------------------------------------------------------------------------------------------------
xchain184_n2_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain184_n3_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain184_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain184_n4_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
xchain184_n4_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain184_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain184_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn191:              .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_Pop_final_γ
                                                                                        jmp   xchain184_n6_α
xchain184_n5_β:
                                                                                        jmp   proc_Pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain184_n6_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_node_repr_α
proc_node_repr_α:
                        .global          proc_node_repr_α
                        .global          proc_node_repr_β
                        .global          proc_node_repr_γ
                        .global          proc_node_repr_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_node_repr_α_body:
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n0_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain193_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn196:              .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    xchain193_n2_α
                                                                                        jmp   xchain193_n3_α
xchain193_n1_β:
                                                                                        jmp   xchain193_n2_α
#=======================================================================================================================
# nr_list        r              =  '('
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain193_n2_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain193_n4_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
# IR_KEYWORD_SNOBOL4_read
xchain193_n3_α:
                        mov              rdi, qword ptr [rip + .Lx198_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain193_n5_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n4_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   xchain193_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_KEYWORD_SNOBOL4_read
xchain193_n5_α:
                        mov              rdi, qword ptr [rip + .Lx200_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain193_n7_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "UCASE"
#=======================================================================================================================
#                sep            =
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain193_n6_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   xchain193_n8_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n7_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+176]
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+192]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 200], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+208]
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn203:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 176]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    xchain193_n2_α
                                                                                        jmp   xchain193_n9_α
xchain193_n7_β:
                                                                                        jmp   xchain193_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n8_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   xchain193_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain193_n9_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain193_n11_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "STRING"
#=======================================================================================================================
#                c              =  node
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n10_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   xchain193_n12_α
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n11_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+128]
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn208:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain193_n2_α
                                                                                        jmp   xchain193_n14_α
xchain193_n11_β:
                                                                                        jmp   xchain193_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n12_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain193_n13_α
#=======================================================================================================================
# nr_lp          DIFFER(c)                                    :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n13_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain193_n15_α
#=======================================================================================================================
#                node_repr      =  "'" node "'"               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain193_n14_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   xchain193_n17_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n15_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn213:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    xchain193_n16_α
                                                                                        jmp   xchain193_n18_α
xchain193_n15_β:
                                                                                        jmp   xchain193_n16_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n16_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   xchain193_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n17_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   xchain193_n20_α
#=======================================================================================================================
#                r              =  r sep node_repr(head(c))
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n18_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   xchain193_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain193_n19_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   xchain193_n23_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n20_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain193_n24_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n21_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   xchain193_n25_α
#=======================================================================================================================
#                sep            =  ', '
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain193_n22_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   xchain193_n26_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n23_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   xchain193_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain193_n24_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   xchain193_n28_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n25_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain193_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n26_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   xchain193_n30_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n27_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   proc_node_repr_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n28_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   xchain193_n31_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n29_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   xchain193_n32_α
#=======================================================================================================================
#                c              =  tail(c)                    :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain193_n30_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   xchain193_n33_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n31_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   proc_node_repr_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n32_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn231:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    xchain193_n22_α
                                                                                        jmp   xchain193_n34_α
xchain193_n32_β:
                                                                                        jmp   xchain193_n22_α
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n33_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1136]
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn233:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    xchain193_n13_α
                                                                                        jmp   xchain193_n35_α
xchain193_n33_β:
                                                                                        jmp   xchain193_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n34_α:
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
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              esi, 4
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx235_5
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [1879052664], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_6]
                        lea              rdx, [rip + .Lx235_7]
                                                                                        jmp   rax
.Lx235_6:
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
                                                                                        jmp   .Lx235_2
.Lx235_7:
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
                                                                                        jmp   .Lx235_2
.Lx235_5:
                        add              rsp, 80
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx235_21:
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    xchain193_n22_α
                                                                                        jmp   xchain193_n36_α
xchain193_n34_β:
                                                                                        jmp   xchain193_n22_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n35_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   xchain193_n13_α
#-----------------------------------------------------------------------------------------------------------------------
xchain193_n36_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain193_n37_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain193_n37_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   xchain193_n22_α
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
                        mov              rax, [rbp + 1320]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_node_α
proc_pp_node_α:
                        .global          proc_pp_node_α
                        .global          proc_pp_node_β
                        .global          proc_pp_node_γ
                        .global          proc_pp_node_ω
                        sub              rsp, 2208
                        mov              [rsp + 2184], rcx
                        mov              [rsp + 2192], rdx
                        mov              [rsp + 2200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pp_node_α_body:
#=======================================================================================================================
# pp_node        r              =  node_repr(node)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n0_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain239_n1_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n1_α:
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
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              esi, 4
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx242_5
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [1879052664], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_6]
                        lea              rdx, [rip + .Lx242_7]
                                                                                        jmp   rax
.Lx242_6:
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
                                                                                        jmp   .Lx242_2
.Lx242_7:
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
                                                                                        jmp   .Lx242_2
.Lx242_5:
                        add              rsp, 80
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx242_21
.Lx242_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx242_21:
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx242_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_3]
                        lea              rdx, [rip + .Lx242_4]
                                                                                        jmp   rax
.Lx242_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx242_2
.Lx242_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx242_2
.Lx242_1:
                        call             rt_faildescr@PLT
.Lx242_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n2_α
                                                                                        jmp   xchain239_n3_α
xchain239_n1_β:
                                                                                        jmp   xchain239_n2_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "node_repr"
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain239_n2_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain239_n4_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain239_n3_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain239_n2_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n4_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain239_n5_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n5_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+240]
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn247:              .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n6_α
                                                                                        jmp   xchain239_n7_α
xchain239_n5_β:
                                                                                        jmp   xchain239_n6_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain239_n6_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   xchain239_n8_α
.Lx248_0:
                        .quad            80
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain239_n7_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain239_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n8_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain239_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n9_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain239_n11_α
#=======================================================================================================================
# pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n10_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   xchain239_n12_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n11_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn254:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n10_α
                                                                                        jmp   xchain239_n14_α
xchain239_n11_β:
                                                                                        jmp   xchain239_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain239_n12_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   xchain239_n15_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "( "
#=======================================================================================================================
#                c              =  tail(node)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n13_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   xchain239_n16_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n14_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 100
                                                                                        je    .Lx257_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 100
                                                                                        je    .Lx257_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx257_2
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx257_2
.Lx257_1:
                        mov              rax, qword ptr [rbp + 472]
                        mov              rcx, qword ptr [rbp + 504]
                        add              rax, rcx
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   xchain239_n18_α
.Lx257_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 0
                        lea              r9, [rbp + 432]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain239_n18_α
.Lx257_2:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain239_n10_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain239_n18_α
xchain239_n14_β:
                                                                                        jmp   xchain239_n10_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n15_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   xchain239_n19_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n16_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1168]
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn260:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n17_α
                                                                                        jmp   xchain239_n20_α
xchain239_n16_β:
                                                                                        jmp   xchain239_n17_α
#=======================================================================================================================
# pp_wch         DIFFER(c)                                    :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n17_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   xchain239_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain239_n18_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 7
                                                                                        je    .Lx263_1
                        cmp              eax, 6
                                                                                        jne   .Lx263_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx263_0
.Lx263_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   xchain239_n22_α
.Lx263_0:
                        lea              rdi, [rbp + 576]
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain239_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain239_n19_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   xchain239_n23_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain239_n20_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain239_n17_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n21_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1248]
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn267:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   xchain239_n24_α
xchain239_n21_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain239_n22_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 7
                                                                                        je    .Lx269_1
                        cmp              eax, 6
                                                                                        jne   .Lx269_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx269_0
.Lx269_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain239_n25_α
.Lx269_0:
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 576]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain239_n25_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n23_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   xchain239_n26_α
#=======================================================================================================================
#                nxt            =  tail(c)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n24_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   xchain239_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain239_n25_α:
                        lea              rdi, [rbp + 400]
                        lea              rsi, [rbp + 368]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   xchain239_n10_α
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                                                                                        jmp   xchain239_n29_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n26_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   xchain239_n30_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n27_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1344]
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn276:              .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n28_α
                                                                                        jmp   xchain239_n31_α
xchain239_n27_β:
                                                                                        jmp   xchain239_n28_α
#=======================================================================================================================
#                DIFFER(nxt)                                  :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n28_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   xchain239_n32_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n29_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   xchain239_n34_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n30_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn280:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n13_α
                                                                                        jmp   xchain239_n35_α
xchain239_n30_β:
                                                                                        jmp   xchain239_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain239_n31_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [1879052784], rax
                        mov              qword ptr [1879052792], rdx
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   xchain239_n28_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n32_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn283:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n33_α
                                                                                        jmp   xchain239_n36_α
xchain239_n32_β:
                                                                                        jmp   xchain239_n33_α
#=======================================================================================================================
# pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n33_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   xchain239_n37_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n34_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   xchain239_n38_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n35_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   xchain239_n39_α
#=======================================================================================================================
#                pp_node(head(c), indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n36_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   xchain239_n40_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n37_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1920]
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn289:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   xchain239_n42_α
xchain239_n37_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n38_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   xchain239_n43_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain239_n39_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   xchain239_n44_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n40_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1584]
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn293:              .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n41_α
                                                                                        jmp   xchain239_n45_α
xchain239_n40_β:
                                                                                        jmp   xchain239_n41_α
#=======================================================================================================================
#                c              =  nxt                        :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n41_α:
                        mov              rax, qword ptr [1879052784]
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   xchain239_n46_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n42_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   xchain239_n47_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n43_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain239_n48_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n44_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   xchain239_n49_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n45_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain239_n50_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain239_n46_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   xchain239_n17_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain239_n47_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   xchain239_n51_α
.Lx300_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n48_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   xchain239_n52_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain239_n49_α:
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              rdi, qword ptr [rip + .Lx302_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   xchain239_n13_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain239_n50_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   xchain239_n53_α
.Lx303_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n51_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 100
                                                                                        je    .Lx304_0
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 6
                                                                                        jne   .Lx304_2
.Lx304_1:
                        mov              rax, qword ptr [rbp + 2024]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 1984], 6
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   xchain239_n54_α
.Lx304_0:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              r8d, 0
                        lea              r9, [rbp + 1984]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain239_n54_α
.Lx304_2:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   xchain239_n54_α
xchain239_n51_β:
                                                                                        jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain239_n52_α:
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              rdi, qword ptr [rip + .Lx305_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   proc_pp_node_γ
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n53_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 100
                                                                                        je    .Lx306_0
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 6
                                                                                        jne   .Lx306_2
.Lx306_1:
                        mov              rax, qword ptr [rbp + 1688]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 1648], 6
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   xchain239_n55_α
.Lx306_0:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        mov              r8d, 0
                        lea              r9, [rbp + 1648]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain239_n55_α
.Lx306_2:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain239_n41_α
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   xchain239_n55_α
xchain239_n53_β:
                                                                                        jmp   xchain239_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain239_n54_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   xchain239_n56_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain239_n55_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   xchain239_n57_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain239_n56_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   xchain239_n58_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n57_α:
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
                        mov              rdi, qword ptr [rip + .Lx311_0]
                        mov              esi, 7
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx311_5
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx311_6]
                        lea              rdx, [rip + .Lx311_7]
                                                                                        jmp   rax
.Lx311_6:
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
                                                                                        jmp   .Lx311_2
.Lx311_7:
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
                                                                                        jmp   .Lx311_2
.Lx311_5:
                        add              rsp, 128
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx311_20
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx311_21
.Lx311_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        call             rt_arg_stage@PLT
.Lx311_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx311_22
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx311_23
.Lx311_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        call             rt_arg_stage@PLT
.Lx311_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx311_24
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx311_25
.Lx311_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx311_25:
                        mov              rdi, qword ptr [rip + .Lx311_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx311_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx311_3]
                        lea              rdx, [rip + .Lx311_4]
                                                                                        jmp   rax
.Lx311_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx311_2
.Lx311_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx311_2
.Lx311_1:
                        call             rt_faildescr@PLT
.Lx311_2:
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    xchain239_n41_α
                                                                                        jmp   xchain239_n41_α
xchain239_n57_β:
                                                                                        jmp   xchain239_n41_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n58_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   xchain239_n59_α
#-----------------------------------------------------------------------------------------------------------------------
xchain239_n59_α:
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
                        mov              rdi, qword ptr [rip + .Lx314_0]
                        mov              esi, 7
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx314_5
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx314_6]
                        lea              rdx, [rip + .Lx314_7]
                                                                                        jmp   rax
.Lx314_6:
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
                                                                                        jmp   .Lx314_2
.Lx314_7:
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
                                                                                        jmp   .Lx314_2
.Lx314_5:
                        add              rsp, 128
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_20
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx314_21
.Lx314_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx314_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_22
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx314_23
.Lx314_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_arg_stage@PLT
.Lx314_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_24
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx314_25
.Lx314_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             rt_arg_stage@PLT
.Lx314_25:
                        mov              rdi, qword ptr [rip + .Lx314_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx314_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx314_3]
                        lea              rdx, [rip + .Lx314_4]
                                                                                        jmp   rax
.Lx314_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx314_2
.Lx314_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx314_2
.Lx314_1:
                        call             rt_faildescr@PLT
.Lx314_2:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_node_γ
                                                                                        jmp   proc_pp_node_γ
xchain239_n59_β:
                                                                                        jmp   proc_pp_node_γ
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
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
                        mov              rax, [rbp + 2184]
                        lea              rsp, [rbp + 2208]
                        mov              rbp, [rbp + 2200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_ω:
                        mov              rax, [rbp + 2192]
                        lea              rsp, [rbp + 2208]
                        mov              rbp, [rbp + 2200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_bank_α
proc_pp_bank_α:
                        .global          proc_pp_bank_α
                        .global          proc_pp_bank_β
                        .global          proc_pp_bank_γ
                        .global          proc_pp_bank_ω
                        sub              rsp, 400
                        mov              [rsp + 376], rcx
                        mov              [rsp + 384], rdx
                        mov              [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_pp_bank_α_body:
#=======================================================================================================================
# pp_bank        pp_node(bank, 0, '')
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain315_n0_α:
                        mov              rax, qword ptr [1879052960]
                        mov              rdx, qword ptr [1879052968]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   xchain315_n1_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain315_n1_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain315_n3_α
.Lx317_0:
                        .quad            0
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain315_n2_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   xchain315_n4_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain315_n3_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain315_n5_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
xchain315_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn321:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_pp_bank_γ
                                                                                        jmp   xchain315_n6_α
xchain315_n4_β:
                                                                                        jmp   proc_pp_bank_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain315_n5_α:
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
                        mov              rdi, qword ptr [rip + .Lx323_0]
                        mov              esi, 7
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx323_5
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [1879052656], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [1879052664], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [1879052736], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [1879052744], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [1879052752], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [1879052760], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx323_6]
                        lea              rdx, [rip + .Lx323_7]
                                                                                        jmp   rax
.Lx323_6:
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
                                                                                        jmp   .Lx323_2
.Lx323_7:
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
                                                                                        jmp   .Lx323_2
.Lx323_5:
                        add              rsp, 128
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx323_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx323_21
.Lx323_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx323_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx323_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx323_23
.Lx323_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx323_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx323_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx323_25
.Lx323_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx323_25:
                        mov              rdi, qword ptr [rip + .Lx323_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx323_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx323_3]
                        lea              rdx, [rip + .Lx323_4]
                                                                                        jmp   rax
.Lx323_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx323_2
.Lx323_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx323_2
.Lx323_1:
                        call             rt_faildescr@PLT
.Lx323_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain315_n2_α
                                                                                        jmp   xchain315_n2_α
xchain315_n5_β:
                                                                                        jmp   xchain315_n2_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain315_n6_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052800], rax
                        mov              qword ptr [1879052808], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
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
                        mov              rax, [rbp + 376]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_ω:
                        mov              rax, [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
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
                        lea              rax, [rip + xchain325_n2_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain325_n0_α:
                        lea              rdi, [rbp + 48]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain325_n1_α
xchain325_n0_β:
                        lea              rdi, [rbp + 48]
                        call             rt_cap_pop@PLT
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain325_n1_α:
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx328_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx328_4]
                        lea              rdx, [rip + .Lx328_5]
                                                                                        jmp   rax
.Lx328_4:
                                                                                        jmp   xchain325_n2_α
.Lx328_5:
                                                                                        jmp   xchain325_n0_β
.Lx328_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx328_2:
                        test             rax, rax
                                                                                        je    .Lx328_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx328_7]
                        lea              rdx, [rip + .Lx328_8]
                                                                                        jmp   rax
.Lx328_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx328_2
.Lx328_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx328_2
.Lx328_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain325_n0_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx328_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain325_n2_α
.Lx328_6:
                        add              rsp, 16
                                                                                        jmp   xchain325_n0_β
xchain325_n1_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain325_n2_α:
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
xchain325_n2_β:
                        sub              r12, 24
                                                                                        jmp   xchain325_n1_β
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
                        lea              rax, [rip + xchain331_n0_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SPAN
xchain331_n0_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx333_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx333_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx333_10
                        cmp              esi, 10
                                                                                        je    .Lx333_10
                                                                                        jmp   .Lx333_1
.Lx333_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx333_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx333_11
                        cmp              esi, 10
                                                                                        je    .Lx333_11
                                                                                        jmp   .Lx333_1
.Lx333_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx333_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx333_12
                        cmp              esi, 10
                                                                                        je    .Lx333_12
                                                                                        jmp   .Lx333_1
.Lx333_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx333_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx333_13
                        cmp              esi, 10
                                                                                        je    .Lx333_13
                                                                                        jmp   .Lx333_1
.Lx333_13:
                        add              ecx, 1
                                                                                        jmp   .Lx333_0
.Lx333_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx333_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx333_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_scanhit
xchain331_n0_β:
xchain331_n0_β:
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
                        lea              rax, [rip + xchain334_n0_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain334_n0_α:
                                                                                        jmp   xchain334_n1_α
xchain334_n0_as:
                                                                                        jmp   proc_PAT$2_γ
xchain334_n0_β:
                                                                                        jmp   xchain334_n2_β
xchain334_n0_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_NOTANY
xchain334_n1_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   proc_PAT$2_ω
                        add              r14d, 1
                                                                                        jmp   xchain334_n2_α
xchain334_n1_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_BREAK
xchain334_n2_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx339_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx339_237
                        add              rsp, 16
                                                                                        jmp   xchain334_n1_β
.Lx339_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx339_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx339_238
                        add              rsp, 16
                                                                                        jmp   xchain334_n1_β
.Lx339_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx339_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx339_239
                        add              rsp, 16
                                                                                        jmp   xchain334_n1_β
.Lx339_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx339_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx339_240
                        add              rsp, 16
                                                                                        jmp   xchain334_n1_β
.Lx339_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx339_1
                        add              ecx, 1
                                                                                        jmp   .Lx339_0
.Lx339_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$2_γ
xchain334_n2_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   xchain334_n1_β
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
                        sub              rsp, 656
                        mov              [rsp + 632], rcx
                        mov              [rsp + 640], rdx
                        mov              [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rbp + 624], r8
                        mov              dword ptr [rbp + 616], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 608], rax
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY
xchain340_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   xchain340_n1_α
xchain340_n0_as:
                        mov              eax, dword ptr [rbp + 20]
                        add              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 1
                                                                                        je    xchain340_n2_α
                        cmp              eax, 2
                                                                                        je    xchain340_n4_α
                        cmp              eax, 3
                                                                                        je    xchain340_n6_α
                        cmp              eax, 4
                                                                                        je    xchain340_n7_α
                        cmp              eax, 5
                                                                                        je    xchain340_n9_α
                                                                                        jmp   proc_PAT$3_γ
xchain340_n0_β:
                        mov              dword ptr [rbp + 20], 6
xchain340_n0_af:
                        mov              eax, dword ptr [rbp + 20]
                        sub              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 0
                                                                                        je    xchain340_n1_β
                        cmp              eax, 1
                                                                                        je    xchain340_n3_β
                        cmp              eax, 2
                                                                                        je    xchain340_n5_β
                        cmp              eax, 3
                                                                                        je    xchain340_n6_β
                        cmp              eax, 4
                                                                                        je    xchain340_n8_β
                        cmp              eax, 5
                                                                                        je    xchain340_n9_β
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LIT
xchain340_n1_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain340_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   xchain340_n0_af
                        add              r14d, 1
                                                                                        jmp   xchain340_n0_as
xchain340_n1_β:
                        sub              r14d, 1
                                                                                        jmp   xchain340_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain340_n2_α:
                        lea              rdi, [rbp + 80]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain340_n10_α
xchain340_n2_β:
                        lea              rdi, [rbp + 80]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain340_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain340_n3_α:
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
                                                                                        jmp   xchain340_n0_as
xchain340_n3_β:
                        sub              r12, 24
                                                                                        jmp   xchain340_n10_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain340_n4_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain340_n11_α
xchain340_n4_β:
                                                                                        jmp   xchain340_n0_af
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain340_n5_α:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx350_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx350_4]
                        lea              rdx, [rip + .Lx350_5]
                                                                                        jmp   rax
.Lx350_4:
                                                                                        jmp   xchain340_n0_as
.Lx350_5:
                                                                                        jmp   xchain340_n0_af
.Lx350_0:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain340_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx350_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain340_n0_as
.Lx350_6:
                        add              rsp, 16
                                                                                        jmp   xchain340_n0_af
xchain340_n5_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain340_n6_α:
                        mov              dword ptr [rbp + 240], r14d
                        mov              dword ptr [rbp + 244], r14d
                        mov              dword ptr [rbp + 248], 0
                        mov              qword ptr [rbp + 264], rsp
                        mov              qword ptr [rbp + 256], 0
                                                                                        jmp   xchain340_n0_as
xchain340_n6_β:
                        mov              r14d, dword ptr [rbp + 244]
                        mov              rax, qword ptr [rbp + 256]
                        sub              rsp, 320
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rbp + 256], rsp
                        mov              rbp, rsp
                        add              rbp, -248
                                                                                        jmp   xchain340_n12_α
xchain340_n6_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              r14d, eax
                                                                                        je    xchain340_n6_af
                        mov              rbp, qword ptr [rbp + 248]
                        mov              eax, dword ptr [rbp + 248]
                        add              eax, 1
                        mov              dword ptr [rbp + 248], eax
                        mov              dword ptr [rbp + 244], r14d
                                                                                        jmp   xchain340_n0_as
xchain340_n6_af:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 568]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 248]
                        test             ecx, ecx
                                                                                        jz    .Lx352_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 248], ecx
                        mov              qword ptr [rbp + 256], rax
                        lea              rbp, [rax + -248]
                                                                                        jmp   xchain340_n6_af
.Lx352_2:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   xchain340_n0_af
#-----------------------------------------------------------------------------------------------------------------------
xchain340_n7_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052600]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx354_0]
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx354_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx354_6]
                        lea              rdx, [rip + .Lx354_7]
                                                                                        jmp   rax
.Lx354_6:
                        mov              rdi, qword ptr [1879052592]
                        mov              rsi, qword ptr [1879052600]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx354_2
.Lx354_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx354_2
.Lx354_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx354_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx354_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx354_3]
                        lea              rdx, [rip + .Lx354_4]
                                                                                        jmp   rax
.Lx354_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx354_2
.Lx354_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx354_2
.Lx354_1:
                        call             rt_faildescr@PLT
.Lx354_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    xchain340_n0_af
                                                                                        jmp   xchain340_n8_α
xchain340_n7_β:
                                                                                        jmp   xchain340_n0_af
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain340_n8_α:
                        lea              rdi, [rbp + 576]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx355_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx355_4]
                        lea              rdx, [rip + .Lx355_5]
                                                                                        jmp   rax
.Lx355_4:
                                                                                        jmp   xchain340_n0_as
.Lx355_5:
                                                                                        jmp   xchain340_n0_af
.Lx355_0:
                        lea              rdi, [rbp + 576]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain340_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx355_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain340_n0_as
.Lx355_6:
                        add              rsp, 16
                                                                                        jmp   xchain340_n0_af
xchain340_n8_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LIT
xchain340_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    xchain340_n0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   xchain340_n0_af
                        add              r14d, 1
                                                                                        jmp   xchain340_n0_as
xchain340_n9_β:
                        sub              r14d, 1
                                                                                        jmp   xchain340_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain340_n10_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        cmp              eax, 3
                                                                                        jne   .Lx358_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx358_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx358_10
.Lx358_9:
                        xor              eax, eax
.Lx358_10:
                        test             rax, rax
                                                                                        jz    .Lx358_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx358_4]
                        lea              rdx, [rip + .Lx358_5]
                                                                                        jmp   rax
.Lx358_4:
                                                                                        jmp   xchain340_n3_α
.Lx358_5:
                                                                                        jmp   xchain340_n2_β
.Lx358_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx358_2:
                        test             rax, rax
                                                                                        je    .Lx358_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx358_7]
                        lea              rdx, [rip + .Lx358_8]
                                                                                        jmp   rax
.Lx358_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx358_2
.Lx358_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx358_2
.Lx358_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain340_n2_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx358_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain340_n3_α
.Lx358_6:
                        add              rsp, 16
                                                                                        jmp   xchain340_n2_β
xchain340_n10_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
xchain340_n11_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052528]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx360_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx360_5
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx360_6]
                        lea              rdx, [rip + .Lx360_7]
                                                                                        jmp   rax
.Lx360_6:
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
                                                                                        jmp   .Lx360_2
.Lx360_7:
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
                                                                                        jmp   .Lx360_2
.Lx360_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx360_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx360_21
.Lx360_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx360_21:
                        mov              rdi, qword ptr [rip + .Lx360_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx360_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx360_3]
                        lea              rdx, [rip + .Lx360_4]
                                                                                        jmp   rax
.Lx360_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx360_2
.Lx360_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx360_2
.Lx360_1:
                        call             rt_faildescr@PLT
.Lx360_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    xchain340_n0_af
                                                                                        jmp   xchain340_n5_α
xchain340_n11_β:
                                                                                        jmp   xchain340_n0_af
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain340_n12_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        cmp              eax, 3
                                                                                        jne   .Lx361_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx361_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx361_10
.Lx361_9:
                        xor              eax, eax
.Lx361_10:
                        test             rax, rax
                                                                                        jz    .Lx361_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx361_4]
                        lea              rdx, [rip + .Lx361_5]
                                                                                        jmp   rax
.Lx361_4:
                                                                                        jmp   xchain340_n13_α
.Lx361_5:
                                                                                        jmp   xchain340_n6_af
.Lx361_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx361_2:
                        test             rax, rax
                                                                                        je    .Lx361_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx361_7]
                        lea              rdx, [rip + .Lx361_8]
                                                                                        jmp   rax
.Lx361_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx361_2
.Lx361_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx361_2
.Lx361_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain340_n6_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx361_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain340_n13_α
.Lx361_6:
                        add              rsp, 16
                                                                                        jmp   xchain340_n6_af
xchain340_n12_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_FENCE1 (SYNC-POINT zeta RELEASE: watermark at alpha, OVER-SEAL whack to the rbp activation floor at the seal-success glue — s137 ruling)
xchain340_n13_α:
                        mov              qword ptr [rbp + 288], rsp
                                                                                        jmp   xchain340_n14_α
xchain340_n13_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 288], rbp
                                                                                        jmp   xchain340_n6_as
xchain340_n13_β:
xchain340_n13_af:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   xchain340_n6_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ALT_NARY
xchain340_n14_α:
                        mov              dword ptr [rbp + 304], r14d
                        mov              dword ptr [rbp + 308], 0
                                                                                        jmp   xchain340_n15_α
xchain340_n14_as:
                                                                                        jmp   xchain340_n13_as
xchain340_n14_β:
                        mov              eax, dword ptr [rbp + 308]
                        cmp              eax, 0
                                                                                        je    xchain340_n15_β
                                                                                        jmp   xchain340_n16_β
xchain340_n14_af:
                        add              dword ptr [rbp + 308], 1
                        mov              r14d, dword ptr [rbp + 304]
                        mov              eax, dword ptr [rbp + 308]
                        cmp              eax, 1
                                                                                        je    xchain340_n16_α
                                                                                        jmp   xchain340_n13_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain340_n15_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        cmp              eax, 3
                                                                                        jne   .Lx366_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx366_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx366_10
.Lx366_9:
                        xor              eax, eax
.Lx366_10:
                        test             rax, rax
                                                                                        jz    .Lx366_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx366_4]
                        lea              rdx, [rip + .Lx366_5]
                                                                                        jmp   rax
.Lx366_4:
                                                                                        jmp   xchain340_n14_as
.Lx366_5:
                                                                                        jmp   xchain340_n14_af
.Lx366_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx366_2:
                        test             rax, rax
                                                                                        je    .Lx366_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx366_7]
                        lea              rdx, [rip + .Lx366_8]
                                                                                        jmp   rax
.Lx366_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx366_2
.Lx366_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx366_2
.Lx366_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain340_n14_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx366_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain340_n14_as
.Lx366_6:
                        add              rsp, 16
                                                                                        jmp   xchain340_n14_af
xchain340_n15_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY
xchain340_n16_α:
                        mov              dword ptr [rbp + 336], r14d
                        mov              dword ptr [rbp + 340], 0
                                                                                        jmp   xchain340_n17_α
xchain340_n16_as:
                        mov              eax, dword ptr [rbp + 340]
                        add              eax, 1
                        mov              dword ptr [rbp + 340], eax
                        cmp              eax, 1
                                                                                        je    xchain340_n19_α
                                                                                        jmp   xchain340_n14_as
xchain340_n16_β:
                        mov              dword ptr [rbp + 340], 2
xchain340_n16_af:
                        mov              eax, dword ptr [rbp + 340]
                        sub              eax, 1
                        mov              dword ptr [rbp + 340], eax
                        cmp              eax, 0
                                                                                        je    xchain340_n18_β
                        cmp              eax, 1
                                                                                        je    xchain340_n20_β
                                                                                        jmp   xchain340_n14_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE push
xchain340_n17_α:
                        lea              rdi, [rbp + 384]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   xchain340_n21_α
xchain340_n17_β:
                        lea              rdi, [rbp + 384]
                        call             rt_cap_pop@PLT
                                                                                        jmp   xchain340_n16_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain340_n18_α:
                        lea              rdi, [rbp + 384]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S6]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain340_n16_as
xchain340_n18_β:
                        sub              r12, 24
                                                                                        jmp   xchain340_n21_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain340_n19_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   xchain340_n22_α
xchain340_n19_β:
                                                                                        jmp   xchain340_n16_af
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain340_n20_α:
                        lea              rdi, [rbp + 448]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx374_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx374_4]
                        lea              rdx, [rip + .Lx374_5]
                                                                                        jmp   rax
.Lx374_4:
                                                                                        jmp   xchain340_n16_as
.Lx374_5:
                                                                                        jmp   xchain340_n16_af
.Lx374_0:
                        lea              rdi, [rbp + 448]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain340_n16_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx374_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain340_n16_as
.Lx374_6:
                        add              rsp, 16
                                                                                        jmp   xchain340_n16_af
xchain340_n20_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain340_n21_α:
                        mov              rax, qword ptr [1879052880]
                        mov              rdx, qword ptr [1879052888]
                        cmp              eax, 3
                                                                                        jne   .Lx375_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx375_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx375_10
.Lx375_9:
                        xor              eax, eax
.Lx375_10:
                        test             rax, rax
                                                                                        jz    .Lx375_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx375_4]
                        lea              rdx, [rip + .Lx375_5]
                                                                                        jmp   rax
.Lx375_4:
                                                                                        jmp   xchain340_n18_α
.Lx375_5:
                                                                                        jmp   xchain340_n17_β
.Lx375_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx375_2:
                        test             rax, rax
                                                                                        je    .Lx375_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx375_7]
                        lea              rdx, [rip + .Lx375_8]
                                                                                        jmp   rax
.Lx375_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx375_2
.Lx375_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx375_2
.Lx375_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain340_n17_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx375_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain340_n18_α
.Lx375_6:
                        add              rsp, 16
                                                                                        jmp   xchain340_n17_β
xchain340_n21_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
xchain340_n22_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052560]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052568]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx377_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx377_5
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx377_6]
                        lea              rdx, [rip + .Lx377_7]
                                                                                        jmp   rax
.Lx377_6:
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
                                                                                        jmp   .Lx377_2
.Lx377_7:
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
                                                                                        jmp   .Lx377_2
.Lx377_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx377_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx377_21
.Lx377_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx377_21:
                        mov              rdi, qword ptr [rip + .Lx377_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx377_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx377_3]
                        lea              rdx, [rip + .Lx377_4]
                                                                                        jmp   rax
.Lx377_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx377_2
.Lx377_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx377_2
.Lx377_1:
                        call             rt_faildescr@PLT
.Lx377_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    xchain340_n16_af
                                                                                        jmp   xchain340_n20_α
xchain340_n22_β:
                                                                                        jmp   xchain340_n16_af
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "Push_item"
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 624], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 616]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 624], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 616]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 616], eax
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
                                                                                        jmp   qword ptr [rbp + 608]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 632]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 768
                        mov              [rsp + 744], rcx
                        mov              [rsp + 752], rdx
                        mov              [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rbp + 736], r8
                        mov              dword ptr [rbp + 728], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + xchain378_n0_β]
                        mov              qword ptr [rbp + 720], rax
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY
xchain378_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   xchain378_n1_α
xchain378_n0_as:
                        mov              eax, dword ptr [rbp + 20]
                        add              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 1
                                                                                        je    xchain378_n3_α
                        cmp              eax, 2
                                                                                        je    xchain378_n5_α
                        cmp              eax, 3
                                                                                        je    xchain378_n7_α
                        cmp              eax, 4
                                                                                        je    xchain378_n8_α
                        cmp              eax, 5
                                                                                        je    xchain378_n10_α
                                                                                        jmp   proc_PAT$4_γ
xchain378_n0_β:
                        mov              dword ptr [rbp + 20], 6
xchain378_n0_af:
                        mov              eax, dword ptr [rbp + 20]
                        sub              eax, 1
                        mov              dword ptr [rbp + 20], eax
                        cmp              eax, 0
                                                                                        je    xchain378_n2_β
                        cmp              eax, 1
                                                                                        je    xchain378_n4_β
                        cmp              eax, 2
                                                                                        je    xchain378_n6_β
                        cmp              eax, 3
                                                                                        je    xchain378_n7_β
                        cmp              eax, 4
                                                                                        je    xchain378_n9_β
                        cmp              eax, 5
                                                                                        je    xchain378_n11_β
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain378_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   xchain378_n2_α
xchain378_n1_β:
                                                                                        jmp   xchain378_n0_af
.Lx381_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_POS
xchain378_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   xchain378_n0_af
                                                                                        jmp   xchain378_n0_as
xchain378_n2_β:
                                                                                        jmp   xchain378_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain378_n3_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   xchain378_n12_α
xchain378_n3_β:
                                                                                        jmp   xchain378_n0_af
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain378_n4_α:
                        lea              rdi, [rbp + 96]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx384_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx384_4]
                        lea              rdx, [rip + .Lx384_5]
                                                                                        jmp   rax
.Lx384_4:
                                                                                        jmp   xchain378_n0_as
.Lx384_5:
                                                                                        jmp   xchain378_n0_af
.Lx384_0:
                        lea              rdi, [rbp + 96]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain378_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx384_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain378_n0_as
.Lx384_6:
                        add              rsp, 16
                                                                                        jmp   xchain378_n0_af
xchain378_n4_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain378_n5_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain378_n13_α
xchain378_n5_β:
                                                                                        jmp   xchain378_n0_af
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain378_n6_α:
                        lea              rdi, [rbp + 192]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx386_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx386_4]
                        lea              rdx, [rip + .Lx386_5]
                                                                                        jmp   rax
.Lx386_4:
                                                                                        jmp   xchain378_n0_as
.Lx386_5:
                                                                                        jmp   xchain378_n0_af
.Lx386_0:
                        lea              rdi, [rbp + 192]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain378_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx386_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain378_n0_as
.Lx386_6:
                        add              rsp, 16
                                                                                        jmp   xchain378_n0_af
xchain378_n6_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain378_n7_α:
                        mov              dword ptr [rbp + 288], r14d
                        mov              dword ptr [rbp + 292], r14d
                        mov              dword ptr [rbp + 296], 0
                        mov              qword ptr [rbp + 312], rsp
                        mov              qword ptr [rbp + 304], 0
                                                                                        jmp   xchain378_n0_as
xchain378_n7_β:
                        mov              r14d, dword ptr [rbp + 292]
                        mov              rax, qword ptr [rbp + 304]
                        sub              rsp, 288
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 304], rsp
                        mov              rbp, rsp
                        add              rbp, -296
                                                                                        jmp   xchain378_n14_α
xchain378_n7_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              r14d, eax
                                                                                        je    xchain378_n7_af
                        mov              rbp, qword ptr [rbp + 296]
                        mov              eax, dword ptr [rbp + 296]
                        add              eax, 1
                        mov              dword ptr [rbp + 296], eax
                        mov              dword ptr [rbp + 292], r14d
                                                                                        jmp   xchain378_n0_as
xchain378_n7_af:
                        mov              rax, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              rsp, [rbp + 584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 296]
                        test             ecx, ecx
                                                                                        jz    .Lx388_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 296], ecx
                        mov              qword ptr [rbp + 304], rax
                        lea              rbp, [rax + -296]
                                                                                        jmp   xchain378_n7_af
.Lx388_2:
                        mov              r14d, dword ptr [rbp + 288]
                        mov              rsp, qword ptr [rbp + 312]
                                                                                        jmp   xchain378_n0_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain378_n8_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   xchain378_n16_α
xchain378_n8_β:
                                                                                        jmp   xchain378_n0_af
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain378_n9_α:
                        lea              rdi, [rbp + 608]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx390_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx390_4]
                        lea              rdx, [rip + .Lx390_5]
                                                                                        jmp   rax
.Lx390_4:
                                                                                        jmp   xchain378_n0_as
.Lx390_5:
                                                                                        jmp   xchain378_n0_af
.Lx390_0:
                        lea              rdi, [rbp + 608]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain378_n0_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx390_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain378_n0_as
.Lx390_6:
                        add              rsp, 16
                                                                                        jmp   xchain378_n0_af
xchain378_n9_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain378_n10_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   xchain378_n11_α
xchain378_n10_β:
                                                                                        jmp   xchain378_n0_af
.Lx391_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RPOS
xchain378_n11_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   xchain378_n0_af
                                                                                        jmp   xchain378_n0_as
xchain378_n11_β:
                                                                                        jmp   xchain378_n0_af
#-----------------------------------------------------------------------------------------------------------------------
xchain378_n12_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052480]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052488]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx394_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx394_5
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx394_6]
                        lea              rdx, [rip + .Lx394_7]
                                                                                        jmp   rax
.Lx394_6:
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
                                                                                        jmp   .Lx394_2
.Lx394_7:
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
                                                                                        jmp   .Lx394_2
.Lx394_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx394_21
.Lx394_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain378_n0_af
                                                                                        jmp   xchain378_n4_α
xchain378_n12_β:
                                                                                        jmp   xchain378_n0_af
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
xchain378_n13_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052528]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx396_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx396_5
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx396_6]
                        lea              rdx, [rip + .Lx396_7]
                                                                                        jmp   rax
.Lx396_6:
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
                                                                                        jmp   .Lx396_2
.Lx396_7:
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
                                                                                        jmp   .Lx396_2
.Lx396_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx396_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx396_21
.Lx396_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx396_21:
                        mov              rdi, qword ptr [rip + .Lx396_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx396_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx396_3]
                        lea              rdx, [rip + .Lx396_4]
                                                                                        jmp   rax
.Lx396_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx396_2
.Lx396_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx396_2
.Lx396_1:
                        call             rt_faildescr@PLT
.Lx396_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    xchain378_n0_af
                                                                                        jmp   xchain378_n6_α
xchain378_n13_β:
                                                                                        jmp   xchain378_n0_af
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY
xchain378_n14_α:
                        mov              dword ptr [rbp + 336], r14d
                        mov              dword ptr [rbp + 340], 0
                                                                                        jmp   xchain378_n17_α
xchain378_n14_as:
                        mov              eax, dword ptr [rbp + 340]
                        add              eax, 1
                        mov              dword ptr [rbp + 340], eax
                        cmp              eax, 1
                                                                                        je    xchain378_n19_α
                        cmp              eax, 2
                                                                                        je    xchain378_n20_α
                        cmp              eax, 3
                                                                                        je    xchain378_n15_α
                                                                                        jmp   xchain378_n7_as
xchain378_n14_β:
                        mov              dword ptr [rbp + 340], 4
xchain378_n14_af:
                        mov              eax, dword ptr [rbp + 340]
                        sub              eax, 1
                        mov              dword ptr [rbp + 340], eax
                        cmp              eax, 0
                                                                                        je    xchain378_n18_β
                        cmp              eax, 1
                                                                                        je    xchain378_n19_β
                        cmp              eax, 2
                                                                                        je    xchain378_n20_β
                        cmp              eax, 3
                                                                                        je    xchain378_n21_β
                                                                                        jmp   xchain378_n7_af
#-----------------------------------------------------------------------------------------------------------------------
xchain378_n15_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052600]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx400_0]
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx400_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx400_6]
                        lea              rdx, [rip + .Lx400_7]
                                                                                        jmp   rax
.Lx400_6:
                        mov              rdi, qword ptr [1879052592]
                        mov              rsi, qword ptr [1879052600]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx400_2
.Lx400_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052592], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052600], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx400_2
.Lx400_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx400_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx400_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx400_3]
                        lea              rdx, [rip + .Lx400_4]
                                                                                        jmp   rax
.Lx400_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx400_2
.Lx400_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx400_2
.Lx400_1:
                        call             rt_faildescr@PLT
.Lx400_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    xchain378_n14_af
                                                                                        jmp   xchain378_n21_α
xchain378_n15_β:
                                                                                        jmp   xchain378_n14_af
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
xchain378_n16_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052624]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052632]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx402_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx402_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx402_6]
                        lea              rdx, [rip + .Lx402_7]
                                                                                        jmp   rax
.Lx402_6:
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
                                                                                        jmp   .Lx402_2
.Lx402_7:
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
                                                                                        jmp   .Lx402_2
.Lx402_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx402_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx402_21
.Lx402_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx402_21:
                        mov              rdi, qword ptr [rip + .Lx402_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx402_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx402_3]
                        lea              rdx, [rip + .Lx402_4]
                                                                                        jmp   rax
.Lx402_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx402_2
.Lx402_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx402_2
.Lx402_1:
                        call             rt_faildescr@PLT
.Lx402_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    xchain378_n0_af
                                                                                        jmp   xchain378_n9_α
xchain378_n16_β:
                                                                                        jmp   xchain378_n0_af
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain378_n17_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   xchain378_n22_α
xchain378_n17_β:
                                                                                        jmp   xchain378_n14_af
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain378_n18_α:
                        lea              rdi, [rbp + 368]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx404_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx404_4]
                        lea              rdx, [rip + .Lx404_5]
                                                                                        jmp   rax
.Lx404_4:
                                                                                        jmp   xchain378_n14_as
.Lx404_5:
                                                                                        jmp   xchain378_n14_af
.Lx404_0:
                        lea              rdi, [rbp + 368]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain378_n14_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx404_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain378_n14_as
.Lx404_6:
                        add              rsp, 16
                                                                                        jmp   xchain378_n14_af
xchain378_n18_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain378_n19_α:
                        mov              dword ptr [rbp + 464], r14d
                        mov              dword ptr [rbp + 468], r14d
                        mov              dword ptr [rbp + 472], 0
                        mov              qword ptr [rbp + 488], rsp
                        mov              qword ptr [rbp + 480], 0
                                                                                        jmp   xchain378_n14_as
xchain378_n19_β:
                        mov              r14d, dword ptr [rbp + 468]
                        mov              rax, qword ptr [rbp + 480]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 480], rsp
                        mov              rbp, rsp
                        add              rbp, -472
                                                                                        jmp   xchain378_n23_α
xchain378_n19_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              r14d, eax
                                                                                        je    xchain378_n23_β
                        mov              rbp, qword ptr [rbp + 472]
                        mov              eax, dword ptr [rbp + 472]
                        add              eax, 1
                        mov              dword ptr [rbp + 472], eax
                        mov              dword ptr [rbp + 468], r14d
                                                                                        jmp   xchain378_n14_as
xchain378_n19_af:
                        mov              rax, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              rsp, [rbp + 536]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 472]
                        test             ecx, ecx
                                                                                        jz    .Lx406_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 472], ecx
                        mov              qword ptr [rbp + 480], rax
                        lea              rbp, [rax + -472]
                                                                                        jmp   xchain378_n23_β
.Lx406_2:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   xchain378_n14_af
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain378_n20_α:
                        mov              rax, qword ptr [1879052864]
                        mov              rdx, qword ptr [1879052872]
                        cmp              eax, 3
                                                                                        jne   .Lx407_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx407_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx407_10
.Lx407_9:
                        xor              eax, eax
.Lx407_10:
                        test             rax, rax
                                                                                        jz    .Lx407_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx407_4]
                        lea              rdx, [rip + .Lx407_5]
                                                                                        jmp   rax
.Lx407_4:
                                                                                        jmp   xchain378_n14_as
.Lx407_5:
                                                                                        jmp   xchain378_n14_af
.Lx407_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx407_2:
                        test             rax, rax
                                                                                        je    .Lx407_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx407_7]
                        lea              rdx, [rip + .Lx407_8]
                                                                                        jmp   rax
.Lx407_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx407_2
.Lx407_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx407_2
.Lx407_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain378_n14_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx407_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain378_n14_as
.Lx407_6:
                        add              rsp, 16
                                                                                        jmp   xchain378_n14_af
xchain378_n20_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
xchain378_n21_α:
                        lea              rdi, [rbp + 560]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx408_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx408_4]
                        lea              rdx, [rip + .Lx408_5]
                                                                                        jmp   rax
.Lx408_4:
                                                                                        jmp   xchain378_n14_as
.Lx408_5:
                                                                                        jmp   xchain378_n14_af
.Lx408_0:
                        lea              rdi, [rbp + 560]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain378_n14_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx408_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain378_n14_as
.Lx408_6:
                        add              rsp, 16
                                                                                        jmp   xchain378_n14_af
xchain378_n21_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
xchain378_n22_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052504]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052528]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052536]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx410_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx410_5
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [1879052496], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [1879052504], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx410_6]
                        lea              rdx, [rip + .Lx410_7]
                                                                                        jmp   rax
.Lx410_6:
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
                                                                                        jmp   .Lx410_2
.Lx410_7:
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
                                                                                        jmp   .Lx410_2
.Lx410_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx410_20
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx410_21
.Lx410_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx410_21:
                        mov              rdi, qword ptr [rip + .Lx410_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx410_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4]
                                                                                        jmp   rax
.Lx410_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_1:
                        call             rt_faildescr@PLT
.Lx410_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    xchain378_n14_af
                                                                                        jmp   xchain378_n18_α
xchain378_n22_β:
                                                                                        jmp   xchain378_n14_af
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain378_n23_α:
                        mov              rax, qword ptr [1879052896]
                        mov              rdx, qword ptr [1879052904]
                        cmp              eax, 3
                                                                                        jne   .Lx411_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx411_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx411_10
.Lx411_9:
                        xor              eax, eax
.Lx411_10:
                        test             rax, rax
                                                                                        jz    .Lx411_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx411_4]
                        lea              rdx, [rip + .Lx411_5]
                                                                                        jmp   rax
.Lx411_4:
                                                                                        jmp   xchain378_n19_as
.Lx411_5:
                                                                                        jmp   xchain378_n19_af
.Lx411_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx411_2:
                        test             rax, rax
                                                                                        je    .Lx411_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx411_7]
                        lea              rdx, [rip + .Lx411_8]
                                                                                        jmp   rax
.Lx411_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx411_2
.Lx411_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx411_2
.Lx411_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain378_n19_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx411_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain378_n19_as
.Lx411_6:
                        add              rsp, 16
                                                                                        jmp   xchain378_n19_af
xchain378_n23_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 736], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 728]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 736], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 728]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 728], eax
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
                                                                                        jmp   qword ptr [rbp + 720]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 744]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 752]
                        lea              rsp, [rbp + 768]
                        mov              rbp, [rbp + 760]
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
                        mov              esi, 608
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
                        mov              esi, 432
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
                        mov              esi, 448
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
                        mov              esi, 688
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
                        mov              esi, 512
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
                        mov              esi, 368
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
                        mov              esi, 320
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
                        mov              esi, 288
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
                        mov              esi, 320
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
                        mov              esi, 288
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
                        mov              esi, 320
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
                        mov              esi, 240
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
                        mov              esi, 192
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
                        mov              esi, 288
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
                        mov              esi, 320
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
                        mov              esi, 1312
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
                        mov              esi, 2176
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
                        mov              esi, 368
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
                        mov              esi, 624
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
                        mov              esi, 736
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
                        sub              rsp, 9240
                        mov              rdi, rsp
                        mov              ecx, 9240
                        xor              eax, eax
                        rep stosb
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 9232], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#                &ALPHABET      POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
# IR_KEYWORD_SNOBOL4_read
xchain412_n0_α:
                        mov              rdi, qword ptr [rip + .Lx413_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   xchain412_n1_α
xchain412_n0_β:
                                                                                        jmp   xchain412_n8_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_HEAD
xchain412_n1_α:
                        mov              qword ptr [rbp + 152], rbp
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 144], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx415_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   xchain412_n2_α
xchain412_n1_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx415_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx415_1
                                                                                        jmp   .Lx415_0
.Lx415_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   xchain412_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain412_n2_α:
                                                                                        jmp   xchain412_n4_α
xchain412_n2_as:
                                                                                        jmp   xchain412_n3_α
xchain412_n2_β:
                                                                                        jmp   xchain412_n7_β
xchain412_n2_af:
                                                                                        jmp   xchain412_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RELEASE
xchain412_n3_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx419_1:
                        test             rax, rax
                                                                                        je    .Lx419_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx419_3]
                        lea              rdx, [rip + .Lx419_4]
                                                                                        jmp   rax
.Lx419_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx419_1
.Lx419_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx419_1
.Lx419_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   xchain412_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain412_n4_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain412_n5_α
xchain412_n4_β:
                                                                                        jmp   xchain412_n1_β
.Lx420_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_POS
xchain412_n5_α:
                        mov              rax, 10
                        cmp              r14d, eax
                                                                                        jne   xchain412_n1_β
                                                                                        jmp   xchain412_n6_α
xchain412_n5_β:
                                                                                        jmp   xchain412_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE fc cell
xchain412_n6_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   xchain412_n9_α
xchain412_n6_β:
                        add              rsp, 16
                                                                                        jmp   xchain412_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain412_n7_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain412_n3_α
xchain412_n7_β:
                        sub              r12, 24
                                                                                        jmp   xchain412_n9_β
#=======================================================================================================================
#                DATA('list(head,tail)')
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain412_n8_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   xchain412_n10_α
xchain412_n8_β:
                                                                                        jmp   xchain412_n11_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LEN
xchain412_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx427_240
                        add              rsp, 16
                                                                                        jmp   xchain412_n1_β
.Lx427_240:
                        add              r14d, 1
                                                                                        jmp   xchain412_n7_α
xchain412_n9_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   xchain412_n1_β
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn429:              .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    xchain412_n11_α
                                                                                        jmp   xchain412_n11_α
xchain412_n10_β:
                                                                                        jmp   xchain412_n11_α
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
# IR_LIT_STRING
xchain412_n11_α:
                        mov              qword ptr [rbp + 4640], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 4648], rax
                                                                                        jmp   xchain412_n12_α
xchain412_n11_β:
                                                                                        jmp   xchain412_n14_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n12_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4608]
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4616], rax
                        .section         .rodata
.Lrkfn432:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn432]
                        lea              rsi, [rbp + 4608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              eax, 99
                                                                                        je    xchain412_n14_α
                                                                                        jmp   xchain412_n13_α
xchain412_n12_β:
                                                                                        jmp   xchain412_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n13_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              rdx, qword ptr [rbp + 4600]
                        mov              qword ptr [1879052864], rax
                        mov              qword ptr [1879052872], rdx
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   xchain412_n14_α
xchain412_n13_β:
                                                                                        jmp   xchain412_n14_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain412_n14_α:
                        mov              qword ptr [rbp + 4736], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   xchain412_n15_α
xchain412_n14_β:
                                                                                        jmp   xchain412_n17_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n15_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4736] -> [zr+4704]
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn436:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn436]
                        lea              rsi, [rbp + 4704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    xchain412_n17_α
                                                                                        jmp   xchain412_n16_α
xchain412_n15_β:
                                                                                        jmp   xchain412_n17_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n16_α:
                        mov              rax, qword ptr [rbp + 4688]
                        mov              rdx, qword ptr [rbp + 4696]
                        mov              qword ptr [1879052880], rax
                        mov              qword ptr [1879052888], rdx
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   xchain412_n17_α
xchain412_n16_β:
                                                                                        jmp   xchain412_n17_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain412_n17_α:
                        mov              qword ptr [rbp + 4832], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 4840], rax
                                                                                        jmp   xchain412_n18_α
xchain412_n17_β:
                                                                                        jmp   xchain412_n20_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n18_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4832] -> [zr+4800]
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4808], rax
                        .section         .rodata
.Lrkfn440:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn440]
                        lea              rsi, [rbp + 4800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 99
                                                                                        je    xchain412_n20_α
                                                                                        jmp   xchain412_n19_α
xchain412_n18_β:
                                                                                        jmp   xchain412_n20_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n19_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              rdx, qword ptr [rbp + 4792]
                        mov              qword ptr [1879052896], rax
                        mov              qword ptr [1879052904], rdx
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                                                                                        jmp   xchain412_n20_α
xchain412_n19_β:
                                                                                        jmp   xchain412_n20_α
#=======================================================================================================================
#                treebank       =
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain412_n20_α:
                        mov              qword ptr [rbp + 4928], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 4936], rax
                                                                                        jmp   xchain412_n21_α
xchain412_n20_β:
                                                                                        jmp   xchain412_n23_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n21_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4928] -> [zr+4896]
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4904], rax
                        .section         .rodata
.Lrkfn444:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rbp + 4896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                        cmp              eax, 99
                                                                                        je    xchain412_n23_α
                                                                                        jmp   xchain412_n22_α
xchain412_n21_β:
                                                                                        jmp   xchain412_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n22_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              rdx, qword ptr [rbp + 4888]
                        mov              qword ptr [1879052944], rax
                        mov              qword ptr [1879052952], rdx
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                                                                                        jmp   xchain412_n23_α
xchain412_n22_β:
                                                                                        jmp   xchain412_n23_α
#=======================================================================================================================
#                DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
#                DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
#                DEFINE('pp_bank()cur')                       :(pp_bank_end)
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain412_n23_α:
                        mov              rdi, qword ptr [rip + .Lx446_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    xchain412_n25_α
                        mov              qword ptr [rbp + 8544], rax
                        mov              qword ptr [rbp + 8552], rdx
                                                                                        jmp   xchain412_n24_α
xchain412_n23_β:
                                                                                        jmp   xchain412_n25_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n24_α:
                        mov              rax, qword ptr [rbp + 8544]
                        mov              rdx, qword ptr [rbp + 8552]
                        mov              qword ptr [1879052976], rax
                        mov              qword ptr [1879052984], rdx
                        mov              qword ptr [rbp + 8528], rax
                        mov              qword ptr [rbp + 8536], rdx
                                                                                        jmp   xchain412_n26_α
xchain412_n24_β:
                                                                                        jmp   xchain412_n25_α
#=======================================================================================================================
# slurp_done     t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n25_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn449:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rbp + 8784]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8768], rax
                        mov              qword ptr [rbp + 8776], rdx
                        cmp              eax, 99
                                                                                        je    xchain412_n28_α
                                                                                        jmp   xchain412_n27_α
xchain412_n25_β:
                                                                                        jmp   xchain412_n28_α
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain412_n26_α:
                        mov              rax, qword ptr [1879052992]
                        mov              rdx, qword ptr [1879053000]
                        mov              qword ptr [rbp + 8656], rax
                        mov              qword ptr [rbp + 8664], rdx
                                                                                        jmp   xchain412_n29_α
xchain412_n26_β:
                                                                                        jmp   xchain412_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n27_α:
                        mov              rax, qword ptr [rbp + 8768]
                        mov              rdx, qword ptr [rbp + 8776]
                        mov              qword ptr [1879053008], rax
                        mov              qword ptr [1879053016], rdx
                        mov              qword ptr [rbp + 8752], rax
                        mov              qword ptr [rbp + 8760], rdx
                                                                                        jmp   xchain412_n28_α
xchain412_n27_β:
                                                                                        jmp   xchain412_n28_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain412_n28_α:
                        mov              rax, qword ptr [1879052992]
                        mov              rdx, qword ptr [1879053000]
                        mov              qword ptr [rbp + 8880], rax
                        mov              qword ptr [rbp + 8888], rdx
                                                                                        jmp   xchain412_n30_α
xchain412_n28_β:
                                                                                        jmp   xchain412_n31_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain412_n29_α:
                        mov              rax, qword ptr [1879052976]
                        mov              rdx, qword ptr [1879052984]
                        mov              qword ptr [rbp + 8688], rax
                        mov              qword ptr [rbp + 8696], rdx
                                                                                        jmp   xchain412_n32_α
xchain412_n29_β:
                                                                                        jmp   xchain412_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_HEAD
xchain412_n30_α:
                        mov              qword ptr [rbp + 8856], rbp
                        mov              rdi, qword ptr [rbp + 8880]
                        mov              rsi, qword ptr [rbp + 8888]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 8848], r12
                        mov              qword ptr [rbp + 8832], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 8824], rax
                        mov              dword ptr [rbp + 8816], 0
.Lx455_0:
                        mov              r14d, dword ptr [rbp + 8816]
                                                                                        jmp   xchain412_n33_α
xchain412_n30_β:
                        add              dword ptr [rbp + 8816], 1
                        mov              eax, dword ptr [rbp + 8816]
                        cmp              eax, r15d
                                                                                        jg    .Lx455_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx455_1
                                                                                        jmp   .Lx455_0
.Lx455_1:
                        mov              rax, qword ptr [rbp + 8824]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 8832]
                        mov              r12, qword ptr [rbp + 8848]
                        mov              rbp, qword ptr [rbp + 8856]
                                                                                        jmp   xchain412_n31_α
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain412_n31_α:
                        mov              qword ptr [rbp + 9200], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 9208], rax
                                                                                        jmp   xchain412_n34_α
xchain412_n31_β:
                                                                                        jmp   main_γ
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n32_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 8656]
                        mov              rsi, qword ptr [rbp + 8664]
                        mov              rdx, qword ptr [rbp + 8688]
                        mov              rcx, qword ptr [rbp + 8696]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 8624], rax
                        mov              qword ptr [rbp + 8632], rdx
                                                                                        jmp   xchain412_n35_α
xchain412_n32_β:
                                                                                        jmp   xchain412_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain412_n33_α:
                        mov              rax, qword ptr [1879052944]
                        mov              rdx, qword ptr [1879052952]
                        cmp              eax, 3
                                                                                        jne   .Lx458_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx458_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx458_10
.Lx458_9:
                        xor              eax, eax
.Lx458_10:
                        test             rax, rax
                                                                                        jz    .Lx458_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx458_4]
                        lea              rdx, [rip + .Lx458_5]
                                                                                        jmp   rax
.Lx458_4:
                                                                                        jmp   xchain412_n36_α
.Lx458_5:
                                                                                        jmp   xchain412_n30_β
.Lx458_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx458_2:
                        test             rax, rax
                                                                                        je    .Lx458_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx458_7]
                        lea              rdx, [rip + .Lx458_8]
                                                                                        jmp   rax
.Lx458_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx458_2
.Lx458_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx458_2
.Lx458_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain412_n30_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx458_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain412_n36_α
.Lx458_6:
                        add              rsp, 16
                                                                                        jmp   xchain412_n30_β
xchain412_n33_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain412_n34_α:
                        mov              rsi, qword ptr [rbp + 9200]
                        mov              rdx, qword ptr [rbp + 9208]
                        mov              rdi, qword ptr [rip + .Lx459_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 9184], rax
                        mov              qword ptr [rbp + 9192], rdx
                                                                                        jmp   main_γ
xchain412_n34_β:
                                                                                        jmp   main_γ
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain412_n35_α:
                        mov              rax, qword ptr [1879052816]
                        mov              rdx, qword ptr [1879052824]
                        mov              qword ptr [rbp + 8720], rax
                        mov              qword ptr [rbp + 8728], rdx
                                                                                        jmp   xchain412_n37_α
xchain412_n35_β:
                                                                                        jmp   xchain412_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RELEASE
xchain412_n36_α:
                        mov              rax, qword ptr [rbp + 8824]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 8832]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 8880]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx462_1:
                        test             rax, rax
                                                                                        je    .Lx462_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx462_3]
                        lea              rdx, [rip + .Lx462_4]
                                                                                        jmp   rax
.Lx462_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx462_1
.Lx462_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx462_1
.Lx462_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 8848]
                        mov              rbp, qword ptr [rbp + 8856]
                                                                                        jmp   xchain412_n38_α
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n37_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 8624]
                        mov              rsi, qword ptr [rbp + 8632]
                        mov              rdx, qword ptr [rbp + 8720]
                        mov              rcx, qword ptr [rbp + 8728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 8592], rax
                        mov              qword ptr [rbp + 8600], rdx
                                                                                        jmp   xchain412_n39_α
xchain412_n37_β:
                                                                                        jmp   xchain412_n23_α
#=======================================================================================================================
#                t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n38_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn465:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rbp + 8944]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8928], rax
                        mov              qword ptr [rbp + 8936], rdx
                        cmp              eax, 99
                                                                                        je    xchain412_n41_α
                                                                                        jmp   xchain412_n40_α
xchain412_n38_β:
                                                                                        jmp   xchain412_n41_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n39_α:
                        mov              rax, qword ptr [rbp + 8592]
                        mov              rdx, qword ptr [rbp + 8600]
                        mov              qword ptr [1879052992], rax
                        mov              qword ptr [1879053000], rdx
                        mov              qword ptr [rbp + 8576], rax
                        mov              qword ptr [rbp + 8584], rdx
                                                                                        jmp   xchain412_n23_α
xchain412_n39_β:
                                                                                        jmp   xchain412_n23_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n40_α:
                        mov              rax, qword ptr [rbp + 8928]
                        mov              rdx, qword ptr [rbp + 8936]
                        mov              qword ptr [1879053024], rax
                        mov              qword ptr [1879053032], rdx
                        mov              qword ptr [rbp + 8912], rax
                        mov              qword ptr [rbp + 8920], rdx
                                                                                        jmp   xchain412_n41_α
xchain412_n40_β:
                                                                                        jmp   xchain412_n41_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain412_n41_α:
                        mov              qword ptr [rbp + 9008], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 9016], rax
                                                                                        jmp   xchain412_n42_α
xchain412_n41_β:
                                                                                        jmp   xchain412_n44_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain412_n42_α:
                        mov              rax, qword ptr [1879053024]
                        mov              rdx, qword ptr [1879053032]
                        mov              qword ptr [rbp + 9072], rax
                        mov              qword ptr [rbp + 9080], rdx
                                                                                        jmp   xchain412_n43_α
xchain412_n42_β:
                                                                                        jmp   xchain412_n44_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain412_n43_α:
                        mov              rax, qword ptr [1879053008]
                        mov              rdx, qword ptr [1879053016]
                        mov              qword ptr [rbp + 9104], rax
                        mov              qword ptr [rbp + 9112], rdx
                                                                                        jmp   xchain412_n45_α
xchain412_n43_β:
                                                                                        jmp   xchain412_n44_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n44_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052800]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052808]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx472_0]
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx472_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx472_6]
                        lea              rdx, [rip + .Lx472_7]
                                                                                        jmp   rax
.Lx472_6:
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
                                                                                        jmp   .Lx472_2
.Lx472_7:
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
                                                                                        jmp   .Lx472_2
.Lx472_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx472_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx472_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx472_3]
                        lea              rdx, [rip + .Lx472_4]
                                                                                        jmp   rax
.Lx472_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx472_2
.Lx472_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx472_2
.Lx472_1:
                        call             rt_faildescr@PLT
.Lx472_2:
                        mov              qword ptr [rbp + 9152], rax
                        mov              qword ptr [rbp + 9160], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   xchain412_n46_α
xchain412_n44_β:
                                                                                        jmp   main_γ
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n45_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 9072]
                        cmp              eax, 100
                                                                                        je    .Lx473_0
                        mov              eax, dword ptr [rbp + 9104]
                        cmp              eax, 100
                                                                                        je    .Lx473_0
                        mov              eax, dword ptr [rbp + 9072]
                        cmp              eax, 6
                                                                                        jne   .Lx473_2
                        mov              eax, dword ptr [rbp + 9104]
                        cmp              eax, 6
                                                                                        jne   .Lx473_2
.Lx473_1:
                        mov              rax, qword ptr [rbp + 9080]
                        mov              rcx, qword ptr [rbp + 9112]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 9040], 6
                        mov              qword ptr [rbp + 9048], rax
                                                                                        jmp   xchain412_n47_α
.Lx473_0:
                        mov              rdi, qword ptr [rbp + 9072]
                        mov              rsi, qword ptr [rbp + 9080]
                        mov              rdx, qword ptr [rbp + 9104]
                        mov              rcx, qword ptr [rbp + 9112]
                        mov              r8d, 1
                        lea              r9, [rbp + 9040]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain412_n47_α
.Lx473_2:
                        mov              rdi, qword ptr [rbp + 9072]
                        mov              rsi, qword ptr [rbp + 9080]
                        mov              rdx, qword ptr [rbp + 9104]
                        mov              rcx, qword ptr [rbp + 9112]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain412_n44_α
                        mov              qword ptr [rbp + 9040], rax
                        mov              qword ptr [rbp + 9048], rdx
                                                                                        jmp   xchain412_n47_α
xchain412_n45_β:
                                                                                        jmp   xchain412_n44_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain412_n46_α:
                        mov              rax, qword ptr [rbp + 9152]
                        mov              rdx, qword ptr [rbp + 9160]
                        mov              qword ptr [1879052848], rax
                        mov              qword ptr [1879052856], rdx
                        mov              qword ptr [rbp + 9136], rax
                        mov              qword ptr [rbp + 9144], rdx
                                                                                        jmp   main_γ
xchain412_n46_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain412_n47_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 9008]
                        mov              rsi, qword ptr [rbp + 9016]
                        mov              rdx, qword ptr [rbp + 9040]
                        mov              rcx, qword ptr [rbp + 9048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 8976], rax
                        mov              qword ptr [rbp + 8984], rdx
                                                                                        jmp   xchain412_n48_α
xchain412_n47_β:
                                                                                        jmp   xchain412_n44_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain412_n48_α:
                        mov              rsi, qword ptr [rbp + 8976]
                        mov              rdx, qword ptr [rbp + 8984]
                        mov              rdi, qword ptr [rip + .Lx476_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 8960], rax
                        mov              qword ptr [rbp + 8968], rdx
                                                                                        jmp   xchain412_n44_α
xchain412_n48_β:
                                                                                        jmp   xchain412_n44_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 9232]
                        add              rsp, 9240
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 9232]
                        add              rsp, 9240
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
