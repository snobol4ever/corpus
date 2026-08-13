                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__list_reverse_α:
proc_LBL__list_reverse_α_body:
#=======================================================================================================================
# list_reverse   acc            =
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                               jmp   n1_lit_string_α
n0_statement_begin_β:                                               jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n2_assign_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # acc
                        mov              qword ptr [r9 + 40], rdx;  jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     add              rsp, 16;                   jmp   n4_statement_begin_α
#=======================================================================================================================
#                cur            =  lst
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:                                               jmp   n5_var_α
n4_statement_begin_β:                                               jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # lst
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax                       # cur
                        mov              qword ptr [r9 + 56], rdx;  jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     add              rsp, 16;                   jmp   n8_statement_begin_α
#=======================================================================================================================
# lr1            DIFFER(cur)                                  :F(lr_done)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:                                               jmp   n9_var_α
n8_statement_begin_β:                                               jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n10_call_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd44:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd44]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx43_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n8_statement_begin_β
.Lx43_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n11_statement_end_α
n10_call_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n8_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    add              rsp, 32;                   jmp   n12_statement_begin_α
#=======================================================================================================================
#                acc            =  list(head(cur), acc)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:                                              jmp   n13_var_α
n12_statement_begin_β:                                              jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n14_call_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd51:             .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd51]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx50_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n12_statement_begin_β
.Lx50_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n15_var_α
n14_call_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n12_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n16_call_α
n15_var_β:              add              rsp, 16
                        add              rsp, 32;                   jmp   n12_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd54:             .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd54]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx53_240
                        add              rsp, 16;                   jmp   n15_var_β
.Lx53_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n17_assign_α
n16_call_β:             add              rsp, 16;                   jmp   n15_var_β
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # acc
                        mov              qword ptr [r9 + 40], rdx;  jmp   n18_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    add              rsp, 64;                   jmp   n19_statement_begin_α
#=======================================================================================================================
#                cur            =  tail(cur)                  :(lr1)
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:                                              jmp   n20_var_α
n19_statement_begin_β:                                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd62:             .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd62]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx61_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n19_statement_begin_β
.Lx61_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n22_assign_α
n21_call_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n19_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax                       # cur
                        mov              qword ptr [r9 + 56], rdx;  jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    add              rsp, 32;                   jmp   n8_statement_begin_α
#=======================================================================================================================
# lr_done        list_reverse   =  acc                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                              jmp   n25_var_α
n24_statement_begin_β:                                              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n26_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # list_reverse
                        mov              qword ptr [r9 + 8], rdx;   jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    add              rsp, 16;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__list_reverse_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__list_reverse_β:
                                                                    jmp   proc_LBL__list_reverse_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__list_reverse_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__list_reverse_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_frame_α:
proc_LBL__stk_push_frame_α_body:
#=======================================================================================================================
# stk_push_frame stk            =  list(list(v,), stk)
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:                                              jmp   n73_var_α
n72_statement_begin_β:                                              jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n75_call_α
n74_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                   jmp   n72_statement_begin_β
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd90:             .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd90]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx89_240
                        add              rsp, 16;                   jmp   n74_lit_string_β
.Lx89_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n76_var_α
n75_call_β:             add              rsp, 16;                   jmp   n74_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n77_call_α
n76_var_β:              add              rsp, 32;                   jmp   n74_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd93:             .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd93]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx92_240
                        add              rsp, 16;                   jmp   n76_var_β
.Lx92_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n78_assign_α
n77_call_β:             add              rsp, 16;                   jmp   n76_var_β
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax                      # stk
                        mov              qword ptr [r9 + 552], rdx; jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    add              rsp, 80;                   jmp   n80_statement_begin_α
#=======================================================================================================================
#                stk_push_frame =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:                                              jmp   n81_lit_string_α
n80_statement_begin_β:                                              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n82_call_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd101:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd101]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx100_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n80_statement_begin_β
.Lx100_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n83_assign_α
n82_call_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n80_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # stk_push_frame
                        mov              qword ptr [r9 + 72], rdx;  jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    add              rsp, 32;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_frame_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_frame_β:
                                                                    jmp   proc_LBL__stk_push_frame_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_frame_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_frame_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_item_α:
proc_LBL__stk_push_item_α_body:
#=======================================================================================================================
# stk_push_item  head(stk)      =  list(v, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:                                             jmp   n106_var_α
n105_statement_begin_β:                                             jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n107_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_field_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx122_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n105_statement_begin_β
.Lx122_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n108_var_α
n107_field_var_β:       add              rsp, 16
                        add              rsp, 16;                   jmp   n105_statement_begin_β
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "head"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n109_var_α
n108_var_β:             add              rsp, 16;                   jmp   n107_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n110_call_α
n109_var_β:             add              rsp, 16;                   jmp   n108_var_β
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd126:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd126]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx125_240
                        add              rsp, 16;                   jmp   n109_var_β
.Lx125_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n111_call_α
n110_call_β:            add              rsp, 16;                   jmp   n109_var_β
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd128:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd128]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx127_240
                        add              rsp, 32;                   jmp   n109_var_β
.Lx127_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n112_assign_var_α
n111_call_β:            add              rsp, 32;                   jmp   n109_var_β
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]                      # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx129_240
                        add              rsp, 48;                   jmp   n109_var_β
.Lx129_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n113_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   add              rsp, 112;                  jmp   n114_statement_begin_α
#=======================================================================================================================
#                stk_push_item  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:                                             jmp   n115_lit_string_α
n114_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n116_call_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd136:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd136]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx135_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n114_statement_begin_β
.Lx135_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n117_assign_α
n116_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n114_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax                       # stk_push_item
                        mov              qword ptr [r9 + 104], rdx; jmp   n118_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   add              rsp, 32;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_item_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_item_β:
                                                                    jmp   proc_LBL__stk_push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_item_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_push_item_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_into_parent_α:
proc_LBL__stk_pop_into_parent_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α:                                             jmp   n141_statement_end_α
n140_statement_begin_β:                                             jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:                                               jmp   n142_statement_begin_α
#=======================================================================================================================
#                child          =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:                                             jmp   n143_var_α
n142_statement_begin_β:                                             jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n144_call_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd175:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd175]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx174_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n142_statement_begin_β
.Lx174_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n145_call_α
n144_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n142_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx177_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + list_reverse_alpha]; jmp   rax
.Lx177_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx177_240
                        add              rsp, 16
                        add              rsp, 32;                   jmp   n142_statement_begin_β
.Lx177_240:                                                         jmp   n146_assign_α
n145_call_β:                                                        jmp   n142_statement_begin_β
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax                      # child
                        mov              qword ptr [r9 + 136], rdx; jmp   n147_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   add              rsp, 48;                   jmp   n148_statement_begin_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:                                             jmp   n149_var_α
n148_statement_begin_β:                                             jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n150_call_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd185:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd185]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx184_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n148_statement_begin_β
.Lx184_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n151_assign_α
n150_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n148_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax                      # stk
                        mov              qword ptr [r9 + 552], rdx; jmp   n152_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   add              rsp, 32;                   jmp   n153_statement_begin_α
#=======================================================================================================================
#                head(stk)      =  list(child, head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α:                                             jmp   n154_var_α
n153_statement_begin_β:                                             jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n155_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx192_0]
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_field_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx192_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n153_statement_begin_β
.Lx192_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n156_var_α
n155_field_var_β:       add              rsp, 16
                        add              rsp, 16;                   jmp   n153_statement_begin_β
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "head"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]                      # child
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n157_var_α
n156_var_β:             add              rsp, 16;                   jmp   n155_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n158_call_α
n157_var_β:             add              rsp, 16;                   jmp   n156_var_β
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd196:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd196]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx195_240
                        add              rsp, 16;                   jmp   n157_var_β
.Lx195_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n159_call_α
n158_call_β:            add              rsp, 16;                   jmp   n157_var_β
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd198:            .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd198]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx197_240
                        add              rsp, 32;                   jmp   n157_var_β
.Lx197_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n160_assign_var_α
n159_call_β:            add              rsp, 32;                   jmp   n157_var_β
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]                      # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx199_240
                        add              rsp, 48;                   jmp   n157_var_β
.Lx199_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n161_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   add              rsp, 112;                  jmp   n162_statement_begin_α
#=======================================================================================================================
#                stk_pop_into_parent =  .dummy                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α:                                             jmp   n163_lit_string_α
n162_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n164_call_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd206:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd206]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx205_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n162_statement_begin_β
.Lx205_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n165_assign_α
n164_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n162_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # stk_pop_into_parent
                        mov              qword ptr [r9 + 120], rdx; jmp   n166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   add              rsp, 32;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_into_parent_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_into_parent_β:
                                                                    jmp   proc_LBL__stk_pop_into_parent_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_into_parent_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_into_parent_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_final_α:
proc_LBL__stk_pop_final_α_body:
#=======================================================================================================================
# stk_pop_final  $var           =  list_reverse(head(stk))
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α:                                             jmp   n211_var_α
n210_statement_begin_β:                                             jmp   n218_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # var
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n212_call_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd232:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd232]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx231_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n210_statement_begin_β
.Lx231_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n213_var_α
n212_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n210_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n214_call_α
n213_var_β:             add              rsp, 16
                        add              rsp, 32;                   jmp   n210_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd235:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd235]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx234_240
                        add              rsp, 16;                   jmp   n213_var_β
.Lx234_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n215_call_α
n214_call_β:            add              rsp, 16;                   jmp   n213_var_β
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx237_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + list_reverse_alpha]; jmp   rax
.Lx237_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx237_240
                        add              rsp, 32;                   jmp   n213_var_β
.Lx237_240:                                                         jmp   n216_assign_var_α
n215_call_β:                                                        jmp   n213_var_β
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "list_reverse"
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx238_240
                        add              rsp, 48;                   jmp   n213_var_β
.Lx238_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n217_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   add              rsp, 96;                   jmp   n218_statement_begin_α
#=======================================================================================================================
#                stk            =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:                                             jmp   n219_var_α
n218_statement_begin_β:                                             jmp   n223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]                      # stk
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n220_call_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd245:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd245]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx244_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n218_statement_begin_β
.Lx244_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n221_assign_α
n220_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n218_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax                      # stk
                        mov              qword ptr [r9 + 552], rdx; jmp   n222_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:   add              rsp, 32;                   jmp   n223_statement_begin_α
#=======================================================================================================================
#                stk_pop_final  =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α:                                             jmp   n224_lit_string_α
n223_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n225_call_α
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd253:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd253]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx252_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n223_statement_begin_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n226_assign_α
n225_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n223_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax                      # stk_pop_final
                        mov              qword ptr [r9 + 152], rdx; jmp   n227_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_end_α:   add              rsp, 32;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_final_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_final_β:
                                                                    jmp   proc_LBL__stk_pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_final_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stk_pop_final_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__init_list_α:
proc_LBL__init_list_α_body:
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α:                                             jmp   n258_var_α
n257_statement_begin_β:                                             jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n259_call_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd276:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd276]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx275_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n257_statement_begin_β
.Lx275_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n260_lit_string_α
n259_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n257_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n261_assign_var_α
n260_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                   jmp   n257_statement_begin_β
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx278_240
                        add              rsp, 16;                   jmp   n260_lit_string_β
.Lx278_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n262_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:   add              rsp, 64;                   jmp   n263_statement_begin_α
#=======================================================================================================================
#                stk            =
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α:                                             jmp   n264_lit_string_α
n263_statement_begin_β:                                             jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n265_assign_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax                      # stk
                        mov              qword ptr [r9 + 552], rdx; jmp   n266_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:   add              rsp, 16;                   jmp   n267_statement_begin_α
#=======================================================================================================================
#                init_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α:                                             jmp   n268_lit_string_α
n267_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n269_call_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd291:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd291]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx290_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n267_statement_begin_β
.Lx290_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n270_assign_α
n269_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n267_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # init_list
                        mov              qword ptr [r9 + 184], rdx; jmp   n271_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__init_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__init_list_β:
                                                                    jmp   proc_LBL__init_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__init_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__init_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Init_list_α:
proc_LBL__Init_list_α_body:
#=======================================================================================================================
# Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_begin_α:                                             jmp   n296_lit_string_α
n295_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n297_var_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n298_binop_α
n297_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n295_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n298_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n299_lit_string_α
n298_binop_β:           add              rsp, 16;                   jmp   n297_var_β
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n300_binop_α
n299_lit_string_β:      add              rsp, 16;                   jmp   n298_binop_β
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n301_call_α
n300_binop_β:           add              rsp, 16;                   jmp   n299_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd312:            .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd312]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx311_240
                        add              rsp, 16;                   jmp   n300_binop_β
.Lx311_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n302_assign_α
n301_call_β:            add              rsp, 16;                   jmp   n300_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax                      # Init_list
                        mov              qword ptr [r9 + 200], rdx; jmp   n303_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:   add              rsp, 96;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Init_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Init_list_β:
                                                                    jmp   proc_LBL__Init_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Init_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Init_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_list_α:
proc_LBL__push_list_α_body:
#=======================================================================================================================
# push_list      dummy          =  stk_push_frame(v)
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_begin_α:                                             jmp   n317_var_α
n316_statement_begin_β:                                             jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n318_call_α
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # var
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx330_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + stk_push_frame_alpha]; jmp   rax
.Lx330_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx330_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n316_statement_begin_β
.Lx330_240:                                                         jmp   n319_assign_α
n318_call_β:                                                        jmp   n316_statement_begin_β
.Lx330_0:               .quad            .Lx330_0_s
.Lx330_0_s:             .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # dummy
                        mov              qword ptr [r9 + 568], rdx; jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 32;                   jmp   n321_statement_begin_α
#=======================================================================================================================
#                push_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:                                             jmp   n322_lit_string_α
n321_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n323_call_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd338:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd338]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx337_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n321_statement_begin_β
.Lx337_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n324_assign_α
n323_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n321_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax                      # push_list
                        mov              qword ptr [r9 + 232], rdx; jmp   n325_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_list_β:
                                                                    jmp   proc_LBL__push_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_list_α:
proc_LBL__Push_list_α_body:
#=======================================================================================================================
# Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_begin_α:                                             jmp   n343_lit_string_α
n342_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n344_var_α
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n345_binop_α
n344_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n342_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n345_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n346_lit_string_α
n345_binop_β:           add              rsp, 16;                   jmp   n344_var_β
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n347_binop_α
n346_lit_string_β:      add              rsp, 16;                   jmp   n345_binop_β
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n347_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n348_call_α
n347_binop_β:           add              rsp, 16;                   jmp   n346_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd359:            .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd359]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx358_240
                        add              rsp, 16;                   jmp   n347_binop_β
.Lx358_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n349_assign_α
n348_call_β:            add              rsp, 16;                   jmp   n347_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n349_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax                      # Push_list
                        mov              qword ptr [r9 + 248], rdx; jmp   n350_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_end_α:   add              rsp, 96;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_list_β:
                                                                    jmp   proc_LBL__Push_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_item_α:
proc_LBL__push_item_α_body:
#=======================================================================================================================
# push_item      dummy          =  stk_push_item(v)
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_begin_α:                                             jmp   n364_var_α
n363_statement_begin_β:                                             jmp   n368_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n365_call_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # var
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx377_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + stk_push_item_alpha]; jmp   rax
.Lx377_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx377_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n363_statement_begin_β
.Lx377_240:                                                         jmp   n366_assign_α
n365_call_β:                                                        jmp   n363_statement_begin_β
.Lx377_0:               .quad            .Lx377_0_s
.Lx377_0_s:             .string          "stk_push_item"
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # dummy
                        mov              qword ptr [r9 + 568], rdx; jmp   n367_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_end_α:   add              rsp, 32;                   jmp   n368_statement_begin_α
#=======================================================================================================================
#                push_item      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n368_statement_begin_α:                                             jmp   n369_lit_string_α
n368_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n370_call_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd385:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd385]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx384_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n368_statement_begin_β
.Lx384_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n371_assign_α
n370_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n368_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax                      # push_item
                        mov              qword ptr [r9 + 264], rdx; jmp   n372_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_item_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_item_β:
                                                                    jmp   proc_LBL__push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_item_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__push_item_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_item_α:
proc_LBL__Push_item_α_body:
#=======================================================================================================================
# Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_begin_α:                                             jmp   n390_lit_string_α
n389_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n391_var_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n392_binop_α
n391_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n389_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n392_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n393_lit_string_α
n392_binop_β:           add              rsp, 16;                   jmp   n391_var_β
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n394_binop_α
n393_lit_string_β:      add              rsp, 16;                   jmp   n392_binop_β
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n394_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n395_call_α
n394_binop_β:           add              rsp, 16;                   jmp   n393_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n395_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd406:            .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd406]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx405_240
                        add              rsp, 16;                   jmp   n394_binop_β
.Lx405_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n396_assign_α
n395_call_β:            add              rsp, 16;                   jmp   n394_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax                      # Push_item
                        mov              qword ptr [r9 + 280], rdx; jmp   n397_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n397_statement_end_α:   add              rsp, 96;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_item_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_item_β:
                                                                    jmp   proc_LBL__Push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_item_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Push_item_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_list_α:
proc_LBL__pop_list_α_body:
#=======================================================================================================================
# pop_list       dummy          =  stk_pop_into_parent()
#-----------------------------------------------------------------------------------------------------------------------
n410_statement_begin_α:                                             jmp   n411_call_α
n410_statement_begin_β:                                             jmp   n414_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx422_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + stk_pop_into_parent_alpha]; jmp   rax
.Lx422_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx422_240
                        add              rsp, 16;                   jmp   n410_statement_begin_β
.Lx422_240:                                                         jmp   n412_assign_α
n411_call_β:                                                        jmp   n410_statement_begin_β
.Lx422_0:               .quad            .Lx422_0_s
.Lx422_0_s:             .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # dummy
                        mov              qword ptr [r9 + 568], rdx; jmp   n413_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_end_α:   add              rsp, 16;                   jmp   n414_statement_begin_α
#=======================================================================================================================
#                pop_list       =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_begin_α:                                             jmp   n415_lit_string_α
n414_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n416_call_α
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n416_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd430:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd430]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx429_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n414_statement_begin_β
.Lx429_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n417_assign_α
n416_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n414_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax                      # pop_list
                        mov              qword ptr [r9 + 296], rdx; jmp   n418_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_list_β:
                                                                    jmp   proc_LBL__pop_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_list_α:
proc_LBL__Pop_list_α_body:
#=======================================================================================================================
# Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α:                                             jmp   n435_var_α
n434_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]                      # epsilon
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n436_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n436_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax                      # PAT$0$V0
                        mov              qword ptr [r9 + 776], rdx; jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n438_call_α
n437_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n434_statement_begin_β
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd447:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd447]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx446_240
                        add              rsp, 16;                   jmp   n437_lit_string_β
.Lx446_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n439_assign_α
n438_call_β:            add              rsp, 16;                   jmp   n437_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax                      # Pop_list
                        mov              qword ptr [r9 + 312], rdx; jmp   n440_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_end_α:   add              rsp, 48;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_list_β:
                                                                    jmp   proc_LBL__Pop_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_final_α:
proc_LBL__pop_final_α_body:
#=======================================================================================================================
# pop_final      dummy          =  stk_pop_final(v)
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_begin_α:                                             jmp   n452_var_α
n451_statement_begin_β:                                             jmp   n456_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # v
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n453_call_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # var
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx465_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + stk_pop_final_alpha]; jmp   rax
.Lx465_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx465_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n451_statement_begin_β
.Lx465_240:                                                         jmp   n454_assign_α
n453_call_β:                                                        jmp   n451_statement_begin_β
.Lx465_0:               .quad            .Lx465_0_s
.Lx465_0_s:             .string          "stk_pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n454_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # dummy
                        mov              qword ptr [r9 + 568], rdx; jmp   n455_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_end_α:   add              rsp, 32;                   jmp   n456_statement_begin_α
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_begin_α:                                             jmp   n457_lit_string_α
n456_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n458_call_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n458_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd473:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd473]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx472_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n456_statement_begin_β
.Lx472_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n459_assign_α
n458_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n456_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax                      # pop_final
                        mov              qword ptr [r9 + 328], rdx; jmp   n460_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_final_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_final_β:
                                                                    jmp   proc_LBL__pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_final_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pop_final_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_final_α:
proc_LBL__Pop_final_α_body:
#=======================================================================================================================
# Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n477_statement_begin_α:                                             jmp   n478_lit_string_α
n477_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n479_var_α
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n479_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vs
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n480_binop_α
n479_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n477_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n480_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n481_lit_string_α
n480_binop_β:           add              rsp, 16;                   jmp   n479_var_β
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n482_binop_α
n481_lit_string_β:      add              rsp, 16;                   jmp   n480_binop_β
.Lx491_0:               .quad            .Lx491_0_s
.Lx491_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n482_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n483_call_α
n482_binop_β:           add              rsp, 16;                   jmp   n481_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n483_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd494:            .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd494]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx493_240
                        add              rsp, 16;                   jmp   n482_binop_β
.Lx493_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n484_assign_α
n483_call_β:            add              rsp, 16;                   jmp   n482_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax                      # Pop_final
                        mov              qword ptr [r9 + 344], rdx; jmp   n485_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_end_α:   add              rsp, 96;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_final_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_final_β:
                                                                    jmp   proc_LBL__Pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_final_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__Pop_final_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__node_repr_α:
proc_LBL__node_repr_α_body:
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α:                                             jmp   n499_var_α
n498_statement_begin_β:                                             jmp   n515_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n500_call_α
#-----------------------------------------------------------------------------------------------------------------------
n500_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd560:            .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd560]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx559_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n498_statement_begin_β
.Lx559_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n501_keyword_snobol4_α
n500_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n498_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n501_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx561_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n502_keyword_snobol4_α
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n502_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx562_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n503_call_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n503_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lrkfnzd564:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd564]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 48
                        cmp              eax, 104;                  jne   .Lx563_240
                        add              rsp, 16
                        add              rsp, 64;                   jmp   n498_statement_begin_β
.Lx563_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n504_lit_string_α
n503_call_β:            add              rsp, 16
                        add              rsp, 64;                   jmp   n498_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n505_call_α
n504_lit_string_β:      add              rsp, 16
                        add              rsp, 80;                   jmp   n498_statement_begin_β
.Lx565_0:               .quad            .Lx565_0_s
.Lx565_0_s:             .string          "STRING"
#-----------------------------------------------------------------------------------------------------------------------
n505_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd567:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd567]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx566_240
                        add              rsp, 16;                   jmp   n504_lit_string_β
.Lx566_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n506_statement_end_α
n505_call_β:            add              rsp, 16;                   jmp   n504_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_end_α:   add              rsp, 112;                  jmp   n507_statement_begin_α
#=======================================================================================================================
#                node_repr      =  "'" node "'"               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n507_statement_begin_α:                                             jmp   n508_lit_string_α
n507_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n509_var_α
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n510_binop_α
n509_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n507_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n510_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n511_lit_string_α
n510_binop_β:           add              rsp, 16;                   jmp   n509_var_β
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n512_binop_α
n511_lit_string_β:      add              rsp, 16;                   jmp   n510_binop_β
.Lx575_0:               .quad            .Lx575_0_s
.Lx575_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n512_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n513_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n513_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax                      # node_repr
                        mov              qword ptr [r9 + 360], rdx; jmp   n514_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n514_statement_end_α:   add              rsp, 80;                   jmp   RETURN
#=======================================================================================================================
# nr_list        r              =  '('
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_begin_α:                                             jmp   n516_lit_string_α
n515_statement_begin_β:                                             jmp   n519_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n517_assign_α
.Lx582_0:               .quad            .Lx582_0_s
.Lx582_0_s:             .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n517_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              qword ptr [r9 + 392], rdx; jmp   n518_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_end_α:   add              rsp, 16;                   jmp   n519_statement_begin_α
#=======================================================================================================================
#                sep            =
#-----------------------------------------------------------------------------------------------------------------------
n519_statement_begin_α:                                             jmp   n520_lit_string_α
n519_statement_begin_β:                                             jmp   n523_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n521_assign_α
.Lx588_0:               .quad            .Lx588_0_s
.Lx588_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax                      # sep
                        mov              qword ptr [r9 + 424], rdx; jmp   n522_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n522_statement_end_α:   add              rsp, 16;                   jmp   n523_statement_begin_α
#=======================================================================================================================
#                c              =  node
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_begin_α:                                             jmp   n524_var_α
n523_statement_begin_β:                                             jmp   n527_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n525_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n525_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n526_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n526_statement_end_α:   add              rsp, 16;                   jmp   n527_statement_begin_α
#=======================================================================================================================
# nr_lp          DIFFER(c)                                    :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_begin_α:                                             jmp   n528_var_α
n527_statement_begin_β:                                             jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n528_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n529_call_α
#-----------------------------------------------------------------------------------------------------------------------
n529_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd602:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd602]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx601_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n527_statement_begin_β
.Lx601_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n530_statement_end_α
n529_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n527_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n530_statement_end_α:   add              rsp, 32;                   jmp   n531_statement_begin_α
#=======================================================================================================================
#                r              =  r sep node_repr(head(c))
#-----------------------------------------------------------------------------------------------------------------------
n531_statement_begin_α:                                             jmp   n532_var_α
n531_statement_begin_β:                                             jmp   n541_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n533_var_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]                      # sep
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n534_binop_α
n533_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n531_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n534_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n535_var_α
n534_binop_β:           add              rsp, 16;                   jmp   n533_var_β
#-----------------------------------------------------------------------------------------------------------------------
n535_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n536_call_α
n535_var_β:             add              rsp, 16;                   jmp   n534_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n536_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd612:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd612]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx611_240
                        add              rsp, 16;                   jmp   n535_var_β
.Lx611_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n537_call_α
n536_call_β:            add              rsp, 16;                   jmp   n535_var_β
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx614_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + node_repr_alpha]; jmp   rax
.Lx614_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx614_240
                        add              rsp, 32;                   jmp   n535_var_β
.Lx614_240:                                                         jmp   n538_binop_α
n537_call_β:                                                        jmp   n535_var_β
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n538_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n539_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n539_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              qword ptr [r9 + 392], rdx; jmp   n540_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n540_statement_end_α:   add              rsp, 112;                  jmp   n541_statement_begin_α
#=======================================================================================================================
#                sep            =  ', '
#-----------------------------------------------------------------------------------------------------------------------
n541_statement_begin_α:                                             jmp   n542_lit_string_α
n541_statement_begin_β:                                             jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n543_assign_α
.Lx621_0:               .quad            .Lx621_0_s
.Lx621_0_s:             .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n543_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax                      # sep
                        mov              qword ptr [r9 + 424], rdx; jmp   n544_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_end_α:   add              rsp, 16;                   jmp   n545_statement_begin_α
#=======================================================================================================================
#                c              =  tail(c)                    :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n545_statement_begin_α:                                             jmp   n546_var_α
n545_statement_begin_β:                                             jmp   n527_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n546_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n547_call_α
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd629:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd629]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx628_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n545_statement_begin_β
.Lx628_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n548_assign_α
n547_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n545_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n548_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n549_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_end_α:   add              rsp, 32;                   jmp   n527_statement_begin_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_begin_α:                                             jmp   n551_var_α
n550_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n551_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n552_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n553_binop_α
n552_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n550_statement_begin_β
.Lx636_0:               .quad            .Lx636_0_s
.Lx636_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n553_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n554_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax                      # node_repr
                        mov              qword ptr [r9 + 360], rdx; jmp   n555_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_end_α:   add              rsp, 48;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__node_repr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__node_repr_β:
                                                                    jmp   proc_LBL__node_repr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__node_repr_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__node_repr_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_node_α:
proc_LBL__pp_node_α_body:
#=======================================================================================================================
# pp_node        r              =  node_repr(node)
#-----------------------------------------------------------------------------------------------------------------------
n641_statement_begin_α:                                             jmp   n642_var_α
n641_statement_begin_β:                                             jmp   n646_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n642_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n643_call_α
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # var
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx731_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + node_repr_alpha]; jmp   rax
.Lx731_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx731_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n641_statement_begin_β
.Lx731_240:                                                         jmp   n644_assign_α
n643_call_β:                                                        jmp   n641_statement_begin_β
.Lx731_0:               .quad            .Lx731_0_s
.Lx731_0_s:             .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n644_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              qword ptr [r9 + 392], rdx; jmp   n645_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n645_statement_end_α:   add              rsp, 32;                   jmp   n646_statement_begin_α
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
n646_statement_begin_α:                                             jmp   n647_lit_string_α
n646_statement_begin_β:                                             jmp   n652_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n648_var_α
.Lx737_0:               .quad            .Lx737_0_s
.Lx737_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n648_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n649_call_α
n648_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n646_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n649_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd740:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd740]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx739_240
                        add              rsp, 16;                   jmp   n648_var_β
.Lx739_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n650_assign_α
n649_call_β:            add              rsp, 16;                   jmp   n648_var_β
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax                      # pad
                        mov              qword ptr [r9 + 488], rdx; jmp   n651_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n651_statement_end_α:   add              rsp, 48;                   jmp   n652_statement_begin_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
n652_statement_begin_α:                                             jmp   n653_lit_integer_α
n652_statement_begin_β:                                             jmp   n670_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n654_var_α
.Lx746_0:               .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n654_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n655_var_α
n654_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n652_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n655_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n656_call_α
n655_var_β:             add              rsp, 16;                   jmp   n654_var_β
#-----------------------------------------------------------------------------------------------------------------------
n656_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd750:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd750]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx749_240
                        add              rsp, 16;                   jmp   n655_var_β
.Lx749_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n657_binop_α
n656_call_β:            add              rsp, 16;                   jmp   n655_var_β
#-----------------------------------------------------------------------------------------------------------------------
n657_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx751_240
                        add              rsp, 32;                   jmp   n655_var_β
.Lx751_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n658_coerce_numeric_α
n657_binop_β:           add              rsp, 32;                   jmp   n655_var_β
#-----------------------------------------------------------------------------------------------------------------------
n658_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]                      # lit_integer
                        cmp              eax, 5;                    je    .Lx753_1
                        cmp              eax, 3;                    jne   .Lx753_0
                        mov              eax, dword ptr [rsp + 16]                      # binop
                        cmp              eax, 3;                    jne   .Lx753_0
.Lx753_1:               mov              rax, qword ptr [rsp + 80]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 88]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax;  jmp   n659_coerce_numeric_α
.Lx753_0:               lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                                # binop
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n659_coerce_numeric_α
n658_coerce_numeric_β:  add              rsp, 16;                   jmp   n657_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n659_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # binop
                        cmp              eax, 5;                    je    .Lx755_1
                        cmp              eax, 3;                    jne   .Lx755_0
                        mov              eax, dword ptr [rsp + 96]                      # lit_integer
                        cmp              eax, 3;                    jne   .Lx755_0
.Lx755_1:               mov              rax, qword ptr [rsp + 32]                      # binop
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # binop
                        mov              qword ptr [rsp + 8], rax;  jmp   n660_cmp_test_α
.Lx755_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n660_cmp_test_α
n659_coerce_numeric_β:  add              rsp, 16;                   jmp   n658_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n660_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cmp_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  jg    .Lx757_240
                        add              rsp, 16;                   jmp   n659_coerce_numeric_β
.Lx757_240:                                                         jmp   n661_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n661_statement_end_α:   add              rsp, 128;                  jmp   n662_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n662_statement_begin_α:                                             jmp   n663_var_α
n662_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n663_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n664_var_α
#-----------------------------------------------------------------------------------------------------------------------
n664_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n665_binop_α
n664_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n662_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n665_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n666_var_α
n665_binop_β:           add              rsp, 16;                   jmp   n664_var_β
#-----------------------------------------------------------------------------------------------------------------------
n666_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n667_binop_α
n666_var_β:             add              rsp, 16;                   jmp   n665_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n667_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n668_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n668_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx767_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n669_statement_end_α
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n669_statement_end_α:   add              rsp, 80;                   jmp   RETURN
#=======================================================================================================================
# pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#-----------------------------------------------------------------------------------------------------------------------
n670_statement_begin_α:                                             jmp   n671_var_α
n670_statement_begin_β:                                             jmp   n683_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n671_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n672_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n673_binop_α
n672_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n670_statement_begin_β
.Lx773_0:               .quad            .Lx773_0_s
.Lx773_0_s:             .string          "( "
#-----------------------------------------------------------------------------------------------------------------------
n673_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n674_lit_string_α
n673_binop_β:           add              rsp, 16;                   jmp   n672_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n675_binop_α
n674_lit_string_β:      add              rsp, 16;                   jmp   n673_binop_β
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n675_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n676_var_α
n675_binop_β:           add              rsp, 16;                   jmp   n674_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n676_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n677_call_α
n676_var_β:             add              rsp, 16;                   jmp   n675_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n677_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd779:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd779]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx778_240
                        add              rsp, 16;                   jmp   n676_var_β
.Lx778_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n678_binop_α
n677_call_β:            add              rsp, 16;                   jmp   n676_var_β
#-----------------------------------------------------------------------------------------------------------------------
n678_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n679_lit_string_α
n678_binop_β:           add              rsp, 32;                   jmp   n676_var_β
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n680_binop_α
n679_lit_string_β:      add              rsp, 16;                   jmp   n678_binop_β
.Lx781_0:               .quad            .Lx781_0_s
.Lx781_0_s:             .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n680_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n681_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n681_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx783_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n682_statement_end_α
.Lx783_0:               .quad            .Lx783_0_s
.Lx783_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n682_statement_end_α:   add              rsp, 160;                  jmp   n683_statement_begin_α
#=======================================================================================================================
#                c              =  tail(node)
#-----------------------------------------------------------------------------------------------------------------------
n683_statement_begin_α:                                             jmp   n684_var_α
n683_statement_begin_β:                                             jmp   n688_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n684_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n685_call_α
#-----------------------------------------------------------------------------------------------------------------------
n685_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd790:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd790]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx789_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n683_statement_begin_β
.Lx789_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n686_assign_α
n685_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n683_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n686_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n687_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n687_statement_end_α:   add              rsp, 32;                   jmp   n688_statement_begin_α
#=======================================================================================================================
# pp_wch         DIFFER(c)                                    :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n688_statement_begin_α:                                             jmp   n689_var_α
n688_statement_begin_β:                                             jmp   n725_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n689_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n690_call_α
#-----------------------------------------------------------------------------------------------------------------------
n690_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd798:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd798]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx797_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n688_statement_begin_β
.Lx797_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n691_statement_end_α
n690_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n688_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n691_statement_end_α:   add              rsp, 32;                   jmp   n692_statement_begin_α
#=======================================================================================================================
#                nxt            =  tail(c)
#-----------------------------------------------------------------------------------------------------------------------
n692_statement_begin_α:                                             jmp   n693_var_α
n692_statement_begin_β:                                             jmp   n697_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n694_call_α
#-----------------------------------------------------------------------------------------------------------------------
n694_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd805:            .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd805]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx804_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n692_statement_begin_β
.Lx804_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n695_assign_α
n694_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n692_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n695_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # nxt
                        mov              qword ptr [r9 + 504], rdx; jmp   n696_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n696_statement_end_α:   add              rsp, 32;                   jmp   n697_statement_begin_α
#=======================================================================================================================
#                DIFFER(nxt)                                  :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n697_statement_begin_α:                                             jmp   n698_var_α
n697_statement_begin_β:                                             jmp   n714_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n699_call_α
#-----------------------------------------------------------------------------------------------------------------------
n699_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd813:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd813]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx812_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n697_statement_begin_β
.Lx812_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n700_statement_end_α
n699_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n697_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n700_statement_end_α:   add              rsp, 32;                   jmp   n701_statement_begin_α
#=======================================================================================================================
#                pp_node(head(c), indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n701_statement_begin_α:                                             jmp   n702_var_α
n701_statement_begin_β:                                             jmp   n710_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n702_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n703_call_α
#-----------------------------------------------------------------------------------------------------------------------
n703_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd820:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd820]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx819_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n701_statement_begin_β
.Lx819_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n704_var_α
n703_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n701_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n704_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n705_lit_integer_α
n704_var_β:             add              rsp, 16
                        add              rsp, 32;                   jmp   n701_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n706_binop_α
n705_lit_integer_β:     add              rsp, 16;                   jmp   n704_var_β
.Lx822_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n706_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx823_240
                        add              rsp, 16;                   jmp   n705_lit_integer_β
.Lx823_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n707_lit_string_α
n706_binop_β:           add              rsp, 16;                   jmp   n705_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n708_call_α
n707_lit_string_β:      add              rsp, 16;                   jmp   n706_binop_β
.Lx824_0:               .quad            .Lx824_0_s
.Lx824_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n708_call_α:            sub              rsp, 16
                        sub              rsp, 80
                        mov              rax, qword ptr [rsp + 160]                     # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 112]                     # binop
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]                      # lit_string
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        mov              eax, 3
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx826_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + pp_node_alpha]; jmp   rax
.Lx826_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx826_240
                        add              rsp, 16;                   jmp   n707_lit_string_β
.Lx826_240:                                                         jmp   n709_statement_end_α
n708_call_β:                                                        jmp   n707_lit_string_β
.Lx826_0:               .quad            .Lx826_0_s
.Lx826_0_s:             .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n709_statement_end_α:   add              rsp, 112;                  jmp   n710_statement_begin_α
#=======================================================================================================================
#                c              =  nxt                        :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n710_statement_begin_α:                                             jmp   n711_var_α
n710_statement_begin_β:                                             jmp   n688_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n712_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n712_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n713_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n713_statement_end_α:   add              rsp, 16;                   jmp   n688_statement_begin_α
#=======================================================================================================================
# pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n714_statement_begin_α:                                             jmp   n715_var_α
n714_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n715_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n716_call_α
#-----------------------------------------------------------------------------------------------------------------------
n716_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd839:            .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd839]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx838_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n714_statement_begin_β
.Lx838_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n717_var_α
n716_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n714_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n717_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n718_lit_integer_α
n717_var_β:             add              rsp, 16
                        add              rsp, 32;                   jmp   n714_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n719_binop_α
n718_lit_integer_β:     add              rsp, 16;                   jmp   n717_var_β
.Lx841_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n719_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx842_240
                        add              rsp, 16;                   jmp   n718_lit_integer_β
.Lx842_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n720_lit_string_α
n719_binop_β:           add              rsp, 16;                   jmp   n718_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n721_var_α
n720_lit_string_β:      add              rsp, 16;                   jmp   n719_binop_β
.Lx843_0:               .quad            .Lx843_0_s
.Lx843_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n721_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n722_binop_α
n721_var_β:             add              rsp, 16;                   jmp   n720_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n722_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n723_call_α
n722_binop_β:           add              rsp, 16;                   jmp   n721_var_β
#-----------------------------------------------------------------------------------------------------------------------
n723_call_α:            sub              rsp, 16
                        sub              rsp, 80
                        mov              rax, qword ptr [rsp + 192]                     # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 144]                     # binop
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        mov              eax, 3
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx847_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + pp_node_alpha]; jmp   rax
.Lx847_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx847_240
                        add              rsp, 16;                   jmp   n722_binop_β
.Lx847_240:                                                         jmp   n724_statement_end_α
n723_call_β:                                                        jmp   n722_binop_β
.Lx847_0:               .quad            .Lx847_0_s
.Lx847_0_s:             .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n724_statement_end_α:   add              rsp, 144;                  jmp   RETURN
#=======================================================================================================================
# pp_wdone                                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n725_statement_begin_α:                                             jmp   n726_statement_end_α
n725_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n726_statement_end_α:                                               jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_node_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_node_β:
                                                                    jmp   proc_LBL__pp_node_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_node_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_node_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_bank_α:
proc_LBL__pp_bank_α_body:
#=======================================================================================================================
# pp_bank        pp_node(bank, 0, '')
#-----------------------------------------------------------------------------------------------------------------------
n854_statement_begin_α:                                             jmp   n855_var_α
n854_statement_begin_β:                                             jmp   n860_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n855_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 688]                      # bank
                        mov              rdx, qword ptr [r9 + 696]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n856_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n856_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n857_lit_string_α
n856_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n854_statement_begin_β
.Lx868_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n857_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx869_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n858_call_α
n857_lit_string_β:      add              rsp, 16;                   jmp   n856_lit_integer_β
.Lx869_0:               .quad            .Lx869_0_s
.Lx869_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n858_call_α:            sub              rsp, 16
                        sub              rsp, 80
                        mov              rax, qword ptr [rsp + 128]                     # var
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 112]                     # lit_integer
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]                      # lit_string
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        mov              eax, 3
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx871_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + pp_node_alpha]; jmp   rax
.Lx871_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx871_240
                        add              rsp, 16;                   jmp   n857_lit_string_β
.Lx871_240:                                                         jmp   n859_statement_end_α
n858_call_β:                                                        jmp   n857_lit_string_β
.Lx871_0:               .quad            .Lx871_0_s
.Lx871_0_s:             .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n859_statement_end_α:   add              rsp, 64;                   jmp   n860_statement_begin_α
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n860_statement_begin_α:                                             jmp   n861_lit_string_α
n860_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n861_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx876_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n862_call_α
.Lx876_0:               .quad            .Lx876_0_s
.Lx876_0_s:             .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n862_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd878:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd878]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx877_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n860_statement_begin_β
.Lx877_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n863_assign_α
n862_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n860_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n863_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax                      # pp_bank
                        mov              qword ptr [r9 + 520], rdx; jmp   n864_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n864_statement_end_α:   add              rsp, 32;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_bank_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_bank_β:
                                                                    jmp   proc_LBL__pp_bank_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_bank_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__pp_bank_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_list_reverse_α
proc_list_reverse_α:
proc_list_reverse_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n882_save_restore_α:                                                jmp   n883_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n883_goto_deferred_α:   lea              rax, [rip + proc_LBL__list_reverse_α]; jmp   rax
                                                                    jmp   n884_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n884_save_restore_α:
list_reverse_alpha:     mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx890_2
                        mov              eax, 16
.Lx890_2:               sub              rsp, 96
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 32]                       # acc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              rax, qword ptr [r9 + 48]                       # cur
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              rax, qword ptr [r9 + 0]                        # list_reverse
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 48], r10
                        mov              qword ptr [rsp + 56], r11
                        mov              qword ptr [rsp + 64], rcx
                        cmp              rcx, 0;                    jbe   .Lx890_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 16]                       # lst
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx890_41
.Lx890_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx890_41:              lea              r10, [rip + list_reverse_gamma]
                        lea              r11, [rip + list_reverse_omega]
                        lea              rax, [rip + proc_LBL__list_reverse_α]; jmp   rax
list_reverse_gamma:     mov              rdi, qword ptr [r9 + 0]                        # list_reverse
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 64]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx890_75
                        mov              eax, 16
.Lx890_75:              lea              r8, [rsp + 80]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 48], rax                       # cur
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 56], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax                       # acc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                    jbe   .Lx890_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 16], rax                       # lst
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 24], rax;  jmp   .Lx890_110
.Lx890_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 24], rax
.Lx890_110:             mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              eax, 128
                        cmp              rcx, 1;                    jbe   .Lx890_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 112
.Lx890_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
list_reverse_omega:     mov              rcx, qword ptr [rsp + 64]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx890_145
                        mov              eax, 16
.Lx890_145:             lea              r8, [rsp + 80]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 0], rax                        # list_reverse
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 48], rax                       # cur
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 56], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax                       # acc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                    jbe   .Lx890_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 16], rax                       # lst
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 24], rax;  jmp   .Lx890_180
.Lx890_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 24], rax
.Lx890_180:             mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              eax, 128
                        cmp              rcx, 1;                    jbe   .Lx890_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 112
.Lx890_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_list_reverse_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_β:
                                                                    jmp   proc_list_reverse_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_list_reverse_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_frame_α
proc_stk_push_frame_α:
proc_stk_push_frame_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n891_save_restore_α:                                                jmp   n892_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n892_goto_deferred_α:   lea              rax, [rip + proc_LBL__stk_push_frame_α]; jmp   rax
                                                                    jmp   n893_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n893_save_restore_α:
stk_push_frame_alpha:   mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx899_2
                        mov              eax, 16
.Lx899_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 64]                       # stk_push_frame
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx899_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx899_41
.Lx899_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx899_41:              lea              r10, [rip + stk_push_frame_gamma]
                        lea              r11, [rip + stk_push_frame_omega]
                        lea              rax, [rip + proc_LBL__stk_push_frame_α]; jmp   rax
stk_push_frame_gamma:   mov              rdi, qword ptr [r9 + 64]                       # stk_push_frame
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx899_75
                        mov              eax, 16
.Lx899_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0;                    jbe   .Lx899_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx899_110
.Lx899_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx899_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx899_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx899_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
stk_push_frame_omega:   mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx899_145
                        mov              eax, 16
.Lx899_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax                       # stk_push_frame
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0;                    jbe   .Lx899_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx899_180
.Lx899_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx899_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx899_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx899_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_stk_push_frame_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_β:
                                                                    jmp   proc_stk_push_frame_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_frame_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_item_α
proc_stk_push_item_α:
proc_stk_push_item_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n900_save_restore_α:                                                jmp   n901_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n901_goto_deferred_α:   lea              rax, [rip + proc_LBL__stk_push_item_α]; jmp   rax
                                                                    jmp   n902_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n902_save_restore_α:
stk_push_item_alpha:    mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx908_2
                        mov              eax, 16
.Lx908_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 96]                       # stk_push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx908_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx908_41
.Lx908_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx908_41:              lea              r10, [rip + stk_push_item_gamma]
                        lea              r11, [rip + stk_push_item_omega]
                        lea              rax, [rip + proc_LBL__stk_push_item_α]; jmp   rax
stk_push_item_gamma:    mov              rdi, qword ptr [r9 + 96]                       # stk_push_item
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx908_75
                        mov              eax, 16
.Lx908_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0;                    jbe   .Lx908_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx908_110
.Lx908_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx908_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx908_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx908_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
stk_push_item_omega:    mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx908_145
                        mov              eax, 16
.Lx908_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax                       # stk_push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0;                    jbe   .Lx908_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx908_180
.Lx908_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx908_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx908_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx908_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_stk_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_β:
                                                                    jmp   proc_stk_push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_push_item_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
proc_stk_pop_into_parent_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n909_save_restore_α:                                                jmp   n910_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n910_goto_deferred_α:   lea              rax, [rip + proc_LBL__stk_pop_into_parent_α]; jmp   rax
                                                                    jmp   n911_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n911_save_restore_α:
stk_pop_into_parent_alpha: mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx917_2
                        mov              eax, 16
.Lx917_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 112]                      # stk_pop_into_parent
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx917_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 128]                      # child
                        mov              qword ptr [r9 + 128], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [r9 + 136], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx917_41
.Lx917_10:              mov              rax, qword ptr [r9 + 128]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
.Lx917_41:              lea              r10, [rip + stk_pop_into_parent_gamma]
                        lea              r11, [rip + stk_pop_into_parent_omega]
                        lea              rax, [rip + proc_LBL__stk_pop_into_parent_α]; jmp   rax
stk_pop_into_parent_gamma: mov              rdi, qword ptr [r9 + 112]                   # stk_pop_into_parent
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx917_75
                        mov              eax, 16
.Lx917_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0;                    jbe   .Lx917_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 128], rax                      # child
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 136], rax; jmp   .Lx917_110
.Lx917_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 136], rax
.Lx917_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx917_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx917_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
stk_pop_into_parent_omega: mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx917_145
                        mov              eax, 16
.Lx917_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax                      # stk_pop_into_parent
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0;                    jbe   .Lx917_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 128], rax                      # child
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 136], rax; jmp   .Lx917_180
.Lx917_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 136], rax
.Lx917_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx917_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx917_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_stk_pop_into_parent_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_β:
                                                                    jmp   proc_stk_pop_into_parent_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_into_parent_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_final_α
proc_stk_pop_final_α:
proc_stk_pop_final_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n918_save_restore_α:                                                jmp   n919_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n919_goto_deferred_α:   lea              rax, [rip + proc_LBL__stk_pop_final_α]; jmp   rax
                                                                    jmp   n920_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n920_save_restore_α:
stk_pop_final_alpha:    mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx926_2
                        mov              eax, 16
.Lx926_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 144]                      # stk_pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx926_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 160]                      # var
                        mov              qword ptr [r9 + 160], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [r9 + 168], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx926_41
.Lx926_10:              mov              rax, qword ptr [r9 + 160]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
.Lx926_41:              lea              r10, [rip + stk_pop_final_gamma]
                        lea              r11, [rip + stk_pop_final_omega]
                        lea              rax, [rip + proc_LBL__stk_pop_final_α]; jmp   rax
stk_pop_final_gamma:    mov              rdi, qword ptr [r9 + 144]                      # stk_pop_final
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx926_75
                        mov              eax, 16
.Lx926_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rcx, 0;                    jbe   .Lx926_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 160], rax                      # var
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 168], rax; jmp   .Lx926_110
.Lx926_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 160], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 168], rax
.Lx926_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx926_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx926_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
stk_pop_final_omega:    mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx926_145
                        mov              eax, 16
.Lx926_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax                      # stk_pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rcx, 0;                    jbe   .Lx926_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 160], rax                      # var
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 168], rax; jmp   .Lx926_180
.Lx926_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 160], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 168], rax
.Lx926_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx926_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx926_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_stk_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_β:
                                                                    jmp   proc_stk_pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_stk_pop_final_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_init_list_α
proc_init_list_α:
proc_init_list_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n927_save_restore_α:                                                jmp   n928_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n928_goto_deferred_α:   lea              rax, [rip + proc_LBL__init_list_α]; jmp   rax
                                                                    jmp   n929_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n929_save_restore_α:
init_list_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx935_2
                        mov              eax, 16
.Lx935_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 176]                      # init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 176], 0
                        mov              qword ptr [r9 + 184], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx935_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx935_41
.Lx935_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx935_41:              lea              r10, [rip + init_list_gamma]
                        lea              r11, [rip + init_list_omega]
                        lea              rax, [rip + proc_LBL__init_list_α]; jmp   rax
init_list_gamma:        mov              rdi, qword ptr [r9 + 176]                      # init_list
                        mov              rsi, qword ptr [r9 + 184]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx935_75
                        mov              eax, 16
.Lx935_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 176], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 184], rax
                        cmp              rcx, 0;                    jbe   .Lx935_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx935_110
.Lx935_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx935_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx935_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx935_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
init_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx935_145
                        mov              eax, 16
.Lx935_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 176], rax                      # init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 184], rax
                        cmp              rcx, 0;                    jbe   .Lx935_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx935_180
.Lx935_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx935_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx935_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx935_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_init_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_β:
                                                                    jmp   proc_init_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_init_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init_list_α
proc_Init_list_α:
proc_Init_list_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n936_save_restore_α:                                                jmp   n937_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n937_goto_deferred_α:   lea              rax, [rip + proc_LBL__Init_list_α]; jmp   rax
                                                                    jmp   n938_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n938_save_restore_α:
Init_list_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx944_2
                        mov              eax, 16
.Lx944_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 192]                      # Init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx944_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 208]                      # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx944_41
.Lx944_10:              mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx944_41:              lea              r10, [rip + Init_list_gamma]
                        lea              r11, [rip + Init_list_omega]
                        lea              rax, [rip + proc_LBL__Init_list_α]; jmp   rax
Init_list_gamma:        mov              rdi, qword ptr [r9 + 192]                      # Init_list
                        mov              rsi, qword ptr [r9 + 200]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx944_75
                        mov              eax, 16
.Lx944_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rcx, 0;                    jbe   .Lx944_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx944_110
.Lx944_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx944_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx944_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx944_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
Init_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx944_145
                        mov              eax, 16
.Lx944_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax                      # Init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rcx, 0;                    jbe   .Lx944_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx944_180
.Lx944_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx944_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx944_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx944_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_Init_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_β:
                                                                    jmp   proc_Init_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_Init_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_list_α
proc_push_list_α:
proc_push_list_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n945_save_restore_α:                                                jmp   n946_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n946_goto_deferred_α:   lea              rax, [rip + proc_LBL__push_list_α]; jmp   rax
                                                                    jmp   n947_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n947_save_restore_α:
push_list_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx953_2
                        mov              eax, 16
.Lx953_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 224]                      # push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 224], 0
                        mov              qword ptr [r9 + 232], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx953_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx953_41
.Lx953_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx953_41:              lea              r10, [rip + push_list_gamma]
                        lea              r11, [rip + push_list_omega]
                        lea              rax, [rip + proc_LBL__push_list_α]; jmp   rax
push_list_gamma:        mov              rdi, qword ptr [r9 + 224]                      # push_list
                        mov              rsi, qword ptr [r9 + 232]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx953_75
                        mov              eax, 16
.Lx953_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rcx, 0;                    jbe   .Lx953_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx953_110
.Lx953_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx953_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx953_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx953_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
push_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx953_145
                        mov              eax, 16
.Lx953_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax                      # push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rcx, 0;                    jbe   .Lx953_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx953_180
.Lx953_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx953_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx953_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx953_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_push_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_β:
                                                                    jmp   proc_push_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_push_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_list_α
proc_Push_list_α:
proc_Push_list_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n954_save_restore_α:                                                jmp   n955_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n955_goto_deferred_α:   lea              rax, [rip + proc_LBL__Push_list_α]; jmp   rax
                                                                    jmp   n956_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n956_save_restore_α:
Push_list_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx962_2
                        mov              eax, 16
.Lx962_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 240]                      # Push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx962_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 208]                      # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx962_41
.Lx962_10:              mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx962_41:              lea              r10, [rip + Push_list_gamma]
                        lea              r11, [rip + Push_list_omega]
                        lea              rax, [rip + proc_LBL__Push_list_α]; jmp   rax
Push_list_gamma:        mov              rdi, qword ptr [r9 + 240]                      # Push_list
                        mov              rsi, qword ptr [r9 + 248]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx962_75
                        mov              eax, 16
.Lx962_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 248], rax
                        cmp              rcx, 0;                    jbe   .Lx962_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx962_110
.Lx962_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx962_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx962_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx962_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
Push_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx962_145
                        mov              eax, 16
.Lx962_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 240], rax                      # Push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 248], rax
                        cmp              rcx, 0;                    jbe   .Lx962_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx962_180
.Lx962_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx962_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx962_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx962_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_Push_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_β:
                                                                    jmp   proc_Push_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_item_α
proc_push_item_α:
proc_push_item_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n963_save_restore_α:                                                jmp   n964_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n964_goto_deferred_α:   lea              rax, [rip + proc_LBL__push_item_α]; jmp   rax
                                                                    jmp   n965_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n965_save_restore_α:
push_item_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx971_2
                        mov              eax, 16
.Lx971_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 256]                      # push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 256], 0
                        mov              qword ptr [r9 + 264], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx971_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx971_41
.Lx971_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx971_41:              lea              r10, [rip + push_item_gamma]
                        lea              r11, [rip + push_item_omega]
                        lea              rax, [rip + proc_LBL__push_item_α]; jmp   rax
push_item_gamma:        mov              rdi, qword ptr [r9 + 256]                      # push_item
                        mov              rsi, qword ptr [r9 + 264]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx971_75
                        mov              eax, 16
.Lx971_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rcx, 0;                    jbe   .Lx971_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx971_110
.Lx971_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx971_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx971_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx971_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
push_item_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx971_145
                        mov              eax, 16
.Lx971_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax                      # push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rcx, 0;                    jbe   .Lx971_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx971_180
.Lx971_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx971_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx971_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx971_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_β:
                                                                    jmp   proc_push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_push_item_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_item_α
proc_Push_item_α:
proc_Push_item_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n972_save_restore_α:                                                jmp   n973_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n973_goto_deferred_α:   lea              rax, [rip + proc_LBL__Push_item_α]; jmp   rax
                                                                    jmp   n974_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n974_save_restore_α:
Push_item_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx980_2
                        mov              eax, 16
.Lx980_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 272]                      # Push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx980_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 208]                      # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx980_41
.Lx980_10:              mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx980_41:              lea              r10, [rip + Push_item_gamma]
                        lea              r11, [rip + Push_item_omega]
                        lea              rax, [rip + proc_LBL__Push_item_α]; jmp   rax
Push_item_gamma:        mov              rdi, qword ptr [r9 + 272]                      # Push_item
                        mov              rsi, qword ptr [r9 + 280]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx980_75
                        mov              eax, 16
.Lx980_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 280], rax
                        cmp              rcx, 0;                    jbe   .Lx980_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx980_110
.Lx980_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx980_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx980_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx980_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
Push_item_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx980_145
                        mov              eax, 16
.Lx980_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 272], rax                      # Push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 280], rax
                        cmp              rcx, 0;                    jbe   .Lx980_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx980_180
.Lx980_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx980_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx980_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx980_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_Push_item_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_β:
                                                                    jmp   proc_Push_item_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_Push_item_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_list_α
proc_pop_list_α:
proc_pop_list_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n981_save_restore_α:                                                jmp   n982_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n982_goto_deferred_α:   lea              rax, [rip + proc_LBL__pop_list_α]; jmp   rax
                                                                    jmp   n983_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n983_save_restore_α:
pop_list_alpha:         mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx989_2
                        mov              eax, 0
.Lx989_2:               sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 288]                      # pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 288], 0
                        mov              qword ptr [r9 + 296], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + pop_list_gamma]
                        lea              r11, [rip + pop_list_omega]
                        lea              rax, [rip + proc_LBL__pop_list_α]; jmp   rax
pop_list_gamma:         mov              rdi, qword ptr [r9 + 288]
                        mov              rsi, qword ptr [r9 + 296]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx989_75
                        mov              eax, 0
.Lx989_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx989_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx989_3:               mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
pop_list_omega:         mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx989_145
                        mov              eax, 0
.Lx989_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx989_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx989_4:               mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_pop_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_β:
                                                                    jmp   proc_pop_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_list_α
proc_Pop_list_α:
proc_Pop_list_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n990_save_restore_α:                                                jmp   n991_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n991_goto_deferred_α:   lea              rax, [rip + proc_LBL__Pop_list_α]; jmp   rax
                                                                    jmp   n992_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n992_save_restore_α:
Pop_list_alpha:         mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx998_2
                        mov              eax, 0
.Lx998_2:               sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 304]                      # Pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + Pop_list_gamma]
                        lea              r11, [rip + Pop_list_omega]
                        lea              rax, [rip + proc_LBL__Pop_list_α]; jmp   rax
Pop_list_gamma:         mov              rdi, qword ptr [r9 + 304]
                        mov              rsi, qword ptr [r9 + 312]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx998_75
                        mov              eax, 0
.Lx998_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx998_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx998_3:               mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
Pop_list_omega:         mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx998_145
                        mov              eax, 0
.Lx998_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx998_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx998_4:               mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_Pop_list_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_β:
                                                                    jmp   proc_Pop_list_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_list_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_final_α
proc_pop_final_α:
proc_pop_final_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n999_save_restore_α:                                                jmp   n1000_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_goto_deferred_α:  lea              rax, [rip + proc_LBL__pop_final_α]; jmp   rax
                                                                    jmp   n1001_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1001_save_restore_α:
pop_final_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1007_2
                        mov              eax, 16
.Lx1007_2:              sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 320]                      # pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 320], 0
                        mov              qword ptr [r9 + 328], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx1007_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # v
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx1007_41
.Lx1007_10:             mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx1007_41:             lea              r10, [rip + pop_final_gamma]
                        lea              r11, [rip + pop_final_omega]
                        lea              rax, [rip + proc_LBL__pop_final_α]; jmp   rax
pop_final_gamma:        mov              rdi, qword ptr [r9 + 320]                      # pop_final
                        mov              rsi, qword ptr [r9 + 328]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1007_75
                        mov              eax, 16
.Lx1007_75:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rcx, 0;                    jbe   .Lx1007_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx1007_110
.Lx1007_80:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx1007_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx1007_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx1007_3:              mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
pop_final_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1007_145
                        mov              eax, 16
.Lx1007_145:            lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax                      # pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rcx, 0;                    jbe   .Lx1007_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # v
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx1007_180
.Lx1007_150:            mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx1007_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx1007_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx1007_4:              mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_β:
                                                                    jmp   proc_pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_pop_final_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_final_α
proc_Pop_final_α:
proc_Pop_final_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1008_save_restore_α:                                               jmp   n1009_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1009_goto_deferred_α:  lea              rax, [rip + proc_LBL__Pop_final_α]; jmp   rax
                                                                    jmp   n1010_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_save_restore_α:
Pop_final_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1016_2
                        mov              eax, 16
.Lx1016_2:              sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 336]                      # Pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx1016_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 208]                      # vs
                        mov              qword ptr [r9 + 208], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [r9 + 216], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx1016_41
.Lx1016_10:             mov              rax, qword ptr [r9 + 208]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
.Lx1016_41:             lea              r10, [rip + Pop_final_gamma]
                        lea              r11, [rip + Pop_final_omega]
                        lea              rax, [rip + proc_LBL__Pop_final_α]; jmp   rax
Pop_final_gamma:        mov              rdi, qword ptr [r9 + 336]                      # Pop_final
                        mov              rsi, qword ptr [r9 + 344]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1016_75
                        mov              eax, 16
.Lx1016_75:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rcx, 0;                    jbe   .Lx1016_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx1016_110
.Lx1016_80:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx1016_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx1016_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx1016_3:              mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
Pop_final_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1016_145
                        mov              eax, 16
.Lx1016_145:            lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax                      # Pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rcx, 0;                    jbe   .Lx1016_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 208], rax                      # vs
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 216], rax; jmp   .Lx1016_180
.Lx1016_150:            mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 216], rax
.Lx1016_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx1016_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx1016_4:              mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_Pop_final_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_β:
                                                                    jmp   proc_Pop_final_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_Pop_final_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_node_repr_α
proc_node_repr_α:
proc_node_repr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1017_save_restore_α:                                               jmp   n1018_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_goto_deferred_α:  lea              rax, [rip + proc_LBL__node_repr_α]; jmp   rax
                                                                    jmp   n1019_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1019_save_restore_α:
node_repr_alpha:        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1025_2
                        mov              eax, 16
.Lx1025_2:              sub              rsp, 112
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              rax, qword ptr [r9 + 416]                      # sep
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 416], 0
                        mov              qword ptr [r9 + 424], 0
                        mov              rax, qword ptr [r9 + 352]                      # node_repr
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
                        mov              qword ptr [rsp + 64], r10
                        mov              qword ptr [rsp + 72], r11
                        mov              qword ptr [rsp + 80], rcx
                        cmp              rcx, 0;                    jbe   .Lx1025_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 368]                      # node
                        mov              qword ptr [r9 + 368], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [r9 + 376], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx1025_41
.Lx1025_10:             mov              rax, qword ptr [r9 + 368]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
.Lx1025_41:             lea              r10, [rip + node_repr_gamma]
                        lea              r11, [rip + node_repr_omega]
                        lea              rax, [rip + proc_LBL__node_repr_α]; jmp   rax
node_repr_gamma:        mov              rdi, qword ptr [r9 + 352]                      # node_repr
                        mov              rsi, qword ptr [r9 + 360]
                        mov              rcx, qword ptr [rsp + 80]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1025_75
                        mov              eax, 16
.Lx1025_75:             lea              r8, [rsp + 96]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 416], rax                      # sep
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rcx, 0;                    jbe   .Lx1025_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 368], rax                      # node
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 376], rax; jmp   .Lx1025_110
.Lx1025_80:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 376], rax
.Lx1025_110:            mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              eax, 144
                        cmp              rcx, 1;                    jbe   .Lx1025_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 128
.Lx1025_3:              mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
node_repr_omega:        mov              rcx, qword ptr [rsp + 80]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1025_145
                        mov              eax, 16
.Lx1025_145:            lea              r8, [rsp + 96]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 352], rax                      # node_repr
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 360], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 416], rax                      # sep
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rcx, 0;                    jbe   .Lx1025_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 368], rax                      # node
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 376], rax; jmp   .Lx1025_180
.Lx1025_150:            mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 376], rax
.Lx1025_180:            mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              eax, 144
                        cmp              rcx, 1;                    jbe   .Lx1025_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 128
.Lx1025_4:              mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_node_repr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_β:
                                                                    jmp   proc_node_repr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_node_repr_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_node_α
proc_pp_node_α:
proc_pp_node_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1026_save_restore_α:                                               jmp   n1027_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1027_goto_deferred_α:  lea              rax, [rip + proc_LBL__pp_node_α]; jmp   rax
                                                                    jmp   n1028_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1028_save_restore_α:
pp_node_alpha:          mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 48
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 3;                    jbe   .Lx1034_2
                        mov              eax, 48
.Lx1034_2:              sub              rsp, 160
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              rax, qword ptr [r9 + 480]                      # pad
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 480], 0
                        mov              qword ptr [r9 + 488], 0
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              rax, qword ptr [r9 + 496]                      # nxt
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 496], 0
                        mov              qword ptr [r9 + 504], 0
                        mov              rax, qword ptr [r9 + 432]                      # pp_node
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 432], 0
                        mov              qword ptr [r9 + 440], 0
                        mov              qword ptr [rsp + 80], r10
                        mov              qword ptr [rsp + 88], r11
                        mov              qword ptr [rsp + 96], rcx
                        cmp              rcx, 0;                    jbe   .Lx1034_10
                        mov              rax, qword ptr [r8 + 80]
                        mov              rdx, qword ptr [r9 + 368]                      # node
                        mov              qword ptr [r9 + 368], rax
                        mov              qword ptr [r8 + 80], rdx
                        mov              rax, qword ptr [r8 + 88]
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [r9 + 376], rax
                        mov              qword ptr [r8 + 88], rdx;  jmp   .Lx1034_41
.Lx1034_10:             mov              rax, qword ptr [r9 + 368]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
.Lx1034_41:             cmp              rcx, 1;                    jbe   .Lx1034_11
                        mov              rax, qword ptr [r8 + 96]
                        mov              rdx, qword ptr [r9 + 448]                      # indent
                        mov              qword ptr [r9 + 448], rax
                        mov              qword ptr [r8 + 96], rdx
                        mov              rax, qword ptr [r8 + 104]
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [r9 + 456], rax
                        mov              qword ptr [r8 + 104], rdx; jmp   .Lx1034_42
.Lx1034_11:             mov              rax, qword ptr [r9 + 448]
                        mov              qword ptr [r8 + 16], rax
                        mov              rax, qword ptr [r9 + 456]
                        mov              qword ptr [r8 + 24], rax
                        mov              qword ptr [r9 + 448], 0
                        mov              qword ptr [r9 + 456], 0
.Lx1034_42:             cmp              rcx, 2;                    jbe   .Lx1034_12
                        mov              rax, qword ptr [r8 + 112]
                        mov              rdx, qword ptr [r9 + 464]                      # suffix
                        mov              qword ptr [r9 + 464], rax
                        mov              qword ptr [r8 + 112], rdx
                        mov              rax, qword ptr [r8 + 120]
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [r9 + 472], rax
                        mov              qword ptr [r8 + 120], rdx; jmp   .Lx1034_43
.Lx1034_12:             mov              rax, qword ptr [r9 + 464]
                        mov              qword ptr [r8 + 32], rax
                        mov              rax, qword ptr [r9 + 472]
                        mov              qword ptr [r8 + 40], rax
                        mov              qword ptr [r9 + 464], 0
                        mov              qword ptr [r9 + 472], 0
.Lx1034_43:             lea              r10, [rip + pp_node_gamma]
                        lea              r11, [rip + pp_node_omega]
                        lea              rax, [rip + proc_LBL__pp_node_α]; jmp   rax
pp_node_gamma:          mov              rdi, qword ptr [r9 + 432]                      # pp_node
                        mov              rsi, qword ptr [r9 + 440]
                        mov              rcx, qword ptr [rsp + 96]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 3;                    jbe   .Lx1034_75
                        mov              eax, 48
.Lx1034_75:             lea              r8, [rsp + 112]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 432], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 440], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 496], rax                      # nxt
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 504], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 480], rax                      # pad
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rcx, 0;                    jbe   .Lx1034_80
                        mov              rax, qword ptr [r8 + 80]
                        mov              qword ptr [r9 + 368], rax                      # node
                        mov              rax, qword ptr [r8 + 88]
                        mov              qword ptr [r9 + 376], rax; jmp   .Lx1034_110
.Lx1034_80:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 376], rax
.Lx1034_110:            cmp              rcx, 1;                    jbe   .Lx1034_81
                        mov              rax, qword ptr [r8 + 96]
                        mov              qword ptr [r9 + 448], rax                      # indent
                        mov              rax, qword ptr [r8 + 104]
                        mov              qword ptr [r9 + 456], rax; jmp   .Lx1034_111
.Lx1034_81:             mov              rax, qword ptr [r8 + 16]
                        mov              qword ptr [r9 + 448], rax
                        mov              rax, qword ptr [r8 + 24]
                        mov              qword ptr [r9 + 456], rax
.Lx1034_111:            cmp              rcx, 2;                    jbe   .Lx1034_82
                        mov              rax, qword ptr [r8 + 112]
                        mov              qword ptr [r9 + 464], rax                      # suffix
                        mov              rax, qword ptr [r8 + 120]
                        mov              qword ptr [r9 + 472], rax; jmp   .Lx1034_112
.Lx1034_82:             mov              rax, qword ptr [r8 + 32]
                        mov              qword ptr [r9 + 464], rax
                        mov              rax, qword ptr [r8 + 40]
                        mov              qword ptr [r9 + 472], rax
.Lx1034_112:            mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              eax, 192
                        cmp              rcx, 3;                    jbe   .Lx1034_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 144
.Lx1034_3:              mov              rcx, qword ptr [r8 + 64]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
pp_node_omega:          mov              rcx, qword ptr [rsp + 96]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 3;                    jbe   .Lx1034_145
                        mov              eax, 48
.Lx1034_145:            lea              r8, [rsp + 112]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 432], rax                      # pp_node
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 440], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 496], rax                      # nxt
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 504], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 480], rax                      # pad
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rcx, 0;                    jbe   .Lx1034_150
                        mov              rax, qword ptr [r8 + 80]
                        mov              qword ptr [r9 + 368], rax                      # node
                        mov              rax, qword ptr [r8 + 88]
                        mov              qword ptr [r9 + 376], rax; jmp   .Lx1034_180
.Lx1034_150:            mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 376], rax
.Lx1034_180:            cmp              rcx, 1;                    jbe   .Lx1034_151
                        mov              rax, qword ptr [r8 + 96]
                        mov              qword ptr [r9 + 448], rax                      # indent
                        mov              rax, qword ptr [r8 + 104]
                        mov              qword ptr [r9 + 456], rax; jmp   .Lx1034_181
.Lx1034_151:            mov              rax, qword ptr [r8 + 16]
                        mov              qword ptr [r9 + 448], rax
                        mov              rax, qword ptr [r8 + 24]
                        mov              qword ptr [r9 + 456], rax
.Lx1034_181:            cmp              rcx, 2;                    jbe   .Lx1034_152
                        mov              rax, qword ptr [r8 + 112]
                        mov              qword ptr [r9 + 464], rax                      # suffix
                        mov              rax, qword ptr [r8 + 120]
                        mov              qword ptr [r9 + 472], rax; jmp   .Lx1034_182
.Lx1034_152:            mov              rax, qword ptr [r8 + 32]
                        mov              qword ptr [r9 + 464], rax
                        mov              rax, qword ptr [r8 + 40]
                        mov              qword ptr [r9 + 472], rax
.Lx1034_182:            mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              eax, 192
                        cmp              rcx, 3;                    jbe   .Lx1034_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 144
.Lx1034_4:              mov              rcx, qword ptr [r8 + 72]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_pp_node_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_β:
                                                                    jmp   proc_pp_node_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_node_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_bank_α
proc_pp_bank_α:
proc_pp_bank_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1035_save_restore_α:                                               jmp   n1036_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_goto_deferred_α:  lea              rax, [rip + proc_LBL__pp_bank_α]; jmp   rax
                                                                    jmp   n1037_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_save_restore_α:
pp_bank_alpha:          mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1043_2
                        mov              eax, 16
.Lx1043_2:              sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 512]                      # pp_bank
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 520]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 512], 0
                        mov              qword ptr [r9 + 520], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx1043_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 48]                       # cur
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx1043_41
.Lx1043_10:             mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx1043_41:             lea              r10, [rip + pp_bank_gamma]
                        lea              r11, [rip + pp_bank_omega]
                        lea              rax, [rip + proc_LBL__pp_bank_α]; jmp   rax
pp_bank_gamma:          mov              rdi, qword ptr [r9 + 512]                      # pp_bank
                        mov              rsi, qword ptr [r9 + 520]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1043_75
                        mov              eax, 16
.Lx1043_75:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 512], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 520], rax
                        cmp              rcx, 0;                    jbe   .Lx1043_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # cur
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax;  jmp   .Lx1043_110
.Lx1043_80:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx1043_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx1043_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx1043_3:              mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
pp_bank_omega:          mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx1043_145
                        mov              eax, 16
.Lx1043_145:            lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 512], rax                      # pp_bank
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 520], rax
                        cmp              rcx, 0;                    jbe   .Lx1043_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # cur
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax;  jmp   .Lx1043_180
.Lx1043_150:            mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx1043_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx1043_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx1043_4:              mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_pp_bank_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_β:
                                                                    jmp   proc_pp_bank_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_pp_bank_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1044_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d; jmp   n1045_match_defer_α
n1044_match_assign_save_β: add              rsp, 16;                jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1045_match_defer_α:    sub              rsp, 16
                        mov              rax, qword ptr [r9 + 768]                      # PAT$0$V0
                        mov              rdx, qword ptr [r9 + 776]
                        cmp              eax, 8;                    jne   .Lx1049_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx1049_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1049_10
.Lx1049_9:              xor              eax, eax
.Lx1049_10:             test             rax, rax;                  jz    .Lx1049_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1049_4]
                        lea              r11, [rip + .Lx1049_5];    jmp   rax
.Lx1049_4:                                                          jmp   n1046_match_assign_cond_α
.Lx1049_5:              add              rsp, 16;                   jmp   n1044_match_assign_save_β
.Lx1049_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1049_2:              test             rax, rax;                  je    .Lx1049_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1049_7]
                        lea              rdx, [rip + .Lx1049_8];    jmp   rax
.Lx1049_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1049_2
.Lx1049_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1049_2
.Lx1049_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  jns   .Lx1049_240
                        add              rsp, 16;                   jmp   n1044_match_assign_save_β
.Lx1049_240:            mov              r14d, eax
                        lea              rax, [rip + .Lx1049_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1046_match_assign_cond_α
.Lx1049_6:              add              rsp, 16
                        add              rsp, 16;                   jmp   n1044_match_assign_save_β
n1045_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1046_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   proc_PAT$0_γ
n1046_match_assign_cond_β: sub              r12, 24;                jmp   n1045_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                    jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
proc_PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1052_match_span_α:     sub              rsp, 16
                        movsxd           rcx, r14d
.Lx1054_0:              cmp              ecx, r15d;                 jge   .Lx1054_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                   je    .Lx1054_10
                        cmp              esi, 10;                   je    .Lx1054_10
                                                                    jmp   .Lx1054_1
.Lx1054_10:             add              ecx, 1;                    jmp   .Lx1054_0
.Lx1054_1:              cmp              ecx, r14d;                 jg    .Lx1054_240
                        add              rsp, 16;                   jmp   proc_PAT$1_ω
.Lx1054_240:            mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                 jmp   proc_PAT$1_γ
n1052_match_span_β:     mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                   jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                    jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
proc_PAT$2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1055_match_notany_α:   mov              eax, r14d
                        cmp              eax, r15d;                 jge   proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;     jne   proc_PAT$2_ω
                        add              r14d, 1;                   jmp   n1056_match_break_α
n1055_match_notany_β:   sub              r14d, 1;                   jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1056_match_break_α:    sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx1059_0:              cmp              ecx, r15d;                 jl    .Lx1059_240
                        add              rsp, 16;                   jmp   n1055_match_notany_β
.Lx1059_240:            movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;     jnz   .Lx1059_1
                        add              ecx, 1;                    jmp   .Lx1059_0
.Lx1059_1:              mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                 jmp   proc_PAT$2_γ
n1056_match_break_β:    mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                   jmp   n1055_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                    jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
proc_PAT$3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1060_match_lit_α:      mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                   jne   proc_PAT$3_ω
                        add              r14d, 1;                   jmp   n1061_match_assign_save_α
n1060_match_lit_β:      sub              r14d, 1;                   jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1061_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d; jmp   n1062_match_defer_α
n1061_match_assign_save_β: add              rsp, 16;                jmp   n1060_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n1062_match_defer_α:    sub              rsp, 16
                        mov              rax, qword ptr [r9 + 784]                      # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 792]
                        cmp              eax, 8;                    jne   .Lx1086_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx1086_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1086_10
.Lx1086_9:              xor              eax, eax
.Lx1086_10:             test             rax, rax;                  jz    .Lx1086_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1086_4]
                        lea              r11, [rip + .Lx1086_5];    jmp   rax
.Lx1086_4:                                                          jmp   n1063_match_assign_cond_α
.Lx1086_5:              add              rsp, 16;                   jmp   n1061_match_assign_save_β
.Lx1086_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1086_2:              test             rax, rax;                  je    .Lx1086_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1086_7]
                        lea              rdx, [rip + .Lx1086_8];    jmp   rax
.Lx1086_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1086_2
.Lx1086_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1086_2
.Lx1086_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  jns   .Lx1086_240
                        add              rsp, 16;                   jmp   n1061_match_assign_save_β
.Lx1086_240:            mov              r14d, eax
                        lea              rax, [rip + .Lx1086_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1063_match_assign_cond_α
.Lx1086_6:              add              rsp, 16
                        add              rsp, 16;                   jmp   n1061_match_assign_save_β
n1062_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1063_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n1064_lit_string_α
n1063_match_assign_cond_β: sub              r12, 24;                jmp   n1062_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n1064_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1065_call_α
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n1065_call_α:           sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # lit_string
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1091_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Push_list_alpha]; jmp   rax
.Lx1091_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1091_240
                        add              rsp, 16;                   jmp   n1063_match_assign_cond_β
.Lx1091_240:                                                        jmp   n1066_match_value_α
n1065_call_β:                                                       jmp   n1063_match_assign_cond_β
.Lx1091_0:              .quad            .Lx1091_0_s
.Lx1091_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n1066_match_value_α:    lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1092_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1092_4]
                        lea              rdx, [rip + .Lx1092_5];    jmp   rax
.Lx1092_4:                                                          jmp   n1067_match_arbno_α
.Lx1092_5:                                                          jmp   n1063_match_assign_cond_β
.Lx1092_0:              lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1063_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1092_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1067_match_arbno_α
.Lx1092_6:              add              rsp, 16;                   jmp   n1063_match_assign_cond_β
n1066_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1067_match_arbno_α:    lea              rdi, [rip + .S5]
                        call             rt_bomb@PLT
                        ud2
n1067_match_arbno_β:    lea              rdi, [rip + .S4]
                        call             rt_bomb@PLT
                        ud2
n1067_match_arbno_as:
n1067_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n1068_call_α:           sub              rsp, 16
                        sub              rsp, 32
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1096_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Pop_list_alpha]; jmp   rax
.Lx1096_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1096_240
                        add              rsp, 16;                   jmp   n1067_match_arbno_β
.Lx1096_240:                                                        jmp   n1069_match_value_α
n1068_call_β:                                                       jmp   n1067_match_arbno_β
.Lx1096_0:              .quad            .Lx1096_0_s
.Lx1096_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n1069_match_value_α:    lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1097_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1097_4]
                        lea              rdx, [rip + .Lx1097_5];    jmp   rax
.Lx1097_4:                                                          jmp   n1070_match_lit_α
.Lx1097_5:                                                          jmp   n1067_match_arbno_β
.Lx1097_0:              lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1067_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1097_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1070_match_lit_α
.Lx1097_6:              add              rsp, 16;                   jmp   n1067_match_arbno_β
n1069_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1070_match_lit_α:      mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n1069_match_value_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                   jne   n1069_match_value_β
                        add              r14d, 1;                   jmp   proc_PAT$3_γ
n1070_match_lit_β:      sub              r14d, 1;                   jmp   n1069_match_value_β
#-----------------------------------------------------------------------------------------------------------------------
n1071_match_defer_α:    mov              rax, qword ptr [r9 + 816]                      # PAT$3$V2
                        mov              rdx, qword ptr [r9 + 824]
                        cmp              eax, 8;                    jne   .Lx1100_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx1100_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1100_10
.Lx1100_9:              xor              eax, eax
.Lx1100_10:             test             rax, rax;                  jz    .Lx1100_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1100_4]
                        lea              r11, [rip + .Lx1100_5];    jmp   rax
.Lx1100_4:                                                          jmp   n1072_match_fence1_α
.Lx1100_5:                                                          jmp   n1067_match_arbno_af
.Lx1100_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1100_2:              test             rax, rax;                  je    .Lx1100_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1100_7]
                        lea              rdx, [rip + .Lx1100_8];    jmp   rax
.Lx1100_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1100_2
.Lx1100_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1100_2
.Lx1100_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1067_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1100_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1072_match_fence1_α
.Lx1100_6:              add              rsp, 16;                   jmp   n1067_match_arbno_af
n1071_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1072_match_fence1_α:   mov              qword ptr [rsp + 240], rsp; jmp   n1073_match_alternate_α
n1072_match_fence1_as:  mov              rsp, qword ptr [rsp + 240]; jmp   n1067_match_arbno_as
n1072_match_fence1_af:
n1072_match_fence1_β:   mov              rsp, qword ptr [rsp + 240]; jmp   n1067_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n1073_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx1104_21]
                        mov              qword ptr [rsp + 16], rax; jmp   n1081_match_defer_α
.Lx1104_21:             lea              rax, [rip + .Lx1104_19]
                        mov              qword ptr [rsp + 16], rax; jmp   n1075_match_assign_save_α
n1073_match_alternate_s0: lea              rax, [rip + .Lx1104_40]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1073_match_alternate_as
n1073_match_alternate_s1: lea              rax, [rip + .Lx1104_41]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1073_match_alternate_as
.Lx1104_40:                                                         jmp   n1081_match_defer_β
.Lx1104_41:                                                         jmp   n1074_goto_β
n1073_match_alternate_as:                                           jmp   n1072_match_fence1_as
n1073_match_alternate_β: mov              rax, qword ptr [rsp + 8]; jmp   rax
n1073_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]; jmp   rax
.Lx1104_19:             add              rsp, 32;                   jmp   n1072_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n1074_goto_α:                                                       jmp   n1073_match_alternate_af
n1074_goto_β:                                                       jmp   n1073_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n1075_match_assign_save_α: lea              rdi, [rsp + 336]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1076_match_defer_α
n1075_match_assign_save_β: lea              rdi, [rsp + 336]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1073_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n1076_match_defer_α:    mov              rax, qword ptr [r9 + 800]                      # PAT$3$V1
                        mov              rdx, qword ptr [r9 + 808]
                        cmp              eax, 8;                    jne   .Lx1108_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx1108_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1108_10
.Lx1108_9:              xor              eax, eax
.Lx1108_10:             test             rax, rax;                  jz    .Lx1108_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1108_4]
                        lea              r11, [rip + .Lx1108_5];    jmp   rax
.Lx1108_4:                                                          jmp   n1077_match_assign_cond_α
.Lx1108_5:                                                          jmp   n1075_match_assign_save_β
.Lx1108_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1108_2:              test             rax, rax;                  je    .Lx1108_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1108_7]
                        lea              rdx, [rip + .Lx1108_8];    jmp   rax
.Lx1108_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1108_2
.Lx1108_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1108_2
.Lx1108_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1075_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1108_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1077_match_assign_cond_α
.Lx1108_6:              add              rsp, 16;                   jmp   n1075_match_assign_save_β
n1076_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1077_match_assign_cond_α: lea              rdi, [rsp + 336]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n1078_lit_string_α
n1077_match_assign_cond_β: sub              r12, 24;                jmp   n1076_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n1078_lit_string_α:     mov              qword ptr [rsp + 416], 2                       # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Lx1111_0]
                        mov              qword ptr [rsp + 424], rax; jmp   n1079_call_α
.Lx1111_0:              .quad            .Lx1111_0_s
.Lx1111_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n1079_call_α:           sub              rsp, 48
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1113_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Push_item_alpha]; jmp   rax
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                  jne   .Lx1113_20
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;   jmp   .Lx1113_21
.Lx1113_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_arg_stage@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1113_21:             mov              rdi, qword ptr [rip + .Lx1113_0]
                        mov              esi, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  je    .Lx1113_1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1113_3]
                        lea              rdx, [rip + .Lx1113_4];    jmp   rax
.Lx1113_3:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1113_2
.Lx1113_4:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1113_2
.Lx1113_1:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_faildescr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1113_2:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                  je    n1077_match_assign_cond_β
                                                                    jmp   n1080_match_value_α
n1079_call_β:                                                       jmp   n1077_match_assign_cond_β
.Lx1113_0:              .quad            .Lx1113_0_s
.Lx1113_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n1080_match_value_α:    lea              rdi, [rsp + 368]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1114_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1114_4]
                        lea              rdx, [rip + .Lx1114_5];    jmp   rax
.Lx1114_4:                                                          jmp   n1073_match_alternate_s1
.Lx1114_5:                                                          jmp   n1077_match_assign_cond_β
.Lx1114_0:              lea              rdi, [rsp + 368]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1077_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1114_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1073_match_alternate_s1
.Lx1114_6:              add              rsp, 16;                   jmp   n1077_match_assign_cond_β
n1080_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1081_match_defer_α:    mov              rax, qword ptr [r9 + 624]                      # group
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                    jne   .Lx1115_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx1115_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1115_10
.Lx1115_9:              xor              eax, eax
.Lx1115_10:             test             rax, rax;                  jz    .Lx1115_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1115_4]
                        lea              r11, [rip + .Lx1115_5];    jmp   rax
.Lx1115_4:                                                          jmp   n1073_match_alternate_s0
.Lx1115_5:                                                          jmp   n1073_match_alternate_af
.Lx1115_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1115_2:              test             rax, rax;                  je    .Lx1115_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1115_7]
                        lea              rdx, [rip + .Lx1115_8];    jmp   rax
.Lx1115_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1115_2
.Lx1115_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1115_2
.Lx1115_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1073_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1115_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1073_match_alternate_s0
.Lx1115_6:              add              rsp, 16;                   jmp   n1073_match_alternate_af
n1081_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                    jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
proc_PAT$4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1116_match_pos_α:      mov              rax, 0
                        cmp              r14d, eax;                 jne   proc_PAT$4_ω
                                                                    jmp   n1117_lit_string_α
n1116_match_pos_β:                                                  jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1117_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1137_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1118_call_α
.Lx1137_0:              .quad            .Lx1137_0_s
.Lx1137_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n1118_call_α:           sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # lit_string
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1139_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Init_list_alpha]; jmp   rax
.Lx1139_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1139_240
                        add              rsp, 16;                   jmp   proc_PAT$4_ω
.Lx1139_240:                                                        jmp   n1119_match_value_α
n1118_call_β:                                                       jmp   proc_PAT$4_ω
.Lx1139_0:              .quad            .Lx1139_0_s
.Lx1139_0_s:            .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n1119_match_value_α:    lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1140_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1140_4]
                        lea              rdx, [rip + .Lx1140_5];    jmp   rax
.Lx1140_4:                                                          jmp   n1120_lit_string_α
.Lx1140_5:                                                          jmp   proc_PAT$4_ω
.Lx1140_0:              lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1140_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1120_lit_string_α
.Lx1140_6:              add              rsp, 16;                   jmp   proc_PAT$4_ω
n1119_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1141_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1121_call_α
.Lx1141_0:              .quad            .Lx1141_0_s
.Lx1141_0_s:            .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n1121_call_α:           sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # lit_string
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1143_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Push_list_alpha]; jmp   rax
.Lx1143_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1143_240
                        add              rsp, 16;                   jmp   n1119_match_value_β
.Lx1143_240:                                                        jmp   n1122_match_value_α
n1121_call_β:                                                       jmp   n1119_match_value_β
.Lx1143_0:              .quad            .Lx1143_0_s
.Lx1143_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n1122_match_value_α:    lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1144_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1144_4]
                        lea              rdx, [rip + .Lx1144_5];    jmp   rax
.Lx1144_4:                                                          jmp   n1123_match_arbno_α
.Lx1144_5:                                                          jmp   n1119_match_value_β
.Lx1144_0:              lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1119_match_value_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1144_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1123_match_arbno_α
.Lx1144_6:              add              rsp, 16;                   jmp   n1119_match_value_β
n1122_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1123_match_arbno_α:    lea              rdi, [rip + .S5]
                        call             rt_bomb@PLT
                        ud2
n1123_match_arbno_β:    lea              rdi, [rip + .S4]
                        call             rt_bomb@PLT
                        ud2
n1123_match_arbno_as:
n1123_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n1124_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1147_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1125_call_α
.Lx1147_0:              .quad            .Lx1147_0_s
.Lx1147_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n1125_call_α:           sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # lit_string
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1149_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Pop_final_alpha]; jmp   rax
.Lx1149_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1149_240
                        add              rsp, 16;                   jmp   n1123_match_arbno_β
.Lx1149_240:                                                        jmp   n1126_match_value_α
n1125_call_β:                                                       jmp   n1123_match_arbno_β
.Lx1149_0:              .quad            .Lx1149_0_s
.Lx1149_0_s:            .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n1126_match_value_α:    lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1150_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1150_4]
                        lea              rdx, [rip + .Lx1150_5];    jmp   rax
.Lx1150_4:                                                          jmp   n1127_match_rpos_α
.Lx1150_5:                                                          jmp   n1123_match_arbno_β
.Lx1150_0:              lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1123_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1150_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1127_match_rpos_α
.Lx1150_6:              add              rsp, 16;                   jmp   n1123_match_arbno_β
n1126_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1127_match_rpos_α:     mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                 jne   n1126_match_value_β
                                                                    jmp   proc_PAT$4_γ
#-----------------------------------------------------------------------------------------------------------------------
n1128_lit_string_α:     mov              qword ptr [rsp + 288], 2                       # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rsp + 296], rax; jmp   n1129_call_α
n1128_lit_string_β:                                                 jmp   n1123_match_arbno_af
.Lx1152_0:              .quad            .Lx1152_0_s
.Lx1152_0_s:            .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n1129_call_α:           sub              rsp, 48
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1154_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Push_list_alpha]; jmp   rax
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                  jne   .Lx1154_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;   jmp   .Lx1154_21
.Lx1154_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_arg_stage@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1154_21:             mov              rdi, qword ptr [rip + .Lx1154_0]
                        mov              esi, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  je    .Lx1154_1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1154_3]
                        lea              rdx, [rip + .Lx1154_4];    jmp   rax
.Lx1154_3:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1154_2
.Lx1154_4:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1154_2
.Lx1154_1:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_faildescr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1154_2:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                  je    n1123_match_arbno_af
                                                                    jmp   n1130_match_value_α
n1129_call_β:                                                       jmp   n1123_match_arbno_af
.Lx1154_0:              .quad            .Lx1154_0_s
.Lx1154_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n1130_match_value_α:    lea              rdi, [rsp + 240]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1155_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1155_4]
                        lea              rdx, [rip + .Lx1155_5];    jmp   rax
.Lx1155_4:                                                          jmp   n1131_match_arbno_α
.Lx1155_5:                                                          jmp   n1123_match_arbno_af
.Lx1155_0:              lea              rdi, [rsp + 240]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1123_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1155_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1131_match_arbno_α
.Lx1155_6:              add              rsp, 16;                   jmp   n1123_match_arbno_af
n1130_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1131_match_arbno_α:    lea              rdi, [rip + .S5]
                        call             rt_bomb@PLT
                        ud2
n1131_match_arbno_β:    lea              rdi, [rip + .S4]
                        call             rt_bomb@PLT
                        ud2
n1131_match_arbno_as:
n1131_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n1132_match_defer_α:    mov              rax, qword ptr [r9 + 832]                      # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 840]
                        cmp              eax, 8;                    jne   .Lx1158_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx1158_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1158_10
.Lx1158_9:              xor              eax, eax
.Lx1158_10:             test             rax, rax;                  jz    .Lx1158_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1158_4]
                        lea              r11, [rip + .Lx1158_5];    jmp   rax
.Lx1158_4:                                                          jmp   n1133_call_α
.Lx1158_5:                                                          jmp   n1131_match_arbno_β
.Lx1158_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1158_2:              test             rax, rax;                  je    .Lx1158_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1158_7]
                        lea              rdx, [rip + .Lx1158_8];    jmp   rax
.Lx1158_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1158_2
.Lx1158_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1158_2
.Lx1158_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1131_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1158_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1133_call_α
.Lx1158_6:              add              rsp, 16;                   jmp   n1131_match_arbno_β
n1132_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1133_call_α:           sub              rsp, 32
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1160_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + Pop_list_alpha]; jmp   rax
                        mov              rdi, qword ptr [rip + .Lx1160_0]
                        mov              esi, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  je    .Lx1160_1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1160_3]
                        lea              rdx, [rip + .Lx1160_4];    jmp   rax
.Lx1160_3:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1160_2
.Lx1160_4:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1160_2
.Lx1160_1:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_faildescr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1160_2:              mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                  je    n1123_match_arbno_af
                                                                    jmp   n1134_match_value_α
n1133_call_β:                                                       jmp   n1123_match_arbno_af
.Lx1160_0:              .quad            .Lx1160_0_s
.Lx1160_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n1134_match_value_α:    lea              rdi, [rsp + 416]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1161_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1161_4]
                        lea              rdx, [rip + .Lx1161_5];    jmp   rax
.Lx1161_4:                                                          jmp   n1123_match_arbno_as
.Lx1161_5:                                                          jmp   n1123_match_arbno_af
.Lx1161_0:              lea              rdi, [rsp + 416]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1123_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1161_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1123_match_arbno_as
.Lx1161_6:              add              rsp, 16;                   jmp   n1123_match_arbno_af
n1134_match_value_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1135_match_defer_α:    mov              rax, qword ptr [r9 + 624]                      # group
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                    jne   .Lx1162_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx1162_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1162_10
.Lx1162_9:              xor              eax, eax
.Lx1162_10:             test             rax, rax;                  jz    .Lx1162_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1162_4]
                        lea              r11, [rip + .Lx1162_5];    jmp   rax
.Lx1162_4:                                                          jmp   n1131_match_arbno_as
.Lx1162_5:                                                          jmp   n1131_match_arbno_af
.Lx1162_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1162_2:              test             rax, rax;                  je    .Lx1162_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1162_7]
                        lea              rdx, [rip + .Lx1162_8];    jmp   rax
.Lx1162_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1162_2
.Lx1162_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1162_2
.Lx1162_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1131_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1162_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1131_match_arbno_as
.Lx1162_6:              add              rsp, 16;                   jmp   n1131_match_arbno_af
n1135_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                    jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                                                                    jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "list(head,tail)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__list_reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__list_reverse_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__stk_push_frame"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__stk_push_frame_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__stk_push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__stk_push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__stk_pop_into_parent"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__stk_pop_into_parent_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__stk_pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_LBL__stk_pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_LBL__init_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "LBL__Init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_LBL__Init_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_LBL__push_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "LBL__Push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_LBL__Push_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "LBL__push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_LBL__push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "LBL__Push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_LBL__Push_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "LBL__pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_LBL__pop_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "LBL__Pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_LBL__Pop_list_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "LBL__pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_LBL__pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "LBL__Pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_LBL__Pop_final_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "LBL__node_repr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_LBL__node_repr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "LBL__pp_node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_LBL__pp_node_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "LBL__pp_bank"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_LBL__pp_bank_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 6432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname36:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname36]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname37:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname37]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 32
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname38:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname38]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname39:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname39]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname39]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname40:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname40]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname40]
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
.Lgvan36:               .string          "epsilon"
.Lgvan37:               .string          "delim"
.Lgvan38:               .string          "word"
.Lgvan39:               .string          "group"
.Lgvan40:               .string          "tag"
.Lgvan41:               .string          "wrd"
.Lgvan42:               .string          "treebank"
.Lgvan43:               .string          "bank"
.Lgvan44:               .string          "line"
.Lgvan45:               .string          "src"
.Lgvan46:               .string          "t0"
.Lgvan47:               .string          "t1"
.Lgvan48:               .string          "PAT$0$V0"
.Lgvan49:               .string          "PAT$3$V0"
.Lgvan50:               .string          "PAT$3$V1"
.Lgvan51:               .string          "PAT$3$V2"
.Lgvan52:               .string          "PAT$4$V0"
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
                        .quad            .Lgvan51
                        .quad            .Lgvan52
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 53
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 53
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                    jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#                &ALPHABET      POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n1163_statement_begin_α:                                            jmp   n1164_keyword_snobol4_α
n1163_statement_begin_β:                                            jmp   n1172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1164_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1477_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1165_match_begin_α
.Lx1477_0:              .quad            .Lx1477_0_s
.Lx1477_0_s:            .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n1165_match_begin_α:    mov              rdi, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 256], rdi
                        mov              qword ptr [rsp + 264], rsi
                        sub              rsp, 64
                        mov              qword ptr [rsp + 24], r13                      # outer_Σ
                        mov              qword ptr [rsp + 32], r14                      # outer_δ
                        mov              qword ptr [rsp + 40], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 48], rax                      # cap_gen
                        mov              qword ptr [rsp + 16], rsp                      # old____
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 8], rax                       # rsp_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx1479_0:              mov              r14d, dword ptr [rsp + 0]; jmp   n1166_match_pos_α
n1165_match_begin_β:    mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                 jg    .Lx1479_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                    jne   .Lx1479_1
                                                                    jmp   .Lx1479_0
.Lx1479_1:
n1165_match_begin_af:   sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 48]                      # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 64                                        # old____
                        add              rsp, 16;                   jmp   n1172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_match_pos_α:      mov              rax, 10
                        cmp              r14d, eax;                 jne   n1165_match_begin_β
                                                                    jmp   n1167_match_assign_save_α
n1166_match_pos_β:                                                  jmp   n1165_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1167_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d; jmp   n1168_match_len_α
n1167_match_assign_save_β: add              rsp, 16;                jmp   n1165_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1168_match_len_α:      mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jle   .Lx1483_240
                        add              rsp, 16;                   jmp   n1165_match_begin_β
.Lx1483_240:            add              r14d, 1;                   jmp   n1169_match_assign_cond_α
n1168_match_len_β:      sub              r14d, 1
                        add              rsp, 16;                   jmp   n1165_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1169_match_assign_cond_α: mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n1170_match_end_α
n1169_match_assign_cond_β: sub              r12, 24;                jmp   n1168_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n1170_match_end_α:      mov              r8, r12
.Lx1487_9:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx1487_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx1487_5:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx1487_5
                        lea              rdi, [r8 + 24]
                        mov              rdx, r13
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1487_1:              test             rax, rax;                  je    .Lx1487_2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1487_3]
                        lea              rdx, [rip + .Lx1487_4];    jmp   rax
.Lx1487_3:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1487_1
.Lx1487_4:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1487_1
.Lx1487_2:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx1487_10:             sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                  jne   .Lx1487_10
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1171_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1171_statement_end_α:  add              rsp, 80;                   jmp   n1172_statement_begin_α
#=======================================================================================================================
#                DATA('list(head,tail)')
#-----------------------------------------------------------------------------------------------------------------------
n1172_statement_begin_α:                                            jmp   n1173_lit_string_α
n1172_statement_begin_β:                                            jmp   n1176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1173_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx1492_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1174_call_α
.Lx1492_0:              .quad            .Lx1492_0_s
.Lx1492_0_s:            .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
n1174_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1494:           .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1494]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1493_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1172_statement_begin_β
.Lx1493_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1175_statement_end_α
n1174_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1172_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1175_statement_end_α:  add              rsp, 32;                   jmp   n1176_statement_begin_α
#=======================================================================================================================
#                DEFINE('list_reverse(lst)acc,cur')           :(list_reverse_end)
#-----------------------------------------------------------------------------------------------------------------------
n1176_statement_begin_α:                                            jmp   n1177_func_activate_α
n1176_statement_begin_β:                                            jmp   n1179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1177_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1500_0]
                        mov              rsi, qword ptr [rip + .Lx1500_1]
                        mov              edx, 3
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_list_reverse_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1178_statement_end_α
n1177_func_activate_β:                                              jmp   n1176_statement_begin_β
.Lx1500_0:              .quad            .Lx1500_0_s
.Lx1500_0_s:            .string          "list_reverse"
.Lx1500_1:              .quad            .Lx1500_1_s
.Lx1500_1_s:            .string          "lst,acc,cur"
#-----------------------------------------------------------------------------------------------------------------------
n1178_statement_end_α:                                              jmp   n1179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1179_statement_begin_α:                                            jmp   n1180_statement_end_α
n1179_statement_begin_β:                                            jmp   n1181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_statement_end_α:                                              jmp   n1181_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
#-----------------------------------------------------------------------------------------------------------------------
n1181_statement_begin_α:                                            jmp   n1182_func_activate_α
n1181_statement_begin_β:                                            jmp   n1184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1182_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1510_0]
                        mov              rsi, qword ptr [rip + .Lx1510_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_push_frame_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1183_statement_end_α
n1182_func_activate_β:                                              jmp   n1181_statement_begin_β
.Lx1510_0:              .quad            .Lx1510_0_s
.Lx1510_0_s:            .string          "stk_push_frame"
.Lx1510_1:              .quad            .Lx1510_1_s
.Lx1510_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n1183_statement_end_α:                                              jmp   n1184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_statement_begin_α:                                            jmp   n1185_statement_end_α
n1184_statement_begin_β:                                            jmp   n1186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_statement_end_α:                                              jmp   n1186_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n1186_statement_begin_α:                                            jmp   n1187_func_activate_α
n1186_statement_begin_β:                                            jmp   n1189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1187_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1520_0]
                        mov              rsi, qword ptr [rip + .Lx1520_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_push_item_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1188_statement_end_α
n1187_func_activate_β:                                              jmp   n1186_statement_begin_β
.Lx1520_0:              .quad            .Lx1520_0_s
.Lx1520_0_s:            .string          "stk_push_item"
.Lx1520_1:              .quad            .Lx1520_1_s
.Lx1520_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n1188_statement_end_α:                                              jmp   n1189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_statement_begin_α:                                            jmp   n1190_statement_end_α
n1189_statement_begin_β:                                            jmp   n1191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1190_statement_end_α:                                              jmp   n1191_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
#-----------------------------------------------------------------------------------------------------------------------
n1191_statement_begin_α:                                            jmp   n1192_func_activate_α
n1191_statement_begin_β:                                            jmp   n1194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1192_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1530_0]
                        mov              rsi, qword ptr [rip + .Lx1530_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_pop_into_parent_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1193_statement_end_α
n1192_func_activate_β:                                              jmp   n1191_statement_begin_β
.Lx1530_0:              .quad            .Lx1530_0_s
.Lx1530_0_s:            .string          "stk_pop_into_parent"
.Lx1530_1:              .quad            .Lx1530_1_s
.Lx1530_1_s:            .string          "child"
#-----------------------------------------------------------------------------------------------------------------------
n1193_statement_end_α:                                              jmp   n1194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_statement_begin_α:                                            jmp   n1195_statement_end_α
n1194_statement_begin_β:                                            jmp   n1196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1195_statement_end_α:                                              jmp   n1196_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_final(var)')                 :(stk_pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n1196_statement_begin_α:                                            jmp   n1197_func_activate_α
n1196_statement_begin_β:                                            jmp   n1199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1540_0]
                        mov              rsi, qword ptr [rip + .Lx1540_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_pop_final_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1198_statement_end_α
n1197_func_activate_β:                                              jmp   n1196_statement_begin_β
.Lx1540_0:              .quad            .Lx1540_0_s
.Lx1540_0_s:            .string          "stk_pop_final"
.Lx1540_1:              .quad            .Lx1540_1_s
.Lx1540_1_s:            .string          "var"
#-----------------------------------------------------------------------------------------------------------------------
n1198_statement_end_α:                                              jmp   n1199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_statement_begin_α:                                            jmp   n1200_statement_end_α
n1199_statement_begin_β:                                            jmp   n1201_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1200_statement_end_α:                                              jmp   n1201_statement_begin_α
#=======================================================================================================================
#                DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n1201_statement_begin_α:                                            jmp   n1202_func_activate_α
n1201_statement_begin_β:                                            jmp   n1204_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1202_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1550_0]
                        mov              rsi, qword ptr [rip + .Lx1550_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_init_list_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1203_statement_end_α
n1202_func_activate_β:                                              jmp   n1201_statement_begin_β
.Lx1550_0:              .quad            .Lx1550_0_s
.Lx1550_0_s:            .string          "init_list"
.Lx1550_1:              .quad            .Lx1550_1_s
.Lx1550_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n1203_statement_end_α:                                              jmp   n1204_statement_begin_α
#=======================================================================================================================
#                DEFINE('Init_list(vs)')                      :(init_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n1204_statement_begin_α:                                            jmp   n1205_func_activate_α
n1204_statement_begin_β:                                            jmp   n1207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1205_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1556_0]
                        mov              rsi, qword ptr [rip + .Lx1556_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Init_list_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1206_statement_end_α
n1205_func_activate_β:                                              jmp   n1204_statement_begin_β
.Lx1556_0:              .quad            .Lx1556_0_s
.Lx1556_0_s:            .string          "Init_list"
.Lx1556_1:              .quad            .Lx1556_1_s
.Lx1556_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n1206_statement_end_α:                                              jmp   n1207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1207_statement_begin_α:                                            jmp   n1208_statement_end_α
n1207_statement_begin_β:                                            jmp   n1209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1208_statement_end_α:                                              jmp   n1209_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n1209_statement_begin_α:                                            jmp   n1210_func_activate_α
n1209_statement_begin_β:                                            jmp   n1212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1210_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1566_0]
                        mov              rsi, qword ptr [rip + .Lx1566_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_push_list_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1211_statement_end_α
n1210_func_activate_β:                                              jmp   n1209_statement_begin_β
.Lx1566_0:              .quad            .Lx1566_0_s
.Lx1566_0_s:            .string          "push_list"
.Lx1566_1:              .quad            .Lx1566_1_s
.Lx1566_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n1211_statement_end_α:                                              jmp   n1212_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_list(vs)')                      :(push_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n1212_statement_begin_α:                                            jmp   n1213_func_activate_α
n1212_statement_begin_β:                                            jmp   n1215_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1213_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1572_0]
                        mov              rsi, qword ptr [rip + .Lx1572_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Push_list_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1214_statement_end_α
n1213_func_activate_β:                                              jmp   n1212_statement_begin_β
.Lx1572_0:              .quad            .Lx1572_0_s
.Lx1572_0_s:            .string          "Push_list"
.Lx1572_1:              .quad            .Lx1572_1_s
.Lx1572_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n1214_statement_end_α:                                              jmp   n1215_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1215_statement_begin_α:                                            jmp   n1216_statement_end_α
n1215_statement_begin_β:                                            jmp   n1217_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1216_statement_end_α:                                              jmp   n1217_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n1217_statement_begin_α:                                            jmp   n1218_func_activate_α
n1217_statement_begin_β:                                            jmp   n1220_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1218_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1582_0]
                        mov              rsi, qword ptr [rip + .Lx1582_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_push_item_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1219_statement_end_α
n1218_func_activate_β:                                              jmp   n1217_statement_begin_β
.Lx1582_0:              .quad            .Lx1582_0_s
.Lx1582_0_s:            .string          "push_item"
.Lx1582_1:              .quad            .Lx1582_1_s
.Lx1582_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n1219_statement_end_α:                                              jmp   n1220_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_item(vs)')                      :(push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n1220_statement_begin_α:                                            jmp   n1221_func_activate_α
n1220_statement_begin_β:                                            jmp   n1223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1221_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1588_0]
                        mov              rsi, qword ptr [rip + .Lx1588_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Push_item_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1222_statement_end_α
n1221_func_activate_β:                                              jmp   n1220_statement_begin_β
.Lx1588_0:              .quad            .Lx1588_0_s
.Lx1588_0_s:            .string          "Push_item"
.Lx1588_1:              .quad            .Lx1588_1_s
.Lx1588_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n1222_statement_end_α:                                              jmp   n1223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1223_statement_begin_α:                                            jmp   n1224_statement_end_α
n1223_statement_begin_β:                                            jmp   n1225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1224_statement_end_α:                                              jmp   n1225_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n1225_statement_begin_α:                                            jmp   n1226_func_activate_α
n1225_statement_begin_β:                                            jmp   n1228_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1226_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1598_0]
                        mov              rsi, qword ptr [rip + .Lx1598_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_pop_list_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1227_statement_end_α
n1226_func_activate_β:                                              jmp   n1225_statement_begin_β
.Lx1598_0:              .quad            .Lx1598_0_s
.Lx1598_0_s:            .string          "pop_list"
.Lx1598_1:              .quad            .Lx1598_1_s
.Lx1598_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1227_statement_end_α:                                              jmp   n1228_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_list()')                         :(pop_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n1228_statement_begin_α:                                            jmp   n1229_func_activate_α
n1228_statement_begin_β:                                            jmp   n1231_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1229_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1604_0]
                        mov              rsi, qword ptr [rip + .Lx1604_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_Pop_list_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1230_statement_end_α
n1229_func_activate_β:                                              jmp   n1228_statement_begin_β
.Lx1604_0:              .quad            .Lx1604_0_s
.Lx1604_0_s:            .string          "Pop_list"
.Lx1604_1:              .quad            .Lx1604_1_s
.Lx1604_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1230_statement_end_α:                                              jmp   n1231_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1231_statement_begin_α:                                            jmp   n1232_statement_end_α
n1231_statement_begin_β:                                            jmp   n1233_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1232_statement_end_α:                                              jmp   n1233_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_final(v)')
#-----------------------------------------------------------------------------------------------------------------------
n1233_statement_begin_α:                                            jmp   n1234_func_activate_α
n1233_statement_begin_β:                                            jmp   n1236_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1234_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1614_0]
                        mov              rsi, qword ptr [rip + .Lx1614_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_pop_final_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1235_statement_end_α
n1234_func_activate_β:                                              jmp   n1233_statement_begin_β
.Lx1614_0:              .quad            .Lx1614_0_s
.Lx1614_0_s:            .string          "pop_final"
.Lx1614_1:              .quad            .Lx1614_1_s
.Lx1614_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n1235_statement_end_α:                                              jmp   n1236_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_final(vs)')                      :(pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n1236_statement_begin_α:                                            jmp   n1237_func_activate_α
n1236_statement_begin_β:                                            jmp   n1239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1237_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1620_0]
                        mov              rsi, qword ptr [rip + .Lx1620_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Pop_final_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1238_statement_end_α
n1237_func_activate_β:                                              jmp   n1236_statement_begin_β
.Lx1620_0:              .quad            .Lx1620_0_s
.Lx1620_0_s:            .string          "Pop_final"
.Lx1620_1:              .quad            .Lx1620_1_s
.Lx1620_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n1238_statement_end_α:                                              jmp   n1239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1239_statement_begin_α:                                            jmp   n1240_statement_end_α
n1239_statement_begin_β:                                            jmp   n1241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1240_statement_end_α:                                              jmp   n1241_statement_begin_α
#=======================================================================================================================
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n1241_statement_begin_α:                                            jmp   n1242_lit_string_α
n1241_statement_begin_β:                                            jmp   n1246_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1242_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1629_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1243_call_α
.Lx1629_0:              .quad            .Lx1629_0_s
.Lx1629_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n1243_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1631:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1631]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1630_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1241_statement_begin_β
.Lx1630_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1244_assign_α
n1243_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1241_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1244_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax                      # delim
                        mov              qword ptr [r9 + 600], rdx; jmp   n1245_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1245_statement_end_α:  add              rsp, 32;                   jmp   n1246_statement_begin_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n1246_statement_begin_α:                                            jmp   n1247_lit_string_α
n1246_statement_begin_β:                                            jmp   n1251_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1247_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1637_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1248_call_α
.Lx1637_0:              .quad            .Lx1637_0_s
.Lx1637_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n1248_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1639:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1639]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1638_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1246_statement_begin_β
.Lx1638_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1249_assign_α
n1248_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1246_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1249_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax                      # word
                        mov              qword ptr [r9 + 616], rdx; jmp   n1250_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1250_statement_end_α:  add              rsp, 32;                   jmp   n1251_statement_begin_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
n1251_statement_begin_α:                                            jmp   n1252_var_α
n1251_statement_begin_β:                                            jmp   n1262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1252_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]                      # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1253_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1253_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 816], rax                      # PAT$3$V2
                        mov              qword ptr [r9 + 824], rdx; jmp   n1254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1254_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]                      # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1255_assign_α
n1254_var_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n1251_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1255_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 800], rax                      # PAT$3$V1
                        mov              qword ptr [r9 + 808], rdx; jmp   n1256_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1256_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]                      # word
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1257_assign_α
n1256_var_β:            add              rsp, 16;                   jmp   n1254_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1257_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax                      # PAT$3$V0
                        mov              qword ptr [r9 + 792], rdx; jmp   n1258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1258_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1651_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1259_call_α
n1258_lit_string_β:     add              rsp, 16;                   jmp   n1256_var_β
.Lx1651_0:              .quad            .Lx1651_0_s
.Lx1651_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n1259_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1653:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1653]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1652_240
                        add              rsp, 16;                   jmp   n1258_lit_string_β
.Lx1652_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1260_assign_α
n1259_call_β:           add              rsp, 16;                   jmp   n1258_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n1260_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax                      # group
                        mov              qword ptr [r9 + 632], rdx; jmp   n1261_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1261_statement_end_α:  add              rsp, 80;                   jmp   n1262_statement_begin_α
#=======================================================================================================================
#                treebank       =
#-----------------------------------------------------------------------------------------------------------------------
n1262_statement_begin_α:                                            jmp   n1263_var_α
n1262_statement_begin_β:                                            jmp   n1269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1263_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]                      # delim
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1264_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1264_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 832], rax                      # PAT$4$V0
                        mov              qword ptr [r9 + 840], rdx; jmp   n1265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1265_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1661_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1266_call_α
n1265_lit_string_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n1262_statement_begin_β
.Lx1661_0:              .quad            .Lx1661_0_s
.Lx1661_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n1266_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1663:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1663]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1662_240
                        add              rsp, 16;                   jmp   n1265_lit_string_β
.Lx1662_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1267_assign_α
n1266_call_β:           add              rsp, 16;                   jmp   n1265_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n1267_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax                      # treebank
                        mov              qword ptr [r9 + 680], rdx; jmp   n1268_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1268_statement_end_α:  add              rsp, 48;                   jmp   n1269_statement_begin_α
#=======================================================================================================================
#                DEFINE('node_repr(node)r,c,sep')             :(node_repr_end)
#-----------------------------------------------------------------------------------------------------------------------
n1269_statement_begin_α:                                            jmp   n1270_func_activate_α
n1269_statement_begin_β:                                            jmp   n1272_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1270_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1670_0]
                        mov              rsi, qword ptr [rip + .Lx1670_1]
                        mov              edx, 4
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_node_repr_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1271_statement_end_α
n1270_func_activate_β:                                              jmp   n1269_statement_begin_β
.Lx1670_0:              .quad            .Lx1670_0_s
.Lx1670_0_s:            .string          "node_repr"
.Lx1670_1:              .quad            .Lx1670_1_s
.Lx1670_1_s:            .string          "node,r,c,sep"
#-----------------------------------------------------------------------------------------------------------------------
n1271_statement_end_α:                                              jmp   n1272_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1272_statement_begin_α:                                            jmp   n1273_statement_end_α
n1272_statement_begin_β:                                            jmp   n1274_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1273_statement_end_α:                                              jmp   n1274_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_node(node,indent,suffix)r,pad,c,nxt') :(pp_node_end)
#-----------------------------------------------------------------------------------------------------------------------
n1274_statement_begin_α:                                            jmp   n1275_func_activate_α
n1274_statement_begin_β:                                            jmp   n1277_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1275_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1680_0]
                        mov              rsi, qword ptr [rip + .Lx1680_1]
                        mov              edx, 7
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + proc_pp_node_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1276_statement_end_α
n1275_func_activate_β:                                              jmp   n1274_statement_begin_β
.Lx1680_0:              .quad            .Lx1680_0_s
.Lx1680_0_s:            .string          "pp_node"
.Lx1680_1:              .quad            .Lx1680_1_s
.Lx1680_1_s:            .string          "node,indent,suffix,r,pad,c,nxt"
#-----------------------------------------------------------------------------------------------------------------------
n1276_statement_end_α:                                              jmp   n1277_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1277_statement_begin_α:                                            jmp   n1278_statement_end_α
n1277_statement_begin_β:                                            jmp   n1279_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1278_statement_end_α:                                              jmp   n1279_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_bank()cur')                       :(pp_bank_end)
#-----------------------------------------------------------------------------------------------------------------------
n1279_statement_begin_α:                                            jmp   n1280_func_activate_α
n1279_statement_begin_β:                                            jmp   n1282_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1280_func_activate_α:  mov              rdi, qword ptr [rip + .Lx1690_0]
                        mov              rsi, qword ptr [rip + .Lx1690_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_pp_bank_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1281_statement_end_α
n1280_func_activate_β:                                              jmp   n1279_statement_begin_β
.Lx1690_0:              .quad            .Lx1690_0_s
.Lx1690_0_s:            .string          "pp_bank"
.Lx1690_1:              .quad            .Lx1690_1_s
.Lx1690_1_s:            .string          "cur"
#-----------------------------------------------------------------------------------------------------------------------
n1281_statement_end_α:                                              jmp   n1282_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1282_statement_begin_α:                                            jmp   n1283_statement_end_α
n1282_statement_begin_β:                                            jmp   n1284_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1283_statement_end_α:                                              jmp   n1284_statement_begin_α
#=======================================================================================================================
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
n1284_statement_begin_α:                                            jmp   n1285_var_α
n1284_statement_begin_β:                                            jmp   n1296_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1285_var_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1699_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_GET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1699_240
                        add              rsp, 16;                   jmp   n1284_statement_begin_β
.Lx1699_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1286_assign_α
.Lx1699_0:              .quad            .Lx1699_0_s
.Lx1699_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n1286_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax                      # line
                        mov              qword ptr [r9 + 712], rdx; jmp   n1287_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1287_statement_end_α:  add              rsp, 16;                   jmp   n1288_statement_begin_α
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n1288_statement_begin_α:                                            jmp   n1289_var_α
n1288_statement_begin_β:                                            jmp   n1284_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1289_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]                      # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1290_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 704]                      # line
                        mov              rdx, qword ptr [r9 + 712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1291_binop_α
n1290_var_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n1288_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1291_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1292_var_α
n1291_binop_β:          add              rsp, 16;                   jmp   n1290_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1292_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]                      # nl
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1293_binop_α
n1292_var_β:            add              rsp, 16;                   jmp   n1291_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n1293_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1294_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1294_assign_α:         mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax                      # src
                        mov              qword ptr [r9 + 728], rdx; jmp   n1295_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1295_statement_end_α:  add              rsp, 80;                   jmp   n1284_statement_begin_α
#=======================================================================================================================
# slurp_done     t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1296_statement_begin_α:                                            jmp   n1297_call_α
n1296_statement_begin_β:                                            jmp   n1300_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1297_call_α:           sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1716:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1716]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1715_240
                        add              rsp, 16;                   jmp   n1296_statement_begin_β
.Lx1715_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1298_assign_α
n1297_call_β:           add              rsp, 16;                   jmp   n1296_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1298_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax                      # t0
                        mov              qword ptr [r9 + 744], rdx; jmp   n1299_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1299_statement_end_α:  add              rsp, 16;                   jmp   n1300_statement_begin_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n1300_statement_begin_α:                                            jmp   n1301_var_α
n1300_statement_begin_β:                                            jmp   n1324_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1301_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 720]                      # src
                        mov              rdx, qword ptr [r9 + 728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1302_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1302_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 672]                      # treebank
                        mov              rdx, qword ptr [r9 + 680]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1303_assign_α
n1302_var_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n1324_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1303_assign_α:         mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1724_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1304_match_begin_α
n1303_assign_β:                                                     jmp   n1302_var_β
.Lx1724_0:              .quad            .Lx1724_0_s
.Lx1724_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n1304_match_begin_α:    mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 24], r13                      # outer_Σ
                        mov              qword ptr [rsp + 32], r14                      # outer_δ
                        mov              qword ptr [rsp + 40], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 48], rax                      # cap_gen
                        mov              qword ptr [rsp + 16], rsp                      # old____
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rsp + 8], rsp                       # zls2_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx1726_0:              mov              r14d, dword ptr [rsp + 0]; jmp   n1305_match_defer_α
n1304_match_begin_β:    add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                 jg    .Lx1726_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                    jne   .Lx1726_1
                                                                    jmp   .Lx1726_0
.Lx1726_1:
n1304_match_begin_af:   sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 48]                      # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 64;                   jmp   n1303_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n1305_match_defer_α:    lea              rdi, [rip + .S12]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1727_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1727_4]
                        lea              r11, [rip + .Lx1727_5];    jmp   rax
.Lx1727_4:                                                          jmp   n1306_match_end_α
.Lx1727_5:                                                          jmp   n1304_match_begin_β
.Lx1727_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1727_2:              test             rax, rax;                  je    .Lx1727_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1727_7]
                        lea              rdx, [rip + .Lx1727_8];    jmp   rax
.Lx1727_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1727_2
.Lx1727_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1727_2
.Lx1727_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n1304_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1727_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n1306_match_end_α
.Lx1727_6:              add              rsp, 16;                   jmp   n1304_match_begin_β
n1305_match_defer_β:                                                jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1306_match_end_α:      mov              r8, r12
.Lx1729_9:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx1729_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx1729_5:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx1729_5
                        lea              rdi, [r8 + 24]
                        mov              rdx, r13
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1729_1:              test             rax, rax;                  je    .Lx1729_2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1729_3]
                        lea              rdx, [rip + .Lx1729_4];    jmp   rax
.Lx1729_3:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1729_1
.Lx1729_4:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1729_1
.Lx1729_2:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx1729_10:             sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                  jne   .Lx1729_10
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1307_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1307_statement_end_α:  add              rsp, 96;                   jmp   n1308_statement_begin_α
#=======================================================================================================================
#                t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1308_statement_begin_α:                                            jmp   n1309_call_α
n1308_statement_begin_β:                                            jmp   n1312_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1309_call_α:           sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1735:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1735]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1734_240
                        add              rsp, 16;                   jmp   n1308_statement_begin_β
.Lx1734_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1310_assign_α
n1309_call_β:           add              rsp, 16;                   jmp   n1308_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1310_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax                      # t1
                        mov              qword ptr [r9 + 760], rdx; jmp   n1311_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1311_statement_end_α:  add              rsp, 16;                   jmp   n1312_statement_begin_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n1312_statement_begin_α:                                            jmp   n1313_lit_string_α
n1312_statement_begin_β:                                            jmp   n1320_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1313_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1741_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1314_var_α
.Lx1741_0:              .quad            .Lx1741_0_s
.Lx1741_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n1314_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 752]                      # t1
                        mov              rdx, qword ptr [r9 + 760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1315_var_α
n1314_var_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n1312_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1315_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 736]                      # t0
                        mov              rdx, qword ptr [r9 + 744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1316_binop_α
n1315_var_β:            add              rsp, 16;                   jmp   n1314_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1316_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx1744_240
                        add              rsp, 16;                   jmp   n1315_var_β
.Lx1744_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1317_binop_α
n1316_binop_β:          add              rsp, 16;                   jmp   n1315_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1317_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1318_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1318_assign_α:         mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1746_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1319_statement_end_α
.Lx1746_0:              .quad            .Lx1746_0_s
.Lx1746_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n1319_statement_end_α:  add              rsp, 80;                   jmp   n1320_statement_begin_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n1320_statement_begin_α:                                            jmp   n1321_call_α
n1320_statement_begin_β:                                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1321_call_α:           sub              rsp, 16
                        sub              rsp, 32
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1752_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + pp_bank_alpha]; jmp   rax
.Lx1752_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1752_240
                        add              rsp, 16;                   jmp   n1320_statement_begin_β
.Lx1752_240:                                                        jmp   n1322_assign_α
n1321_call_β:                                                       jmp   n1320_statement_begin_β
.Lx1752_0:              .quad            .Lx1752_0_s
.Lx1752_0_s:            .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
n1322_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # dummy
                        mov              qword ptr [r9 + 568], rdx; jmp   n1323_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1323_statement_end_α:  add              rsp, 16;                   jmp   main_γ
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n1324_statement_begin_α:                                            jmp   n1325_lit_string_α
n1324_statement_begin_β:                                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1325_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1758_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1326_assign_α
.Lx1758_0:              .quad            .Lx1758_0_s
.Lx1758_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n1326_assign_α:         mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1759_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1327_statement_end_α
.Lx1759_0:              .quad            .Lx1759_0_s
.Lx1759_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n1327_statement_end_α:  add              rsp, 16;                   jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1328_goto_α:                                                       jmp   n1329_statement_begin_α
n1328_goto_β:                                                       jmp   main_ω
#=======================================================================================================================
# lr1            DIFFER(cur)                                  :F(lr_done)
#-----------------------------------------------------------------------------------------------------------------------
n1329_statement_begin_α:                                            jmp   n1330_var_α
n1329_statement_begin_β:                                            jmp   n1345_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1330_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1331_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1331_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1767:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1767]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1766_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1329_statement_begin_β
.Lx1766_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1332_statement_end_α
n1331_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1329_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1332_statement_end_α:  add              rsp, 32;                   jmp   n1333_statement_begin_α
#=======================================================================================================================
#                acc            =  list(head(cur), acc)
#-----------------------------------------------------------------------------------------------------------------------
n1333_statement_begin_α:                                            jmp   n1334_var_α
n1333_statement_begin_β:                                            jmp   n1340_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1334_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1335_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1335_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1774:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1774]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1773_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1333_statement_begin_β
.Lx1773_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1336_var_α
n1335_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1333_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1336_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1337_call_α
n1336_var_β:            add              rsp, 16
                        add              rsp, 32;                   jmp   n1333_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1337_call_α:           sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd1777:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1777]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx1776_240
                        add              rsp, 16;                   jmp   n1336_var_β
.Lx1776_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1338_assign_α
n1337_call_β:           add              rsp, 16;                   jmp   n1336_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1338_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # acc
                        mov              qword ptr [r9 + 40], rdx;  jmp   n1339_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1339_statement_end_α:  add              rsp, 64;                   jmp   n1340_statement_begin_α
#=======================================================================================================================
#                cur            =  tail(cur)                  :(lr1)
#-----------------------------------------------------------------------------------------------------------------------
n1340_statement_begin_α:                                            jmp   n1341_var_α
n1340_statement_begin_β:                                            jmp   n1329_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1341_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1342_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1342_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1785:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1785]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1784_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1340_statement_begin_β
.Lx1784_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1343_assign_α
n1342_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1340_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1343_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax                       # cur
                        mov              qword ptr [r9 + 56], rdx;  jmp   n1344_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1344_statement_end_α:  add              rsp, 32;                   jmp   n1329_statement_begin_α
#=======================================================================================================================
# lr_done        list_reverse   =  acc                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1345_statement_begin_α:                                            jmp   n1346_var_α
n1345_statement_begin_β:                                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1346_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # acc
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1347_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1347_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # list_reverse
                        mov              qword ptr [r9 + 8], rdx;   jmp   n1348_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1348_statement_end_α:                                              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1349_goto_α:                                                       jmp   n1345_statement_begin_α
n1349_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1350_goto_α:                                                       jmp   n1179_statement_begin_α
n1350_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1351_goto_α:                                                       jmp   n1184_statement_begin_α
n1351_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1352_goto_α:                                                       jmp   n1189_statement_begin_α
n1352_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1353_goto_α:                                                       jmp   n1194_statement_begin_α
n1353_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1354_goto_α:                                                       jmp   n1199_statement_begin_α
n1354_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1355_goto_α:                                                       jmp   n1207_statement_begin_α
n1355_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1356_goto_α:                                                       jmp   n1215_statement_begin_α
n1356_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1357_goto_α:                                                       jmp   n1223_statement_begin_α
n1357_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1358_goto_α:                                                       jmp   n1231_statement_begin_α
n1358_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1359_goto_α:                                                       jmp   n1239_statement_begin_α
n1359_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1360_goto_α:                                                       jmp   n1361_statement_begin_α
n1360_goto_β:                                                       jmp   main_ω
#=======================================================================================================================
# nr_list        r              =  '('
#-----------------------------------------------------------------------------------------------------------------------
n1361_statement_begin_α:                                            jmp   n1362_lit_string_α
n1361_statement_begin_β:                                            jmp   n1365_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1362_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1809_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1363_assign_α
.Lx1809_0:              .quad            .Lx1809_0_s
.Lx1809_0_s:            .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n1363_assign_α:         mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              qword ptr [r9 + 392], rdx; jmp   n1364_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1364_statement_end_α:  add              rsp, 16;                   jmp   n1365_statement_begin_α
#=======================================================================================================================
#                sep            =
#-----------------------------------------------------------------------------------------------------------------------
n1365_statement_begin_α:                                            jmp   n1366_lit_string_α
n1365_statement_begin_β:                                            jmp   n1369_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1366_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1815_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1367_assign_α
.Lx1815_0:              .quad            .Lx1815_0_s
.Lx1815_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1367_assign_α:         mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax                      # sep
                        mov              qword ptr [r9 + 424], rdx; jmp   n1368_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1368_statement_end_α:  add              rsp, 16;                   jmp   n1369_statement_begin_α
#=======================================================================================================================
#                c              =  node
#-----------------------------------------------------------------------------------------------------------------------
n1369_statement_begin_α:                                            jmp   n1370_var_α
n1369_statement_begin_β:                                            jmp   n1373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1370_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1371_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1371_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n1372_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1372_statement_end_α:  add              rsp, 16;                   jmp   n1373_statement_begin_α
#=======================================================================================================================
# nr_lp          DIFFER(c)                                    :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n1373_statement_begin_α:                                            jmp   n1374_var_α
n1373_statement_begin_β:                                            jmp   n1396_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1374_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1375_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1375_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1829:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1829]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1828_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1373_statement_begin_β
.Lx1828_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1376_statement_end_α
n1375_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1373_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1376_statement_end_α:  add              rsp, 32;                   jmp   n1377_statement_begin_α
#=======================================================================================================================
#                r              =  r sep node_repr(head(c))
#-----------------------------------------------------------------------------------------------------------------------
n1377_statement_begin_α:                                            jmp   n1378_var_α
n1377_statement_begin_β:                                            jmp   n1387_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1378_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1379_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1379_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]                      # sep
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1380_binop_α
n1379_var_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n1377_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1380_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1381_var_α
n1380_binop_β:          add              rsp, 16;                   jmp   n1379_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1381_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1382_call_α
n1381_var_β:            add              rsp, 16;                   jmp   n1380_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n1382_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1839:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1839]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1838_240
                        add              rsp, 16;                   jmp   n1381_var_β
.Lx1838_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1383_call_α
n1382_call_β:           add              rsp, 16;                   jmp   n1381_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1383_call_α:           sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1841_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + node_repr_alpha]; jmp   rax
.Lx1841_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1841_240
                        add              rsp, 32;                   jmp   n1381_var_β
.Lx1841_240:                                                        jmp   n1384_binop_α
n1383_call_β:                                                       jmp   n1381_var_β
.Lx1841_0:              .quad            .Lx1841_0_s
.Lx1841_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n1384_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1385_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1385_assign_α:         mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax                      # r
                        mov              qword ptr [r9 + 392], rdx; jmp   n1386_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1386_statement_end_α:  add              rsp, 112;                  jmp   n1387_statement_begin_α
#=======================================================================================================================
#                sep            =  ', '
#-----------------------------------------------------------------------------------------------------------------------
n1387_statement_begin_α:                                            jmp   n1388_lit_string_α
n1387_statement_begin_β:                                            jmp   n1391_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1388_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1848_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1389_assign_α
.Lx1848_0:              .quad            .Lx1848_0_s
.Lx1848_0_s:            .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n1389_assign_α:         mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax                      # sep
                        mov              qword ptr [r9 + 424], rdx; jmp   n1390_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1390_statement_end_α:  add              rsp, 16;                   jmp   n1391_statement_begin_α
#=======================================================================================================================
#                c              =  tail(c)                    :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n1391_statement_begin_α:                                            jmp   n1392_var_α
n1391_statement_begin_β:                                            jmp   n1373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1392_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1393_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1393_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1856:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1856]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1855_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1391_statement_begin_β
.Lx1855_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1394_assign_α
n1393_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1391_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1394_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n1395_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1395_statement_end_α:  add              rsp, 32;                   jmp   n1373_statement_begin_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1396_statement_begin_α:                                            jmp   n1397_var_α
n1396_statement_begin_β:                                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1397_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # r
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1398_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1863_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1399_binop_α
n1398_lit_string_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n1396_statement_begin_β
.Lx1863_0:              .quad            .Lx1863_0_s
.Lx1863_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n1399_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1400_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1400_assign_α:         mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax                      # node_repr
                        mov              qword ptr [r9 + 360], rdx; jmp   n1401_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1401_statement_end_α:  add              rsp, 48;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1402_goto_α:                                                       jmp   n1373_statement_begin_α
n1402_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1403_goto_α:                                                       jmp   n1396_statement_begin_α
n1403_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1404_goto_α:                                                       jmp   n1272_statement_begin_α
n1404_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1405_goto_α:                                                       jmp   n1406_statement_begin_α
n1405_goto_β:                                                       jmp   main_ω
#=======================================================================================================================
# pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
#-----------------------------------------------------------------------------------------------------------------------
n1406_statement_begin_α:                                            jmp   n1407_var_α
n1406_statement_begin_β:                                            jmp   n1419_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1407_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1408_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1408_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1875_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1409_binop_α
n1408_lit_string_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n1406_statement_begin_β
.Lx1875_0:              .quad            .Lx1875_0_s
.Lx1875_0_s:            .string          "( "
#-----------------------------------------------------------------------------------------------------------------------
n1409_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1410_lit_string_α
n1409_binop_β:          add              rsp, 16;                   jmp   n1408_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n1410_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1877_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1411_binop_α
n1410_lit_string_β:     add              rsp, 16;                   jmp   n1409_binop_β
.Lx1877_0:              .quad            .Lx1877_0_s
.Lx1877_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n1411_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1412_var_α
n1411_binop_β:          add              rsp, 16;                   jmp   n1410_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n1412_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1413_call_α
n1412_var_β:            add              rsp, 16;                   jmp   n1411_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n1413_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1881:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1881]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1880_240
                        add              rsp, 16;                   jmp   n1412_var_β
.Lx1880_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1414_binop_α
n1413_call_β:           add              rsp, 16;                   jmp   n1412_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1414_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1415_lit_string_α
n1414_binop_β:          add              rsp, 32;                   jmp   n1412_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1415_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1883_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1416_binop_α
n1415_lit_string_β:     add              rsp, 16;                   jmp   n1414_binop_β
.Lx1883_0:              .quad            .Lx1883_0_s
.Lx1883_0_s:            .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n1416_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1417_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1417_assign_α:         mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1885_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1418_statement_end_α
.Lx1885_0:              .quad            .Lx1885_0_s
.Lx1885_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n1418_statement_end_α:  add              rsp, 160;                  jmp   n1419_statement_begin_α
#=======================================================================================================================
#                c              =  tail(node)
#-----------------------------------------------------------------------------------------------------------------------
n1419_statement_begin_α:                                            jmp   n1420_var_α
n1419_statement_begin_β:                                            jmp   n1424_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1420_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # node
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1421_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1421_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1892:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1892]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1891_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1419_statement_begin_β
.Lx1891_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1422_assign_α
n1421_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1419_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1422_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n1423_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1423_statement_end_α:  add              rsp, 32;                   jmp   n1424_statement_begin_α
#=======================================================================================================================
# pp_wch         DIFFER(c)                                    :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n1424_statement_begin_α:                                            jmp   n1425_var_α
n1424_statement_begin_β:                                            jmp   n1461_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1425_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1426_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1426_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1900:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1900]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1899_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1424_statement_begin_β
.Lx1899_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1427_statement_end_α
n1426_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1424_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1427_statement_end_α:  add              rsp, 32;                   jmp   n1428_statement_begin_α
#=======================================================================================================================
#                nxt            =  tail(c)
#-----------------------------------------------------------------------------------------------------------------------
n1428_statement_begin_α:                                            jmp   n1429_var_α
n1428_statement_begin_β:                                            jmp   n1433_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1429_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1430_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1430_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1907:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1907]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1906_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1428_statement_begin_β
.Lx1906_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1431_assign_α
n1430_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1428_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1431_assign_α:         mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # nxt
                        mov              qword ptr [r9 + 504], rdx; jmp   n1432_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1432_statement_end_α:  add              rsp, 32;                   jmp   n1433_statement_begin_α
#=======================================================================================================================
#                DIFFER(nxt)                                  :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n1433_statement_begin_α:                                            jmp   n1434_var_α
n1433_statement_begin_β:                                            jmp   n1450_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1434_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1435_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1435_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1915:           .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1915]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1914_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1433_statement_begin_β
.Lx1914_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1436_statement_end_α
n1435_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1433_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1436_statement_end_α:  add              rsp, 32;                   jmp   n1437_statement_begin_α
#=======================================================================================================================
#                pp_node(head(c), indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n1437_statement_begin_α:                                            jmp   n1438_var_α
n1437_statement_begin_β:                                            jmp   n1446_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1438_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1439_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1439_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1922:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1922]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1921_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1437_statement_begin_β
.Lx1921_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1440_var_α
n1439_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1437_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1440_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1441_lit_integer_α
n1440_var_β:            add              rsp, 16
                        add              rsp, 32;                   jmp   n1437_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1441_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1924_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1442_binop_α
n1441_lit_integer_β:    add              rsp, 16;                   jmp   n1440_var_β
.Lx1924_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1442_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx1925_240
                        add              rsp, 16;                   jmp   n1441_lit_integer_β
.Lx1925_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1443_lit_string_α
n1442_binop_β:          add              rsp, 16;                   jmp   n1441_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n1443_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1926_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1444_call_α
n1443_lit_string_β:     add              rsp, 16;                   jmp   n1442_binop_β
.Lx1926_0:              .quad            .Lx1926_0_s
.Lx1926_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n1444_call_α:           sub              rsp, 16
                        sub              rsp, 80
                        mov              rax, qword ptr [rsp + 160]                     # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 112]                     # binop
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]                      # lit_string
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        mov              eax, 3
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1928_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + pp_node_alpha]; jmp   rax
.Lx1928_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1928_240
                        add              rsp, 16;                   jmp   n1443_lit_string_β
.Lx1928_240:                                                        jmp   n1445_statement_end_α
n1444_call_β:                                                       jmp   n1443_lit_string_β
.Lx1928_0:              .quad            .Lx1928_0_s
.Lx1928_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n1445_statement_end_α:  add              rsp, 112;                  jmp   n1446_statement_begin_α
#=======================================================================================================================
#                c              =  nxt                        :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n1446_statement_begin_α:                                            jmp   n1447_var_α
n1446_statement_begin_β:                                            jmp   n1424_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1447_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # nxt
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1448_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1448_assign_α:         mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # c
                        mov              qword ptr [r9 + 408], rdx; jmp   n1449_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1449_statement_end_α:  add              rsp, 16;                   jmp   n1424_statement_begin_α
#=======================================================================================================================
# pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1450_statement_begin_α:                                            jmp   n1451_var_α
n1450_statement_begin_β:                                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1451_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # c
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1452_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1452_call_α:           sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1941:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1941]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1940_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n1450_statement_begin_β
.Lx1940_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1453_var_α
n1452_call_β:           add              rsp, 16
                        add              rsp, 16;                   jmp   n1450_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1453_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1454_lit_integer_α
n1453_var_β:            add              rsp, 16
                        add              rsp, 32;                   jmp   n1450_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1454_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1943_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1455_binop_α
n1454_lit_integer_β:    add              rsp, 16;                   jmp   n1453_var_β
.Lx1943_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1455_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx1944_240
                        add              rsp, 16;                   jmp   n1454_lit_integer_β
.Lx1944_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1456_lit_string_α
n1455_binop_β:          add              rsp, 16;                   jmp   n1454_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n1456_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1945_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n1457_var_α
n1456_lit_string_β:     add              rsp, 16;                   jmp   n1455_binop_β
.Lx1945_0:              .quad            .Lx1945_0_s
.Lx1945_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n1457_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n1458_binop_α
n1457_var_β:            add              rsp, 16;                   jmp   n1456_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n1458_binop_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n1459_call_α
n1458_binop_β:          add              rsp, 16;                   jmp   n1457_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1459_call_α:           sub              rsp, 16
                        sub              rsp, 80
                        mov              rax, qword ptr [rsp + 192]                     # call
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 144]                     # binop
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        mov              eax, 3
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx1949_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + pp_node_alpha]; jmp   rax
.Lx1949_2:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx1949_240
                        add              rsp, 16;                   jmp   n1458_binop_β
.Lx1949_240:                                                        jmp   n1460_statement_end_α
n1459_call_β:                                                       jmp   n1458_binop_β
.Lx1949_0:              .quad            .Lx1949_0_s
.Lx1949_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n1460_statement_end_α:  add              rsp, 144;                  jmp   RETURN
#=======================================================================================================================
# pp_wdone                                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1461_statement_begin_α:                                            jmp   n1462_statement_end_α
n1461_statement_begin_β:                                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1462_statement_end_α:                                              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1463_goto_α:                                                       jmp   n1424_statement_begin_α
n1463_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1464_goto_α:                                                       jmp   n1450_statement_begin_α
n1464_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1465_goto_α:                                                       jmp   n1461_statement_begin_α
n1465_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1466_goto_α:                                                       jmp   n1277_statement_begin_α
n1466_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1467_goto_α:                                                       jmp   n1282_statement_begin_α
n1467_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1468_goto_α:                                                       jmp   n1284_statement_begin_α
n1468_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1469_goto_α:                                                       jmp   n1296_statement_begin_α
n1469_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1470_goto_α:                                                       jmp   n1324_statement_begin_α
n1470_goto_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 lea              rdi, [rip + .S13]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                lea              rdi, [rip + .S14]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              qword ptr [rsp + 32], 2                        # result
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx1968_0]
                        mov              qword ptr [rsp + 40], rax; jmp   n1474_call_α
.Lx1968_0:              .quad            .Lx1968_0_s
.Lx1968_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1474_call_α:           mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1970:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1970]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                  je    FRETURN
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   RETURN
n1474_call_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                    jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "PAT$0$V0"
.S1:                    .string          "*pop_list"
.S2:                    .string          "PAT$3$V0"
.S3:                    .string          "tag"
.S4:                    .string          "IR_MATCH_ARBNO: unreachable beta (defer-unsafe decline)"
.S5:                    .string          "IR_MATCH_ARBNO: body contains a suspend-capable DEFER (pat_static=0) -- anchor-relative slot not yet implemented (W-4)"
.S6:                    .string          "PAT$3$V2"
.S7:                    .string          "PAT$3$V1"
.S8:                    .string          "wrd"
.S9:                    .string          "group"
.S10:                   .string          "PAT$4$V0"
.S11:                   .string          "nl"
.S12:                   .string          "PATV$0"
.S13:                   .string          "BOMB-RETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
.S14:                   .string          "BOMB-FRETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
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
