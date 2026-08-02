                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__stack_init_α
proc_LBL__stack_init_α:
proc_LBL__stack_init_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                                                                                        jmp   n1_lit_string_α
n0_goto_β:
                                                                                        jmp   proc_LBL__stack_init_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rsp + 16], 2                        # result
                        mov              dword ptr [rsp + 20], 0
                        mov              rax, qword ptr [rip + .Lx5_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n2_assign_α
.Lx5_0:
                        .quad            .Lx5_0_s
.Lx5_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n3_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n3_save_restore_α:
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
                        .globl           proc_LBL__stack_push_α
proc_LBL__stack_push_α:
proc_LBL__stack_push_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n9_goto_α:
                        sub              rsp, 128
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
                                                                                        jmp   n10_var_α
n9_goto_β:
                                                                                        jmp   proc_LBL__stack_push_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n12_call_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn25:               .string          "slink"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]                          # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx24_240
                        add              rsp, 128
                                                                                        jmp   n14_var_α
.Lx24_240:
                                                                                        jmp   n13_assign_α
n12_call_β:
                        add              rsp, 128
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 128
                                                                                        jmp   n14_var_α
#=======================================================================================================================
#         stack_push(w1)
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_field_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx28_0]                 # fname
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx28_240
                        add              rsp, 16
                                                                                        jmp   n17_lit_string_α
.Lx28_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_assign_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # field_var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_call_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd32:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd32]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx31_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n20_save_restore_α
.Lx31_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_save_restore_α
n18_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n20_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n19_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
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
                        .globl           proc_LBL__stack_pop_α
proc_LBL__stack_pop_α:
proc_LBL__stack_pop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                        sub              rsp, 416
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
                                                                                        jmp   n38_var_α
n37_goto_β:
                                                                                        jmp   proc_LBL__stack_pop_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n39_call_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn66:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]                          # fn
                        lea              rsi, [rsp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx65_240
                        add              rsp, 416
                                                                                        jmp   n62_save_restore_α
.Lx65_240:
                                                                                        jmp   n40_var_α
n39_call_β:
                        add              rsp, 416
                                                                                        jmp   n62_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 272], rax                     # result
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n41_call_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn69:               .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]                          # fn
                        lea              rsi, [rsp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx68_240
                        add              rsp, 416
                                                                                        jmp   n48_var_α
.Lx68_240:
                                                                                        jmp   n42_var_α
n41_call_β:
                        add              rsp, 416
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 336], rax                     # result
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n43_call_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn72:               .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]                          # fn
                        lea              rsi, [rsp + 304]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n45_var_α
                                                                                        jmp   n44_assign_α
n43_call_β:
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 400], rax                     # result
                        mov              qword ptr [rsp + 408], rdx
                                                                                        jmp   n46_call_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn76:               .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]                          # fn
                        lea              rsi, [rsp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n61_save_restore_α
                                                                                        jmp   n47_assign_α
n46_call_β:
                                                                                        jmp   n61_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n61_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 624], rax                     # result
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n49_call_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn80:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]                          # fn
                        lea              rsi, [rsp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n53_var_α
                                                                                        jmp   n50_var_α
n49_call_β:
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 688], rax                     # result
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n51_call_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn83:               .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]                          # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n53_var_α
                                                                                        jmp   n52_assign_var_α
n51_call_β:
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_var_α:
                        mov              rdi, qword ptr [rsp + 576]                     # var
                        mov              rsi, qword ptr [rsp + 584]                     # var
                        mov              rdx, qword ptr [rsp + 640]                     # val
                        mov              rcx, qword ptr [rsp + 648]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n53_var_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 768], rax                     # result
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n54_call_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn87:               .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]                          # fn
                        lea              rsi, [rsp + 736]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n56_lit_string_α
                                                                                        jmp   n55_assign_α
n54_call_β:
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rsp + 832], 2                       # result
                        mov              dword ptr [rsp + 836], 5
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n57_call_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn91:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]                          # fn
                        lea              rsi, [rsp + 800]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n59_lit_string_α
                                                                                        jmp   n58_assign_α
n57_call_β:
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rsp + 32], 2                        # result
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n60_call_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn95:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]                          # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n62_save_restore_α
                                                                                        jmp   n61_save_restore_α
n60_call_β:
                                                                                        jmp   n62_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n61_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n62_save_restore_α:
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
                        .globl           proc_LBL__stack_peek_α
proc_LBL__stack_peek_α:
proc_LBL__stack_peek_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                        sub              rsp, 816
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
                                                                                        jmp   n101_var_α
n100_goto_β:
                                                                                        jmp   proc_LBL__stack_peek_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 736], rax                     # result
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n102_call_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn111:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]                         # fn
                        lea              rsi, [rsp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx110_240
                        add              rsp, 816
                                                                                        jmp   n107_save_restore_α
.Lx110_240:
                                                                                        jmp   n103_var_α
n102_call_β:
                        add              rsp, 816
                                                                                        jmp   n107_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 800], rax                     # result
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n104_call_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn114:              .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]                         # fn
                        lea              rsi, [rsp + 768]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n106_save_restore_α
                                                                                        jmp   n105_assign_α
n104_call_β:
                                                                                        jmp   n106_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [1879052368], rax                    # stack_peek
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n106_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n106_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n107_save_restore_α:
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
                        .globl           proc_LBL__stack_top_α
proc_LBL__stack_top_α:
proc_LBL__stack_top_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n120_goto_α:
                        sub              rsp, 1040
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
                                                                                        jmp   n121_var_α
n120_goto_β:
                                                                                        jmp   proc_LBL__stack_top_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 992], rax                     # result
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n122_call_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn133:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]                         # fn
                        lea              rsi, [rsp + 960]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx132_240
                        add              rsp, 1040
                                                                                        jmp   n129_save_restore_α
.Lx132_240:
                                                                                        jmp   n123_var_α
n122_call_β:
                        add              rsp, 1040
                                                                                        jmp   n129_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1008], rax                    # result
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n124_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx135_0]                # fname
                        mov              rsi, qword ptr [rsp + 1008]                    # obj
                        mov              rdx, qword ptr [rsp + 1016]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n126_lit_string_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n125_assign_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [1879052384], rax                    # stack_top
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n126_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n127_call_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn139:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]                         # fn
                        lea              rsi, [rsp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx138_240
                        add              rsp, 1040
                                                                                        jmp   n129_save_restore_α
.Lx138_240:
                                                                                        jmp   n128_save_restore_α
n127_call_β:
                        add              rsp, 1040
                                                                                        jmp   n129_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n128_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n129_save_restore_α:
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
                        .globl           proc_LBL__stack_depth_α
proc_LBL__stack_depth_α:
proc_LBL__stack_depth_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n144_goto_α:
                        sub              rsp, 1120
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
                                                                                        jmp   n145_lit_integer_α
n144_goto_β:
                                                                                        jmp   proc_LBL__stack_depth_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rsp + 912], 3                       # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n146_assign_α
.Lx160_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 928], rax                     # result
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n148_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 992], rax                     # result
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n150_call_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn166:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]                         # fn
                        lea              rsi, [rsp + 960]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx165_240
                        add              rsp, 1120
                                                                                        jmp   n158_save_restore_α
.Lx165_240:
                                                                                        jmp   n151_var_α
n150_call_β:
                        add              rsp, 1120
                                                                                        jmp   n158_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 1024], rax                    # result
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rsp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n153_binop_α
.Lx168_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n153_binop_α:
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 3
                                                                                        jne   .Lx169_0
                        mov              rax, qword ptr [rsp + 1032]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1008], 3
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n154_assign_α
.Lx169_0:
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx169_240
                        add              rsp, 32
                                                                                        jmp   n155_var_α
.Lx169_240:
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n154_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n155_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 1104], rax                    # result
                        mov              qword ptr [rsp + 1112], rdx
                                                                                        jmp   n156_call_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn173:              .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]                         # fn
                        lea              rsi, [rsp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n149_var_α
                                                                                        jmp   n157_assign_α
n156_call_β:
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n158_save_restore_α:
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
n177_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n178_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n178_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx182_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx182_1
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "stack_init"
.Lx182_1:
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
n183_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n184_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n184_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx188_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx188_1
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "stack_push"
.Lx188_1:
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
n189_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n190_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n190_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx194_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx194_1
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "stack_pop"
.Lx194_1:
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
n195_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n196_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n196_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx200_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx200_1
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "stack_peek"
.Lx200_1:
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
n201_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n202_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n202_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx206_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx206_1
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "stack_top"
.Lx206_1:
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
n207_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n208_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n208_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx212_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx212_1
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "stack_depth"
.Lx212_1:
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         stack_push(99)
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n214_call_α
n213_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n215_lit_string_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "slink(snext,sval)"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd362:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd362]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx361_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n215_lit_string_α
.Lx361_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32
                                                                                        jmp   n215_lit_string_α
n214_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n215_lit_string_α
#=======================================================================================================================
#         stack_push(99)
#         OUTPUT = myvar                  ;* 99
#         subject = 'hello world'
#         OUTPUT = stack_pop()            ;* hello
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        sub              rsp, 2560
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
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 1184], 2                      # result
                        mov              dword ptr [rsp + 1188], 4
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n216_lit_integer_α
n215_lit_string_β:
                                                                                        jmp   n218_call_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:
                        mov              qword ptr [rsp + 1200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n217_call_α
n216_lit_integer_β:
                                                                                        jmp   n218_call_α
.Lx364_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn366:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]                         # fn
                        lea              rsi, [rsp + 1136]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    n218_call_α
                                                                                        jmp   n218_call_α
n217_call_β:
                                                                                        jmp   n218_call_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx368_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx368_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx368_6]
                        lea              rdx, [rip + .Lx368_7]
                                                                                        jmp   rax
.Lx368_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx368_2
.Lx368_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx368_2
.Lx368_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx368_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx368_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx368_3]
                        lea              rdx, [rip + .Lx368_4]
                                                                                        jmp   rax
.Lx368_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx368_2
.Lx368_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx368_2
.Lx368_1:
                        call             rt_faildescr@PLT
.Lx368_2:
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    n219_lit_string_α
                                                                                        jmp   n219_lit_string_α
n218_call_β:
                                                                                        jmp   n219_lit_string_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rsp + 1296], 2                      # result
                        mov              dword ptr [rsp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 1304], rax
                                                                                        jmp   n220_call_α
n219_lit_string_β:
                                                                                        jmp   n221_lit_string_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx371_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx371_5
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx371_6]
                        lea              rdx, [rip + .Lx371_7]
                                                                                        jmp   rax
.Lx371_6:
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
                                                                                        jmp   .Lx371_2
.Lx371_7:
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
                                                                                        jmp   .Lx371_2
.Lx371_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx371_20
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx371_21
.Lx371_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1296]                    # v
                        mov              rdx, qword ptr [rsp + 1304]                    # v
                        call             rt_arg_stage@PLT
.Lx371_21:
                        mov              rdi, qword ptr [rip + .Lx371_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx371_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4]
                                                                                        jmp   rax
.Lx371_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_1:
                        call             rt_faildescr@PLT
.Lx371_2:
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n221_lit_string_α
                                                                                        jmp   n221_lit_string_α
n220_call_β:
                                                                                        jmp   n221_lit_string_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rsp + 1360], 2                      # result
                        mov              dword ptr [rsp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 1368], rax
                                                                                        jmp   n222_call_α
n221_lit_string_β:
                                                                                        jmp   n223_lit_string_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n222_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx374_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx374_5
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx374_6]
                        lea              rdx, [rip + .Lx374_7]
                                                                                        jmp   rax
.Lx374_6:
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
                                                                                        jmp   .Lx374_2
.Lx374_7:
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
                                                                                        jmp   .Lx374_2
.Lx374_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_20
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx374_21
.Lx374_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1360]                    # v
                        mov              rdx, qword ptr [rsp + 1368]                    # v
                        call             rt_arg_stage@PLT
.Lx374_21:
                        mov              rdi, qword ptr [rip + .Lx374_0]                # name
                        mov              esi, 1                                         # nargs
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
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n223_lit_string_α
                                                                                        jmp   n223_lit_string_α
n222_call_β:
                                                                                        jmp   n223_lit_string_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rsp + 1424], 2                      # result
                        mov              dword ptr [rsp + 1428], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   n224_call_α
n223_lit_string_β:
                                                                                        jmp   n225_call_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx377_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx377_5
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx377_6]
                        lea              rdx, [rip + .Lx377_7]
                                                                                        jmp   rax
.Lx377_6:
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
                                                                                        jmp   .Lx377_2
.Lx377_7:
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
                                                                                        jmp   .Lx377_2
.Lx377_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx377_20
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx377_21
.Lx377_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1424]                    # v
                        mov              rdx, qword ptr [rsp + 1432]                    # v
                        call             rt_arg_stage@PLT
.Lx377_21:
                        mov              rdi, qword ptr [rip + .Lx377_0]                # name
                        mov              esi, 1                                         # nargs
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
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n225_call_α
                                                                                        jmp   n225_call_α
n224_call_β:
                                                                                        jmp   n225_call_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx379_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx379_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx379_6]
                        lea              rdx, [rip + .Lx379_7]
                                                                                        jmp   rax
.Lx379_6:
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
                                                                                        jmp   .Lx379_2
.Lx379_7:
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
                                                                                        jmp   .Lx379_2
.Lx379_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx379_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx379_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx379_3]
                        lea              rdx, [rip + .Lx379_4]
                                                                                        jmp   rax
.Lx379_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx379_2
.Lx379_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx379_2
.Lx379_1:
                        call             rt_faildescr@PLT
.Lx379_2:
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n227_call_α
                                                                                        jmp   n226_assign_α
n225_call_β:
                                                                                        jmp   n227_call_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_α:
                        mov              rsi, qword ptr [rsp + 1440]                    # val
                        mov              rdx, qword ptr [rsp + 1448]                    # val
                        mov              rdi, qword ptr [rip + .Lx380_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n227_call_α
n226_assign_β:
                                                                                        jmp   n227_call_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx382_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx382_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx382_6]
                        lea              rdx, [rip + .Lx382_7]
                                                                                        jmp   rax
.Lx382_6:
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
                                                                                        jmp   .Lx382_2
.Lx382_7:
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
                                                                                        jmp   .Lx382_2
.Lx382_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx382_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx382_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx382_3]
                        lea              rdx, [rip + .Lx382_4]
                                                                                        jmp   rax
.Lx382_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx382_2
.Lx382_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx382_2
.Lx382_1:
                        call             rt_faildescr@PLT
.Lx382_2:
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104
                                                                                        je    n229_call_α
                                                                                        jmp   n228_assign_α
n227_call_β:
                                                                                        jmp   n229_call_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:
                        mov              rsi, qword ptr [rsp + 1472]                    # val
                        mov              rdx, qword ptr [rsp + 1480]                    # val
                        mov              rdi, qword ptr [rip + .Lx383_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n229_call_α
n228_assign_β:
                                                                                        jmp   n229_call_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx385_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx385_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx385_6]
                        lea              rdx, [rip + .Lx385_7]
                                                                                        jmp   rax
.Lx385_6:
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
                                                                                        jmp   .Lx385_2
.Lx385_7:
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
                                                                                        jmp   .Lx385_2
.Lx385_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx385_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx385_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx385_3]
                        lea              rdx, [rip + .Lx385_4]
                                                                                        jmp   rax
.Lx385_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx385_2
.Lx385_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx385_2
.Lx385_1:
                        call             rt_faildescr@PLT
.Lx385_2:
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n231_call_α
                                                                                        jmp   n230_assign_α
n229_call_β:
                                                                                        jmp   n231_call_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:
                        mov              rsi, qword ptr [rsp + 1504]                    # val
                        mov              rdx, qword ptr [rsp + 1512]                    # val
                        mov              rdi, qword ptr [rip + .Lx386_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n231_call_α
n230_assign_β:
                                                                                        jmp   n231_call_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx388_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx388_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx388_6]
                        lea              rdx, [rip + .Lx388_7]
                                                                                        jmp   rax
.Lx388_6:
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
                                                                                        jmp   .Lx388_2
.Lx388_7:
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
                                                                                        jmp   .Lx388_2
.Lx388_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx388_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx388_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx388_3]
                        lea              rdx, [rip + .Lx388_4]
                                                                                        jmp   rax
.Lx388_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx388_2
.Lx388_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx388_2
.Lx388_1:
                        call             rt_faildescr@PLT
.Lx388_2:
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104
                                                                                        je    n233_call_α
                                                                                        jmp   n232_assign_α
n231_call_β:
                                                                                        jmp   n233_call_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:
                        mov              rsi, qword ptr [rsp + 1536]                    # val
                        mov              rdx, qword ptr [rsp + 1544]                    # val
                        mov              rdi, qword ptr [rip + .Lx389_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n233_call_α
n232_assign_β:
                                                                                        jmp   n233_call_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx391_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx391_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx391_6]
                        lea              rdx, [rip + .Lx391_7]
                                                                                        jmp   rax
.Lx391_6:
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
                                                                                        jmp   .Lx391_2
.Lx391_7:
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
                                                                                        jmp   .Lx391_2
.Lx391_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx391_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx391_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx391_3]
                        lea              rdx, [rip + .Lx391_4]
                                                                                        jmp   rax
.Lx391_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx391_2
.Lx391_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx391_2
.Lx391_1:
                        call             rt_faildescr@PLT
.Lx391_2:
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n235_call_α
                                                                                        jmp   n234_assign_α
n233_call_β:
                                                                                        jmp   n235_call_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:
                        mov              rsi, qword ptr [rsp + 1568]                    # val
                        mov              rdx, qword ptr [rsp + 1576]                    # val
                        mov              rdi, qword ptr [rip + .Lx392_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n235_call_α
n234_assign_β:
                                                                                        jmp   n235_call_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx394_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx394_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx394_6]
                        lea              rdx, [rip + .Lx394_7]
                                                                                        jmp   rax
.Lx394_6:
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
                                                                                        jmp   .Lx394_2
.Lx394_7:
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
                                                                                        jmp   .Lx394_2
.Lx394_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx394_0]                # name
                        mov              esi, 0                                         # nargs
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
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_α
                                                                                        jmp   n236_assign_α
n235_call_β:
                                                                                        jmp   n237_call_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:
                        mov              rsi, qword ptr [rsp + 1600]                    # val
                        mov              rdx, qword ptr [rsp + 1608]                    # val
                        mov              rdi, qword ptr [rip + .Lx395_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n237_call_α
n236_assign_β:
                                                                                        jmp   n237_call_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx397_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx397_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx397_6]
                        lea              rdx, [rip + .Lx397_7]
                                                                                        jmp   rax
.Lx397_6:
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
                                                                                        jmp   .Lx397_2
.Lx397_7:
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
                                                                                        jmp   .Lx397_2
.Lx397_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx397_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx397_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx397_3]
                        lea              rdx, [rip + .Lx397_4]
                                                                                        jmp   rax
.Lx397_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx397_2
.Lx397_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx397_2
.Lx397_1:
                        call             rt_faildescr@PLT
.Lx397_2:
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx397_240
                        add              rsp, 2560
                                                                                        jmp   n240_lit_string_α
.Lx397_240:
                                                                                        jmp   n238_lit_string_α
n237_call_β:
                                                                                        jmp   n240_lit_string_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rsp + 1680], 2                      # result
                        mov              dword ptr [rsp + 1684], 30
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 1688], rax
                                                                                        jmp   n239_assign_α
n238_lit_string_β:
                                                                                        jmp   n242_call_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "FAIL: empty pop should FRETURN"
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_α:
                        mov              rsi, qword ptr [rsp + 1680]                    # val
                        mov              rdx, qword ptr [rsp + 1688]                    # val
                        mov              rdi, qword ptr [rip + .Lx399_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n242_call_α
n239_assign_β:
                                                                                        jmp   n242_call_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rsp + 1824], 2                      # result
                        mov              dword ptr [rsp + 1828], 8
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n241_assign_α
n240_lit_string_β:
                                                                                        jmp   n242_call_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "empty ok"
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rsi, qword ptr [rsp + 1824]                    # val
                        mov              rdx, qword ptr [rsp + 1832]                    # val
                        mov              rdi, qword ptr [rip + .Lx401_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n242_call_α
n241_assign_β:
                                                                                        jmp   n242_call_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx403_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx403_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx403_6]
                        lea              rdx, [rip + .Lx403_7]
                                                                                        jmp   rax
.Lx403_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx403_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx403_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx403_3]
                        lea              rdx, [rip + .Lx403_4]
                                                                                        jmp   rax
.Lx403_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_1:
                        call             rt_faildescr@PLT
.Lx403_2:
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n243_lit_string_α
                                                                                        jmp   n243_lit_string_α
n242_call_β:
                                                                                        jmp   n243_lit_string_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rsp + 1776], 2                      # result
                        mov              dword ptr [rsp + 1780], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 1784], rax
                                                                                        jmp   n244_call_α
n243_lit_string_β:
                                                                                        jmp   n245_call_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx406_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx406_5
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx406_6]
                        lea              rdx, [rip + .Lx406_7]
                                                                                        jmp   rax
.Lx406_6:
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
                                                                                        jmp   .Lx406_2
.Lx406_7:
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
                                                                                        jmp   .Lx406_2
.Lx406_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx406_20
                        mov              rax, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx406_21
.Lx406_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1776]                    # v
                        mov              rdx, qword ptr [rsp + 1784]                    # v
                        call             rt_arg_stage@PLT
.Lx406_21:
                        mov              rdi, qword ptr [rip + .Lx406_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx406_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4]
                                                                                        jmp   rax
.Lx406_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_1:
                        call             rt_faildescr@PLT
.Lx406_2:
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              eax, 104
                                                                                        je    n245_call_α
                                                                                        jmp   n245_call_α
n244_call_β:
                                                                                        jmp   n245_call_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # stack_peek
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx408_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx408_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx408_6]
                        lea              rdx, [rip + .Lx408_7]
                                                                                        jmp   rax
.Lx408_6:
                        mov              rdi, qword ptr [1879052368]
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx408_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx408_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4]
                                                                                        jmp   rax
.Lx408_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_1:
                        call             rt_faildescr@PLT
.Lx408_2:
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              eax, 104
                                                                                        je    n247_call_α
                                                                                        jmp   n246_assign_α
n245_call_β:
                                                                                        jmp   n247_call_α
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "stack_peek"
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:
                        mov              rsi, qword ptr [rsp + 1792]                    # val
                        mov              rdx, qword ptr [rsp + 1800]                    # val
                        mov              rdi, qword ptr [rip + .Lx409_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n247_call_α
n246_assign_β:
                                                                                        jmp   n247_call_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx411_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx411_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx411_6]
                        lea              rdx, [rip + .Lx411_7]
                                                                                        jmp   rax
.Lx411_6:
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
                                                                                        jmp   .Lx411_2
.Lx411_7:
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
                                                                                        jmp   .Lx411_2
.Lx411_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx411_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx411_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx411_3]
                        lea              rdx, [rip + .Lx411_4]
                                                                                        jmp   rax
.Lx411_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx411_2
.Lx411_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx411_2
.Lx411_1:
                        call             rt_faildescr@PLT
.Lx411_2:
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n249_call_α
                                                                                        jmp   n248_assign_α
n247_call_β:
                                                                                        jmp   n249_call_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:
                        mov              rsi, qword ptr [rsp + 1824]                    # val
                        mov              rdx, qword ptr [rsp + 1832]                    # val
                        mov              rdi, qword ptr [rip + .Lx412_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n249_call_α
n248_assign_β:
                                                                                        jmp   n249_call_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx414_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx414_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx414_6]
                        lea              rdx, [rip + .Lx414_7]
                                                                                        jmp   rax
.Lx414_6:
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
                                                                                        jmp   .Lx414_2
.Lx414_7:
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
                                                                                        jmp   .Lx414_2
.Lx414_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx414_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx414_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx414_3]
                        lea              rdx, [rip + .Lx414_4]
                                                                                        jmp   rax
.Lx414_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx414_2
.Lx414_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx414_2
.Lx414_1:
                        call             rt_faildescr@PLT
.Lx414_2:
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n251_call_α
                                                                                        jmp   n250_assign_α
n249_call_β:
                                                                                        jmp   n251_call_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:
                        mov              rsi, qword ptr [rsp + 1856]                    # val
                        mov              rdx, qword ptr [rsp + 1864]                    # val
                        mov              rdi, qword ptr [rip + .Lx415_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n251_call_α
n250_assign_β:
                                                                                        jmp   n251_call_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx417_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx417_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx417_6]
                        lea              rdx, [rip + .Lx417_7]
                                                                                        jmp   rax
.Lx417_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx417_2
.Lx417_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx417_2
.Lx417_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx417_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx417_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx417_3]
                        lea              rdx, [rip + .Lx417_4]
                                                                                        jmp   rax
.Lx417_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx417_2
.Lx417_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx417_2
.Lx417_1:
                        call             rt_faildescr@PLT
.Lx417_2:
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n252_lit_integer_α
                                                                                        jmp   n252_lit_integer_α
n251_call_β:
                                                                                        jmp   n252_lit_integer_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:
                        mov              qword ptr [rsp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1976], rax
                                                                                        jmp   n253_call_α
n252_lit_integer_β:
                                                                                        jmp   n254_lit_integer_α
.Lx418_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx420_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx420_5
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx420_6]
                        lea              rdx, [rip + .Lx420_7]
                                                                                        jmp   rax
.Lx420_6:
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
                                                                                        jmp   .Lx420_2
.Lx420_7:
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
                                                                                        jmp   .Lx420_2
.Lx420_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx420_20
                        mov              rax, qword ptr [rsp + 1968]
                        mov              rdx, qword ptr [rsp + 1976]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx420_21
.Lx420_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1968]                    # v
                        mov              rdx, qword ptr [rsp + 1976]                    # v
                        call             rt_arg_stage@PLT
.Lx420_21:
                        mov              rdi, qword ptr [rip + .Lx420_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx420_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4]
                                                                                        jmp   rax
.Lx420_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_1:
                        call             rt_faildescr@PLT
.Lx420_2:
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              eax, 104
                                                                                        je    n254_lit_integer_α
                                                                                        jmp   n254_lit_integer_α
n253_call_β:
                                                                                        jmp   n254_lit_integer_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rsp + 2032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   n255_call_α
n254_lit_integer_β:
                                                                                        jmp   n256_lit_string_α
.Lx421_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx423_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx423_5
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx423_6]
                        lea              rdx, [rip + .Lx423_7]
                                                                                        jmp   rax
.Lx423_6:
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
                                                                                        jmp   .Lx423_2
.Lx423_7:
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
                                                                                        jmp   .Lx423_2
.Lx423_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx423_20
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx423_21
.Lx423_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2032]                    # v
                        mov              rdx, qword ptr [rsp + 2040]                    # v
                        call             rt_arg_stage@PLT
.Lx423_21:
                        mov              rdi, qword ptr [rip + .Lx423_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx423_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx423_3]
                        lea              rdx, [rip + .Lx423_4]
                                                                                        jmp   rax
.Lx423_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx423_2
.Lx423_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx423_2
.Lx423_1:
                        call             rt_faildescr@PLT
.Lx423_2:
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              eax, 104
                                                                                        je    n256_lit_string_α
                                                                                        jmp   n256_lit_string_α
n255_call_β:
                                                                                        jmp   n256_lit_string_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rsp + 2096], 2                      # result
                        mov              dword ptr [rsp + 2100], 5
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 2104], rax
                                                                                        jmp   n257_call_α
n256_lit_string_β:
                                                                                        jmp   n258_var_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "myvar"
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx426_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx426_5
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx426_6]
                        lea              rdx, [rip + .Lx426_7]
                                                                                        jmp   rax
.Lx426_6:
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
                                                                                        jmp   .Lx426_2
.Lx426_7:
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
                                                                                        jmp   .Lx426_2
.Lx426_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_20
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx426_21
.Lx426_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2096]                    # v
                        mov              rdx, qword ptr [rsp + 2104]                    # v
                        call             rt_arg_stage@PLT
.Lx426_21:
                        mov              rdi, qword ptr [rip + .Lx426_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx426_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx426_3]
                        lea              rdx, [rip + .Lx426_4]
                                                                                        jmp   rax
.Lx426_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_1:
                        call             rt_faildescr@PLT
.Lx426_2:
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n258_var_α
                                                                                        jmp   n258_var_α
n257_call_β:
                                                                                        jmp   n258_var_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        mov              rax, qword ptr [1879052464]                    # myvar
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2112], rax                    # result
                        mov              qword ptr [rsp + 2120], rdx
                                                                                        jmp   n259_assign_α
n258_var_β:
                                                                                        jmp   n260_call_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rsi, qword ptr [rsp + 2112]                    # val
                        mov              rdx, qword ptr [rsp + 2120]                    # val
                        mov              rdi, qword ptr [rip + .Lx428_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n260_call_α
n259_assign_β:
                                                                                        jmp   n260_call_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx430_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx430_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx430_6]
                        lea              rdx, [rip + .Lx430_7]
                                                                                        jmp   rax
.Lx430_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx430_2
.Lx430_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx430_2
.Lx430_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx430_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx430_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx430_3]
                        lea              rdx, [rip + .Lx430_4]
                                                                                        jmp   rax
.Lx430_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx430_2
.Lx430_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx430_2
.Lx430_1:
                        call             rt_faildescr@PLT
.Lx430_2:
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n261_lit_string_α
                                                                                        jmp   n261_lit_string_α
n260_call_β:
                                                                                        jmp   n261_lit_string_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rsp + 2160], 2                      # result
                        mov              dword ptr [rsp + 2164], 11
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 2168], rax
                                                                                        jmp   n262_assign_α
n261_lit_string_β:
                                                                                        jmp   n263_var_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:
                        mov              rax, qword ptr [rsp + 2160]
                        mov              rdx, qword ptr [rsp + 2168]
                        mov              qword ptr [1879052480], rax                    # subject
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n263_var_α
n262_assign_β:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        mov              rax, qword ptr [1879052480]                    # subject
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 2416], rax                    # result
                        mov              qword ptr [rsp + 2424], rdx
                                                                                        jmp   n264_match_begin_α
n263_var_β:
                        add              rsp, 2560
                                                                                        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n264_match_begin_α:
                        mov              qword ptr [rsp + 2240], r13                    # outer_Σ
                        mov              qword ptr [rsp + 2248], r14                    # outer_δ
                        mov              qword ptr [rsp + 2256], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 2264], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 2416]                    # lo
                        mov              rsi, qword ptr [rsp + 2424]                    # hi
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
.Lx435_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n265_match_sequence_α
n264_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx435_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx435_1
                                                                                        jmp   .Lx435_0
.Lx435_1:
                        mov              r10, qword ptr [1879048192]
.Lx435_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx435_2
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
                        add              rsp, 2560
                                                                                        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_match_sequence_α:
                                                                                        jmp   n281_match_assign_save_α
n265_match_sequence_as:
                                                                                        jmp   n266_match_end_α
n265_match_sequence_β:
                                                                                        jmp   n279_match_assign_cond_β
n265_match_sequence_af:
                                                                                        jmp   n264_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n266_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx439_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx439_9
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
.Lx439_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx439_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx439_1:
                        test             rax, rax
                                                                                        je    .Lx439_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx439_3]
                        lea              rdx, [rip + .Lx439_4]
                                                                                        jmp   rax
.Lx439_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx439_1
.Lx439_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx439_1
.Lx439_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx439_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx439_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 2240]                    # outer_Σ
                        mov              r14, qword ptr [rsp + 2248]                    # outer_δ
                        mov              r15, qword ptr [rsp + 2256]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 2264]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n267_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rsp + 2288], 2                      # result
                        mov              dword ptr [rsp + 2292], 0
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 2296], rax
                                                                                        jmp   n268_match_replace_α
n267_lit_string_β:
                        add              rsp, 2560
                                                                                        jmp   n284_lit_string_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n268_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx442_0]                # name
                        mov              rsi, qword ptr [rsp + 2416]                    # sub_lo
                        mov              rdx, qword ptr [rsp + 2424]                    # sub_hi
                        mov              ecx, dword ptr [rsp + 2192]                    # start
                        mov              r8, qword ptr [rsp + 2216]                     # end
                        lea              r9, [rsp + 2288]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx442_1
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "subject"
.Lx442_1:
                                                                                        jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [1879052496]                    # w1
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 2480], rax                    # result
                        mov              qword ptr [rsp + 2488], rdx
                                                                                        jmp   n270_call_α
n269_var_β:
                                                                                        jmp   n271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx445_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx445_5
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx445_6]
                        lea              rdx, [rip + .Lx445_7]
                                                                                        jmp   rax
.Lx445_6:
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
                                                                                        jmp   .Lx445_2
.Lx445_7:
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
                                                                                        jmp   .Lx445_2
.Lx445_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx445_20
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx445_21
.Lx445_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2480]                    # v
                        mov              rdx, qword ptr [rsp + 2488]                    # v
                        call             rt_arg_stage@PLT
.Lx445_21:
                        mov              rdi, qword ptr [rip + .Lx445_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx445_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx445_3]
                        lea              rdx, [rip + .Lx445_4]
                                                                                        jmp   rax
.Lx445_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx445_2
.Lx445_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx445_2
.Lx445_1:
                        call             rt_faildescr@PLT
.Lx445_2:
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n271_var_α
                                                                                        jmp   n271_var_α
n270_call_β:
                                                                                        jmp   n271_var_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:
                        mov              rax, qword ptr [1879052512]                    # w2
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 2544], rax                    # result
                        mov              qword ptr [rsp + 2552], rdx
                                                                                        jmp   n272_call_α
n271_var_β:
                                                                                        jmp   n273_call_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx448_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx448_5
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx448_6]
                        lea              rdx, [rip + .Lx448_7]
                                                                                        jmp   rax
.Lx448_6:
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
                                                                                        jmp   .Lx448_2
.Lx448_7:
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
                                                                                        jmp   .Lx448_2
.Lx448_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx448_20
                        mov              rax, qword ptr [rsp + 2544]
                        mov              rdx, qword ptr [rsp + 2552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx448_21
.Lx448_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2544]                    # v
                        mov              rdx, qword ptr [rsp + 2552]                    # v
                        call             rt_arg_stage@PLT
.Lx448_21:
                        mov              rdi, qword ptr [rip + .Lx448_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx448_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx448_3]
                        lea              rdx, [rip + .Lx448_4]
                                                                                        jmp   rax
.Lx448_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx448_2
.Lx448_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx448_2
.Lx448_1:
                        call             rt_faildescr@PLT
.Lx448_2:
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n273_call_α
                                                                                        jmp   n273_call_α
n272_call_β:
                                                                                        jmp   n273_call_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx450_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx450_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx450_6]
                        lea              rdx, [rip + .Lx450_7]
                                                                                        jmp   rax
.Lx450_6:
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
                                                                                        jmp   .Lx450_2
.Lx450_7:
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
                                                                                        jmp   .Lx450_2
.Lx450_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx450_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx450_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx450_3]
                        lea              rdx, [rip + .Lx450_4]
                                                                                        jmp   rax
.Lx450_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx450_2
.Lx450_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx450_2
.Lx450_1:
                        call             rt_faildescr@PLT
.Lx450_2:
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              eax, 104
                                                                                        je    n275_call_α
                                                                                        jmp   n274_assign_α
n273_call_β:
                                                                                        jmp   n275_call_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:
                        mov              rsi, qword ptr [rsp + 2720]                    # val
                        mov              rdx, qword ptr [rsp + 2728]                    # val
                        mov              rdi, qword ptr [rip + .Lx451_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n275_call_α
n274_assign_β:
                                                                                        jmp   n275_call_α
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx453_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx453_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx453_6]
                        lea              rdx, [rip + .Lx453_7]
                                                                                        jmp   rax
.Lx453_6:
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
                                                                                        jmp   .Lx453_2
.Lx453_7:
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
                                                                                        jmp   .Lx453_2
.Lx453_5:
                        add              rsp, 32
                        mov              rdi, qword ptr [rip + .Lx453_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx453_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx453_3]
                        lea              rdx, [rip + .Lx453_4]
                                                                                        jmp   rax
.Lx453_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx453_2
.Lx453_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx453_2
.Lx453_1:
                        call             rt_faildescr@PLT
.Lx453_2:
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx453_240
                        add              rsp, 2560
                                                                                        jmp   main_γ
.Lx453_240:
                                                                                        jmp   n276_assign_α
n275_call_β:
                                                                                        jmp   main_γ
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:
                        mov              rsi, qword ptr [rsp + 2752]                    # val
                        mov              rdx, qword ptr [rsp + 2760]                    # val
                        mov              rdi, qword ptr [rip + .Lx454_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 2560
                                                                                        jmp   main_γ
n276_assign_β:
                        add              rsp, 2560
                                                                                        jmp   main_γ
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n277_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n278_match_rem_α
n277_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n280_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n278_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n279_match_assign_cond_α
n278_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n280_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n279_match_assign_cond_α:
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
                                                                                        jmp   n266_match_end_α
n279_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n278_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n280_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n283_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 32
                                                                                        jne   n283_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n277_match_assign_save_α
n280_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n283_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n281_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n282_match_break_α
n281_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n264_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n282_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx465_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx465_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n264_match_begin_β
.Lx465_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx465_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx465_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n264_match_begin_β
.Lx465_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx465_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx465_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n264_match_begin_β
.Lx465_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx465_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx465_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n264_match_begin_β
.Lx465_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx465_1
                        add              ecx, 1
                                                                                        jmp   .Lx465_0
.Lx465_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n283_match_assign_cond_α
n282_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n264_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n283_match_assign_cond_α:
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
                                                                                        jmp   n280_match_lit_α
n283_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n282_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rsp + 2784], 2                      # result
                        mov              dword ptr [rsp + 2788], 26
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 2792], rax
                                                                                        jmp   n285_assign_α
n284_lit_string_β:
                                                                                        jmp   main_γ
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "FAIL: pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rsi, qword ptr [rsp + 2784]                    # val
                        mov              rdx, qword ptr [rsp + 2792]                    # val
                        mov              rdi, qword ptr [rip + .Lx469_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n285_assign_β:
                                                                                        jmp   main_γ
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n286_goto_α:
                                                                                        jmp   n287_lit_string_α
n286_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rsp + 176], 2                       # result
                        mov              dword ptr [rsp + 180], 0
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n288_assign_α
n287_lit_string_β:
                                                                                        jmp   n289_save_restore_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n289_save_restore_α
n288_assign_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n289_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n290_goto_α:
                                                                                        jmp   n215_lit_string_α
n290_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n291_goto_α:
                                                                                        jmp   n292_var_α
n291_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 256], rax                     # result
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n293_var_α
n292_var_β:
                                                                                        jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 272], rax                     # result
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n294_call_α
n293_var_β:
                                                                                        jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn480:              .string          "slink"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]                         # fn
                        lea              rsi, [rsp + 208]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n296_var_α
                                                                                        jmp   n295_assign_α
n294_call_β:
                                                                                        jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n296_var_α
n295_assign_β:
                                                                                        jmp   n296_var_α
#=======================================================================================================================
#         stack_push(w1)
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n297_field_var_α
n296_var_β:
                        add              rsp, 16
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n297_field_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx483_0]                # fname
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx483_240
                        add              rsp, 16
                                                                                        jmp   n299_lit_string_α
.Lx483_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n298_assign_α
n297_field_var_β:
                        add              rsp, 16
                                                                                        jmp   n299_lit_string_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # field_var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n299_lit_string_α
n298_assign_β:
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n300_call_α
n299_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n301_save_restore_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd487:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd487]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx486_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n301_save_restore_α
.Lx486_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n289_save_restore_α
n300_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n301_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n301_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:
                                                                                        jmp   n215_lit_string_α
n302_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:
                                                                                        jmp   n304_var_α
n303_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 368], rax                     # result
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n305_call_α
n304_var_β:
                                                                                        jmp   n301_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn494:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn494]                         # fn
                        lea              rsi, [rsp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n301_save_restore_α
                                                                                        jmp   n306_var_α
n305_call_β:
                                                                                        jmp   n301_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 432], rax                     # result
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n307_call_α
n306_var_β:
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn497:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn497]                         # fn
                        lea              rsi, [rsp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n314_var_α
                                                                                        jmp   n308_var_α
n307_call_β:
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 496], rax                     # result
                        mov              qword ptr [rsp + 504], rdx
                                                                                        jmp   n309_call_α
n308_var_β:
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn500:              .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn500]                         # fn
                        lea              rsi, [rsp + 464]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n311_var_α
                                                                                        jmp   n310_assign_α
n309_call_β:
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n311_var_α
n310_assign_β:
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 560], rax                     # result
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n312_call_α
n311_var_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn504:              .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]                         # fn
                        lea              rsi, [rsp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n289_save_restore_α
                                                                                        jmp   n313_assign_α
n312_call_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n289_save_restore_α
n313_assign_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 624], rax                     # result
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n315_call_α
n314_var_β:
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn508:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]                         # fn
                        lea              rsi, [rsp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n319_var_α
                                                                                        jmp   n316_var_α
n315_call_β:
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 688], rax                     # result
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n317_call_α
n316_var_β:
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn511:              .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]                         # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n319_var_α
                                                                                        jmp   n318_assign_var_α
n317_call_β:
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_var_α:
                        mov              rdi, qword ptr [rsp + 576]                     # var
                        mov              rsi, qword ptr [rsp + 584]                     # var
                        mov              rdx, qword ptr [rsp + 640]                     # val
                        mov              rcx, qword ptr [rsp + 648]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n319_var_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n319_var_α
n318_assign_var_β:
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 768], rax                     # result
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n320_call_α
n319_var_β:
                                                                                        jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn515:              .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]                         # fn
                        lea              rsi, [rsp + 736]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n322_lit_string_α
                                                                                        jmp   n321_assign_α
n320_call_β:
                                                                                        jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n322_lit_string_α
n321_assign_β:
                                                                                        jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rsp + 832], 2                       # result
                        mov              dword ptr [rsp + 836], 5
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n323_call_α
n322_lit_string_β:
                                                                                        jmp   n299_lit_string_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn519:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn519]                         # fn
                        lea              rsi, [rsp + 800]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n299_lit_string_α
                                                                                        jmp   n324_assign_α
n323_call_β:
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n299_lit_string_α
n324_assign_β:
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:
                                                                                        jmp   n314_var_α
n325_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:
                                                                                        jmp   n215_lit_string_α
n326_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:
                                                                                        jmp   n328_var_α
n327_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n329_call_α
n328_var_β:
                                                                                        jmp   n301_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn526:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]                         # fn
                        lea              rsi, [rsp + 864]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n301_save_restore_α
                                                                                        jmp   n330_var_α
n329_call_β:
                                                                                        jmp   n301_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n331_call_α
n330_var_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn529:              .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]                         # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n289_save_restore_α
                                                                                        jmp   n332_assign_α
n331_call_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n332_assign_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [1879052368], rax                    # stack_peek
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n289_save_restore_α
n332_assign_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:
                                                                                        jmp   n215_lit_string_α
n333_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:
                                                                                        jmp   n335_var_α
n334_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1024], rax                    # result
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n336_call_α
n335_var_β:
                                                                                        jmp   n301_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn535:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn535]                         # fn
                        lea              rsi, [rsp + 992]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n301_save_restore_α
                                                                                        jmp   n337_var_α
n336_call_β:
                                                                                        jmp   n301_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n338_field_var_α
n337_var_β:
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n338_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx537_0]                # fname
                        mov              rsi, qword ptr [rsp + 1040]                    # obj
                        mov              rdx, qword ptr [rsp + 1048]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n299_lit_string_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                                                                                        jmp   n339_assign_α
n338_field_var_β:
                                                                                        jmp   n299_lit_string_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052384], rax                    # stack_top
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n299_lit_string_α
n339_assign_β:
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:
                                                                                        jmp   n215_lit_string_α
n340_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_goto_α:
                                                                                        jmp   n342_lit_integer_α
n341_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:
                        mov              qword ptr [rsp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n343_assign_α
n342_lit_integer_β:
                                                                                        jmp   n344_var_α
.Lx541_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n344_var_α
n343_assign_β:
                                                                                        jmp   n344_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1088], rax                    # result
                        mov              qword ptr [rsp + 1096], rdx
                                                                                        jmp   n345_assign_α
n344_var_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n346_var_α
n345_assign_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 1152], rax                    # result
                        mov              qword ptr [rsp + 1160], rdx
                                                                                        jmp   n347_call_α
n346_var_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn547:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn547]                         # fn
                        lea              rsi, [rsp + 1120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n289_save_restore_α
                                                                                        jmp   n348_var_α
n347_call_β:
                                                                                        jmp   n289_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 1184], rax                    # result
                        mov              qword ptr [rsp + 1192], rdx
                                                                                        jmp   n349_lit_integer_α
n348_var_β:
                                                                                        jmp   n352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rsp + 1200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n350_binop_α
n349_lit_integer_β:
                                                                                        jmp   n352_var_α
.Lx549_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n350_binop_α:
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 3
                                                                                        jne   .Lx550_0
                        mov              rax, qword ptr [rsp + 1192]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1168], 3
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n351_assign_α
.Lx550_0:
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx550_240
                        add              rsp, 32
                                                                                        jmp   n352_var_α
.Lx550_240:
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                                                                                        jmp   n351_assign_α
n350_binop_β:
                        add              rsp, 32
                                                                                        jmp   n352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n351_assign_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n352_var_α
n351_assign_β:
                                                                                        jmp   n352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 1264], rax                    # result
                        mov              qword ptr [rsp + 1272], rdx
                                                                                        jmp   n353_call_α
n352_var_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn554:              .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]                         # fn
                        lea              rsi, [rsp + 1232]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    n346_var_α
                                                                                        jmp   n354_assign_α
n353_call_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n346_var_α
n354_assign_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n355_goto_α:
                                                                                        jmp   n346_var_α
n355_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n356_goto_α:
                                                                                        jmp   n215_lit_string_α
n356_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_goto_α:
                                                                                        jmp   n238_lit_string_α
n357_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n358_goto_α:
                                                                                        jmp   n242_call_α
n358_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n359_goto_α:
                                                                                        jmp   n284_lit_string_α
n359_goto_β:
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
                        .section         .rodata
.S0:                    .string          "w2"
.S1:                    .string          "w1"
                        .text
                        .section         .note.GNU-stack,"",@progbits
