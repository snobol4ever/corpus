                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__lwr_α
proc_LBL__lwr_α:
proc_LBL__lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                        sub              rsp, 144
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
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n2_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx9_0]                  # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n3_keyword_snobol4_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx10_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n4_call_α
.Lx10_0:
                        .quad            .Lx10_0_s
.Lx10_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn12:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn12]                          # fn
                        lea              rsi, [rsp + 32]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n6_save_restore_α
                                                                                        jmp   n5_assign_α
n4_call_β:
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n6_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_β:
                                                                                        jmp   proc_LBL__lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__upr_α
proc_LBL__upr_α:
proc_LBL__upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n16_goto_α:
                        sub              rsp, 272
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
                                                                                        jmp   n17_var_α
n16_goto_β:
                                                                                        jmp   proc_LBL__upr_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 224], rax                     # result
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n18_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx25_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n19_keyword_snobol4_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n19_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx26_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n20_call_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn28:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]                          # fn
                        lea              rsi, [rsp + 160]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n22_save_restore_α
                                                                                        jmp   n21_assign_α
n20_call_β:
                                                                                        jmp   n22_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052304], rax                    # upr
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n22_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n22_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_β:
                                                                                        jmp   proc_LBL__upr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__cap_α
proc_LBL__cap_α:
proc_LBL__cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:
                        sub              rsp, 736
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
                                                                                        jmp   n33_var_α
n32_goto_β:
                                                                                        jmp   proc_LBL__cap_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 448], rax                     # result
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rsp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n35_lit_integer_α
.Lx52_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rsp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n36_call_α
.Lx53_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn55:               .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]                          # fn
                        lea              rsi, [rsp + 384]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx54_240
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
.Lx54_240:
                                                                                        jmp   n37_keyword_snobol4_α
n36_call_β:
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n37_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx56_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                                                                                        jmp   n38_keyword_snobol4_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n38_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx57_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n39_call_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn59:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]                          # fn
                        lea              rsi, [rsp + 304]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx58_240
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
.Lx58_240:
                                                                                        jmp   n40_var_α
n39_call_β:
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 672], rax                     # result
                        mov              qword ptr [rsp + 680], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rsp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n42_call_α
.Lx61_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn63:               .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]                          # fn
                        lea              rsi, [rsp + 624]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx62_240
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
.Lx62_240:
                                                                                        jmp   n43_keyword_snobol4_α
n42_call_β:
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n43_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx64_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n44_keyword_snobol4_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n44_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx65_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                                                                                        jmp   n45_call_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn67:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]                          # fn
                        lea              rsi, [rsp + 544]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx66_240
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
.Lx66_240:
                                                                                        jmp   n46_binop_α
n45_call_β:
                        add              rsp, 736
                                                                                        jmp   n49_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:
                        mov              rdi, qword ptr [rsp + 288]                     # a
                        mov              rsi, qword ptr [rsp + 296]                     # a
                        mov              rdx, qword ptr [rsp + 528]                     # b
                        mov              rcx, qword ptr [rsp + 536]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [1879052320], rax                    # cap
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n48_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n48_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n49_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_β:
                                                                                        jmp   proc_LBL__cap_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__icase_α
proc_LBL__icase_α:
proc_LBL__icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n74_goto_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n75_var_α
n74_goto_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n76_call_α
n75_var_β:
                        add              rsp, 16
                                                                                        jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn110:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]                         # fn
                        lea              rsi, [rsp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 16
                                                                                        jmp   n78_var_α
.Lx109_240:
                                                                                        jmp   n77_save_restore_α
n76_call_β:
                        add              rsp, 16
                                                                                        jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n79_match_begin_α
n78_var_β:
                                                                                        jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_match_begin_α:
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
                        mov              qword ptr [rbp + 888], rbp                     # old_rbp
                        mov              rdi, qword ptr [rbp + 1040]                    # lo
                        mov              rsi, qword ptr [rbp + 1048]                    # hi
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
.Lx115_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n80_match_sequence_α
n79_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx115_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx115_1
                                                                                        jmp   .Lx115_0
.Lx115_1:
                        mov              r10, qword ptr [1879048192]
.Lx115_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx115_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_match_sequence_α:
                                                                                        jmp   n90_lit_integer_α
n80_match_sequence_as:
                                                                                        jmp   n81_match_end_α
n80_match_sequence_β:
                                                                                        jmp   n89_match_assign_cond_β
n80_match_sequence_af:
                                                                                        jmp   n79_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n81_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx119_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx119_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 896], eax
                        mov              qword ptr [rsp + 920], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx119_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx119_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx119_1:
                        test             rax, rax
                                                                                        je    .Lx119_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx119_3]
                        lea              rdx, [rip + .Lx119_4]
                                                                                        jmp   rax
.Lx119_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx119_1
.Lx119_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx119_1
.Lx119_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx119_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx119_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n83_match_replace_α
n82_lit_string_β:
                                                                                        jmp   n92_var_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n83_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx122_0]                # name
                        mov              rsi, qword ptr [rbp + 1040]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1048]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx122_1
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "str"
.Lx122_1:
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rsp + 1104], 2                      # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n85_call_α
n84_lit_string_β:
                                                                                        jmp   n75_var_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn125:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]                         # fn
                        lea              rsi, [rsp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n75_var_α
                                                                                        jmp   n86_assign_α
n85_call_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n75_var_α
n86_assign_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n88_match_any_α
n87_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n79_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n88_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx130_239
                        add              rsp, 16
                                                                                        jmp   n79_match_begin_β
.Lx130_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx130_240
                        add              rsp, 16
                                                                                        jmp   n79_match_begin_β
.Lx130_240:
                        add              r14d, 1
                                                                                        jmp   n89_match_assign_cond_α
n88_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n79_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n89_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n81_match_end_α
n89_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n88_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n91_match_pos_α
n90_lit_integer_β:
                                                                                        jmp   n79_match_begin_β
.Lx133_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n91_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n79_match_begin_β
                                                                                        jmp   n87_match_assign_save_α
n91_match_pos_β:
                                                                                        jmp   n79_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n93_match_begin_α
n92_var_β:
                                                                                        jmp   n103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_match_begin_α:
                        mov              qword ptr [rbp + 1184], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1192], r14                    # outer_δ
                        mov              qword ptr [rbp + 1200], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1208], rax                    # cap_gen
                        mov              qword ptr [rbp + 1176], rbp                    # old_rbp
                        mov              rdi, qword ptr [rbp + 1328]                    # lo
                        mov              rsi, qword ptr [rbp + 1336]                    # hi
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
.Lx137_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n94_match_sequence_α
n93_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx137_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx137_1
                                                                                        jmp   .Lx137_0
.Lx137_1:
                        mov              r10, qword ptr [1879048192]
.Lx137_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx137_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1176]                    # old_rbp
                                                                                        jmp   n103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_match_sequence_α:
                                                                                        jmp   n101_lit_integer_α
n94_match_sequence_as:
                                                                                        jmp   n95_match_end_α
n94_match_sequence_β:
                                                                                        jmp   n100_match_assign_cond_β
n94_match_sequence_af:
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx141_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx141_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1184], eax
                        mov              qword ptr [rsp + 1208], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx141_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx141_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx141_1:
                        test             rax, rax
                                                                                        je    .Lx141_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx141_3]
                        lea              rdx, [rip + .Lx141_4]
                                                                                        jmp   rax
.Lx141_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx141_1
.Lx141_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx141_1
.Lx141_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx141_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx141_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 1232], 2                      # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n97_match_replace_α
n96_lit_string_β:
                                                                                        jmp   n103_var_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n97_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx144_0]                # name
                        mov              rsi, qword ptr [rbp + 1328]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1336]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1136]                    # start
                        mov              r8, qword ptr [rbp + 1160]                     # end
                        lea              r9, [rbp + 1232]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx144_1
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "str"
.Lx144_1:
                        mov              rbp, qword ptr [rbp + 1176]                    # old_rbp
                                                                                        jmp   n103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n99_match_len_α
n98_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx147_240
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
.Lx147_240:
                        add              r14d, 1
                                                                                        jmp   n100_match_assign_cond_α
n99_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n95_match_end_α
n100_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n99_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n102_match_pos_α
n101_lit_integer_β:
                                                                                        jmp   n93_match_begin_β
.Lx150_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n102_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n93_match_begin_β
                                                                                        jmp   n98_match_assign_save_α
n102_match_pos_β:
                                                                                        jmp   n93_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1360], rax                    # result
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n104_var_α
n103_var_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1376], rax                    # result
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n105_binop_α
n104_var_β:
                        add              rsp, 16
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:
                        mov              rdi, qword ptr [rsp + 1360]                    # a
                        mov              rsi, qword ptr [rsp + 1368]                    # a
                        mov              rdx, qword ptr [rsp + 1376]                    # b
                        mov              rcx, qword ptr [rsp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n106_assign_α
n105_binop_β:
                        add              rsp, 32
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n75_var_α
n106_assign_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwr_α
proc_lwr_α:
proc_lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n156_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n157_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n157_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx161_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx161_1
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "lwr"
.Lx161_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_upr_α
proc_upr_α:
proc_upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n162_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n163_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n163_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx167_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx167_1
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "upr"
.Lx167_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cap_α
proc_cap_α:
proc_cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n168_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n169_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n169_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx173_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx173_1
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "cap"
.Lx173_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_icase_α
proc_icase_α:
proc_icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n174_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n175_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n175_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx179_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx179_1
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "icase"
.Lx179_1:
                                                                                        jmp   proc_icase_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_β:
                                                                                        jmp   proc_icase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n180_match_sequence_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n180_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n188_match_patref_α
n180_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n180_match_sequence_β:
                                                                                        jmp   n181_match_alternate_β
n180_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n181_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx192_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n185_var_α
.Lx192_21:
                        lea              rax, [rip + .Lx192_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n182_var_α
n181_match_alternate_s0:
                        lea              rax, [rip + .Lx192_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n181_match_alternate_as
n181_match_alternate_s1:
                        lea              rax, [rip + .Lx192_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n181_match_alternate_as
.Lx192_40:
                                                                                        jmp   n187_match_value_β
.Lx192_41:
                                                                                        jmp   n184_match_value_β
n181_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n181_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n181_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx192_19:
                                                                                        jmp   n188_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n183_call_α
n182_var_β:
                                                                                        jmp   n181_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx195_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx195_5
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx195_6]
                        lea              rdx, [rip + .Lx195_7]
                                                                                        jmp   rax
.Lx195_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx195_2
.Lx195_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx195_2
.Lx195_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx195_21
.Lx195_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx195_21:
                        mov              rdi, qword ptr [rip + .Lx195_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx195_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx195_3]
                        lea              rdx, [rip + .Lx195_4]
                                                                                        jmp   rax
.Lx195_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx195_2
.Lx195_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx195_2
.Lx195_1:
                        call             rt_faildescr@PLT
.Lx195_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n181_match_alternate_af
                                                                                        jmp   n184_match_value_α
n183_call_β:
                                                                                        jmp   n181_match_alternate_af
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n184_match_value_α:
                        lea              rdi, [rbp + 144]                               # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx196_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx196_4]
                        lea              rdx, [rip + .Lx196_5]
                                                                                        jmp   rax
.Lx196_4:
                                                                                        jmp   n181_match_alternate_s1
.Lx196_5:
                                                                                        jmp   n181_match_alternate_af
.Lx196_0:
                        lea              rdi, [rbp + 144]                               # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n181_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx196_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n181_match_alternate_s1
.Lx196_6:
                        add              rsp, 16
                                                                                        jmp   n181_match_alternate_af
n184_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 128], rax                     # result
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n186_call_α
n185_var_β:
                                                                                        jmp   n181_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx199_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx199_5
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx199_6]
                        lea              rdx, [rip + .Lx199_7]
                                                                                        jmp   rax
.Lx199_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx199_2
.Lx199_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx199_2
.Lx199_5:
                        add              rsp, 16
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx199_21:
                        mov              rdi, qword ptr [rip + .Lx199_0]                # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        je    n181_match_alternate_af
                                                                                        jmp   n187_match_value_α
n186_call_β:
                                                                                        jmp   n181_match_alternate_af
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n187_match_value_α:
                        lea              rdi, [rbp + 80]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx200_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx200_4]
                        lea              rdx, [rip + .Lx200_5]
                                                                                        jmp   rax
.Lx200_4:
                                                                                        jmp   n181_match_alternate_s0
.Lx200_5:
                                                                                        jmp   n181_match_alternate_af
.Lx200_0:
                        lea              rdi, [rbp + 80]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n181_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx200_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n181_match_alternate_s0
.Lx200_6:
                        add              rsp, 16
                                                                                        jmp   n181_match_alternate_af
n187_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n188_match_patref_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx201_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx201_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx201_10
.Lx201_9:
                        xor              eax, eax
.Lx201_10:
                        test             rax, rax
                                                                                        jz    .Lx201_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx201_4]
                        lea              rdx, [rip + .Lx201_5]
                                                                                        jmp   rax
.Lx201_4:
                                                                                        jmp   n181_match_alternate_α
.Lx201_5:
                                                                                        jmp   proc_PAT$0_ω
.Lx201_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx201_2:
                        test             rax, rax
                                                                                        je    .Lx201_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx201_7]
                        lea              rdx, [rip + .Lx201_8]
                                                                                        jmp   rax
.Lx201_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx201_2
.Lx201_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx201_2
.Lx201_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$0_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx201_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n181_match_alternate_α
.Lx201_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
n188_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx202_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx202_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx203_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx203_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx203_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx203_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__lwr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__lwr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__upr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__upr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__cap"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__cap_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__icase"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__icase_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "lwr"
.Lstartup_pp4_0:        .string          "lwr"
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
                        lea              rsi, [rip + proc_lwr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "upr"
.Lstartup_pp5_0:        .string          "upr"
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
                        lea              rsi, [rip + proc_upr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "cap"
.Lstartup_pp6_0:        .string          "cap"
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
                        lea              rsi, [rip + proc_cap_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "icase"
.Lstartup_pp7_0:        .string          "str"
.Lstartup_pp7_1:        .string          "letter"
.Lstartup_pp7_2:        .string          "ch"
                        .align           8
.Lstartup_pnames7:
                        .quad            .Lstartup_pp7_0
                        .quad            .Lstartup_pp7_1
                        .quad            .Lstartup_pp7_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + .Lstartup_pnames7]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_icase_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3
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
.Lstartup_pname8:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "lwr"
.Lgvan1:                .string          "upr"
.Lgvan2:                .string          "cap"
.Lgvan3:                .string          "icase"
.Lgvan4:                .string          "str"
.Lgvan5:                .string          "letter"
.Lgvan6:                .string          "ch"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         OUTPUT = 'no match ok'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
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
                        mov              qword ptr [rsp + 1424], 2                      # result
                        mov              dword ptr [rsp + 1428], 4
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   n205_lit_integer_α
n204_lit_string_β:
                                                                                        jmp   n207_lit_string_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:
                        mov              qword ptr [rsp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n206_call_α
n205_lit_integer_β:
                                                                                        jmp   n207_lit_string_α
.Lx322_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        .section         .rodata
.Lrkfn324:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn324]                         # fn
                        lea              rsi, [rsp + 1376]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    n207_lit_string_α
                                                                                        jmp   n207_lit_string_α
n206_call_β:
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rsp + 1504], 2                      # result
                        mov              dword ptr [rsp + 1508], 11
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 1512], rax
                                                                                        jmp   n208_call_α
n207_lit_string_β:
                                                                                        jmp   n210_lit_string_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx327_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx327_5
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx327_6]
                        lea              rdx, [rip + .Lx327_7]
                                                                                        jmp   rax
.Lx327_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx327_2
.Lx327_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx327_2
.Lx327_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx327_20
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx327_21
.Lx327_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1504]                    # v
                        mov              rdx, qword ptr [rsp + 1512]                    # v
                        call             rt_arg_stage@PLT
.Lx327_21:
                        mov              rdi, qword ptr [rip + .Lx327_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx327_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4]
                                                                                        jmp   rax
.Lx327_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx327_2
.Lx327_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx327_2
.Lx327_1:
                        call             rt_faildescr@PLT
.Lx327_2:
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n210_lit_string_α
                                                                                        jmp   n209_assign_α
n208_call_β:
                                                                                        jmp   n210_lit_string_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:
                        mov              rsi, qword ptr [rsp + 1456]                    # val
                        mov              rdx, qword ptr [rsp + 1464]                    # val
                        mov              rdi, qword ptr [rip + .Lx328_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n210_lit_string_α
n209_assign_β:
                                                                                        jmp   n210_lit_string_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rsp + 1568], 2                      # result
                        mov              dword ptr [rsp + 1572], 11
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 1576], rax
                                                                                        jmp   n211_call_α
n210_lit_string_β:
                                                                                        jmp   n213_lit_string_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n211_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx331_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx331_5
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx331_6]
                        lea              rdx, [rip + .Lx331_7]
                                                                                        jmp   rax
.Lx331_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx331_2
.Lx331_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx331_2
.Lx331_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx331_20
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx331_21
.Lx331_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1568]                    # v
                        mov              rdx, qword ptr [rsp + 1576]                    # v
                        call             rt_arg_stage@PLT
.Lx331_21:
                        mov              rdi, qword ptr [rip + .Lx331_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx331_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4]
                                                                                        jmp   rax
.Lx331_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx331_2
.Lx331_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx331_2
.Lx331_1:
                        call             rt_faildescr@PLT
.Lx331_2:
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n213_lit_string_α
                                                                                        jmp   n212_assign_α
n211_call_β:
                                                                                        jmp   n213_lit_string_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:
                        mov              rsi, qword ptr [rsp + 1520]                    # val
                        mov              rdx, qword ptr [rsp + 1528]                    # val
                        mov              rdi, qword ptr [rip + .Lx332_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n213_lit_string_α
n212_assign_β:
                                                                                        jmp   n213_lit_string_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rsp + 1632], 2                      # result
                        mov              dword ptr [rsp + 1636], 11
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 1640], rax
                                                                                        jmp   n214_call_α
n213_lit_string_β:
                                                                                        jmp   n216_lit_string_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx335_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx335_5
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx335_6]
                        lea              rdx, [rip + .Lx335_7]
                                                                                        jmp   rax
.Lx335_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx335_2
.Lx335_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx335_2
.Lx335_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx335_20
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx335_21
.Lx335_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1632]                    # v
                        mov              rdx, qword ptr [rsp + 1640]                    # v
                        call             rt_arg_stage@PLT
.Lx335_21:
                        mov              rdi, qword ptr [rip + .Lx335_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx335_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx335_3]
                        lea              rdx, [rip + .Lx335_4]
                                                                                        jmp   rax
.Lx335_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx335_2
.Lx335_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx335_2
.Lx335_1:
                        call             rt_faildescr@PLT
.Lx335_2:
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n216_lit_string_α
                                                                                        jmp   n215_assign_α
n214_call_β:
                                                                                        jmp   n216_lit_string_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:
                        mov              rsi, qword ptr [rsp + 1584]                    # val
                        mov              rdx, qword ptr [rsp + 1592]                    # val
                        mov              rdi, qword ptr [rip + .Lx336_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n216_lit_string_α
n215_assign_β:
                                                                                        jmp   n216_lit_string_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n217_match_begin_α
n216_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n224_lit_string_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n217_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1704], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1712], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1720], r14                    # outer_δ
                        mov              qword ptr [rbp + 1728], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1680], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1672], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1664], 0                      # start_δ
.Lx339_0:
                        mov              r14d, dword ptr [rbp + 1664]
                                                                                        jmp   n218_lit_string_α
n217_match_begin_β:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, r15d
                                                                                        jg    .Lx339_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx339_1
                                                                                        jmp   .Lx339_0
.Lx339_1:
                        mov              rax, qword ptr [rbp + 1672]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        mov              r10, qword ptr [1879048192]
.Lx339_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx339_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rsp + 1792], 2                      # result
                        mov              dword ptr [rsp + 1796], 5
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 1800], rax
                                                                                        jmp   n219_call_α
n218_lit_string_β:
                                                                                        jmp   n217_match_begin_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx342_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx342_5
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx342_6]
                        lea              rdx, [rip + .Lx342_7]
                                                                                        jmp   rax
.Lx342_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_20
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx342_21
.Lx342_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1792]                    # v
                        mov              rdx, qword ptr [rsp + 1800]                    # v
                        call             rt_arg_stage@PLT
.Lx342_21:
                        mov              rdi, qword ptr [rip + .Lx342_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx342_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx342_3]
                        lea              rdx, [rip + .Lx342_4]
                                                                                        jmp   rax
.Lx342_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_1:
                        call             rt_faildescr@PLT
.Lx342_2:
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n217_match_begin_α
                                                                                        jmp   n220_match_value_α
n219_call_β:
                                                                                        jmp   n217_match_begin_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n220_match_value_α:
                        lea              rdi, [rbp + 1744]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx343_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx343_4]
                        lea              rdx, [rip + .Lx343_5]
                                                                                        jmp   rax
.Lx343_4:
                                                                                        jmp   n221_match_end_α
.Lx343_5:
                                                                                        jmp   n217_match_begin_β
.Lx343_0:
                        lea              rdi, [rbp + 1744]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n217_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx343_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n221_match_end_α
.Lx343_6:
                        add              rsp, 16
                                                                                        jmp   n217_match_begin_β
n220_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n221_match_end_α:
                        mov              rax, qword ptr [rbp + 1672]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx345_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx345_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx345_1:
                        test             rax, rax
                                                                                        je    .Lx345_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx345_3]
                        lea              rdx, [rip + .Lx345_4]
                                                                                        jmp   rax
.Lx345_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx345_1
.Lx345_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx345_1
.Lx345_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx345_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx345_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rsp + 1824], 2                      # result
                        mov              dword ptr [rsp + 1828], 15
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n223_assign_α
n222_lit_string_β:
                                                                                        jmp   n224_lit_string_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_α:
                        mov              rsi, qword ptr [rsp + 1824]                    # val
                        mov              rdx, qword ptr [rsp + 1832]                    # val
                        mov              rdi, qword ptr [rip + .Lx347_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n224_lit_string_α
n223_assign_β:
                                                                                        jmp   n224_lit_string_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n225_match_begin_α
n224_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n232_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n225_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1896], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1904], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1912], r14                    # outer_δ
                        mov              qword ptr [rbp + 1920], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1928], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1872], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1864], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1856], 0                      # start_δ
.Lx350_0:
                        mov              r14d, dword ptr [rbp + 1856]
                                                                                        jmp   n226_lit_string_α
n225_match_begin_β:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, r15d
                                                                                        jg    .Lx350_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx350_1
                                                                                        jmp   .Lx350_0
.Lx350_1:
                        mov              rax, qword ptr [rbp + 1864]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1872]
                        mov              r10, qword ptr [1879048192]
.Lx350_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx350_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1904]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1912]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1920]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1928]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        mov              qword ptr [rsp + 1984], 2                      # result
                        mov              dword ptr [rsp + 1988], 5
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   n227_call_α
n226_lit_string_β:
                                                                                        jmp   n225_match_begin_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx353_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx353_5
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx353_6]
                        lea              rdx, [rip + .Lx353_7]
                                                                                        jmp   rax
.Lx353_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx353_2
.Lx353_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx353_2
.Lx353_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx353_20
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx353_21
.Lx353_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1984]                    # v
                        mov              rdx, qword ptr [rsp + 1992]                    # v
                        call             rt_arg_stage@PLT
.Lx353_21:
                        mov              rdi, qword ptr [rip + .Lx353_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx353_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx353_3]
                        lea              rdx, [rip + .Lx353_4]
                                                                                        jmp   rax
.Lx353_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx353_2
.Lx353_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx353_2
.Lx353_1:
                        call             rt_faildescr@PLT
.Lx353_2:
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n225_match_begin_α
                                                                                        jmp   n228_match_value_α
n227_call_β:
                                                                                        jmp   n225_match_begin_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n228_match_value_α:
                        lea              rdi, [rbp + 1936]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx354_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx354_4]
                        lea              rdx, [rip + .Lx354_5]
                                                                                        jmp   rax
.Lx354_4:
                                                                                        jmp   n229_match_end_α
.Lx354_5:
                                                                                        jmp   n225_match_begin_β
.Lx354_0:
                        lea              rdi, [rbp + 1936]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n225_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx354_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n229_match_end_α
.Lx354_6:
                        add              rsp, 16
                                                                                        jmp   n225_match_begin_β
n228_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n229_match_end_α:
                        mov              rax, qword ptr [rbp + 1864]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1872]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx356_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx356_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx356_1:
                        test             rax, rax
                                                                                        je    .Lx356_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx356_3]
                        lea              rdx, [rip + .Lx356_4]
                                                                                        jmp   rax
.Lx356_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx356_1
.Lx356_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx356_1
.Lx356_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx356_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx356_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1904]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1912]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1920]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1928]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n230_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rsp + 2016], 2                      # result
                        mov              dword ptr [rsp + 2020], 15
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 2024], rax
                                                                                        jmp   n231_assign_α
n230_lit_string_β:
                                                                                        jmp   n232_lit_string_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:
                        mov              rsi, qword ptr [rsp + 2016]                    # val
                        mov              rdx, qword ptr [rsp + 2024]                    # val
                        mov              rdi, qword ptr [rip + .Lx358_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n232_lit_string_α
n231_assign_β:
                                                                                        jmp   n232_lit_string_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n233_match_begin_α
n232_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n240_lit_string_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n233_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2088], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2096], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2104], r14                    # outer_δ
                        mov              qword ptr [rbp + 2112], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2120], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2064], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2056], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2048], 0                      # start_δ
.Lx361_0:
                        mov              r14d, dword ptr [rbp + 2048]
                                                                                        jmp   n234_lit_string_α
n233_match_begin_β:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, r15d
                                                                                        jg    .Lx361_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx361_1
                                                                                        jmp   .Lx361_0
.Lx361_1:
                        mov              rax, qword ptr [rbp + 2056]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2064]
                        mov              r10, qword ptr [1879048192]
.Lx361_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx361_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n240_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rsp + 2176], 2                      # result
                        mov              dword ptr [rsp + 2180], 5
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 2184], rax
                                                                                        jmp   n235_call_α
n234_lit_string_β:
                                                                                        jmp   n233_match_begin_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx364_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx364_5
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx364_6]
                        lea              rdx, [rip + .Lx364_7]
                                                                                        jmp   rax
.Lx364_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx364_2
.Lx364_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx364_2
.Lx364_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx364_20
                        mov              rax, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx364_21
.Lx364_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2176]                    # v
                        mov              rdx, qword ptr [rsp + 2184]                    # v
                        call             rt_arg_stage@PLT
.Lx364_21:
                        mov              rdi, qword ptr [rip + .Lx364_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx364_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx364_3]
                        lea              rdx, [rip + .Lx364_4]
                                                                                        jmp   rax
.Lx364_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx364_2
.Lx364_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx364_2
.Lx364_1:
                        call             rt_faildescr@PLT
.Lx364_2:
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n233_match_begin_α
                                                                                        jmp   n236_match_value_α
n235_call_β:
                                                                                        jmp   n233_match_begin_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n236_match_value_α:
                        lea              rdi, [rbp + 2128]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx365_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx365_4]
                        lea              rdx, [rip + .Lx365_5]
                                                                                        jmp   rax
.Lx365_4:
                                                                                        jmp   n237_match_end_α
.Lx365_5:
                                                                                        jmp   n233_match_begin_β
.Lx365_0:
                        lea              rdi, [rbp + 2128]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n233_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx365_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n237_match_end_α
.Lx365_6:
                        add              rsp, 16
                                                                                        jmp   n233_match_begin_β
n236_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n237_match_end_α:
                        mov              rax, qword ptr [rbp + 2056]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2064]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx367_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx367_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx367_1:
                        test             rax, rax
                                                                                        je    .Lx367_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx367_3]
                        lea              rdx, [rip + .Lx367_4]
                                                                                        jmp   rax
.Lx367_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx367_1
.Lx367_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx367_1
.Lx367_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx367_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx367_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rsp + 2208], 2                      # result
                        mov              dword ptr [rsp + 2212], 15
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n239_assign_α
n238_lit_string_β:
                                                                                        jmp   n240_lit_string_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_α:
                        mov              rsi, qword ptr [rsp + 2208]                    # val
                        mov              rdx, qword ptr [rsp + 2216]                    # val
                        mov              rdi, qword ptr [rip + .Lx369_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n240_lit_string_α
n239_assign_β:
                                                                                        jmp   n240_lit_string_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n241_match_begin_α
n240_lit_string_β:
                        add              rsp, 16
                        mov              rbp, qword ptr [rbp + 2088]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   n319_lit_string_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n241_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2280], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2288], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2296], r14                    # outer_δ
                        mov              qword ptr [rbp + 2304], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2312], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2256], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2248], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2240], 0                      # start_δ
.Lx372_0:
                        mov              r14d, dword ptr [rbp + 2240]
                                                                                        jmp   n242_lit_string_α
n241_match_begin_β:
                        add              dword ptr [rbp + 2240], 1
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, r15d
                                                                                        jg    .Lx372_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx372_1
                                                                                        jmp   .Lx372_0
.Lx372_1:
                        mov              rax, qword ptr [rbp + 2248]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2256]
                        mov              r10, qword ptr [1879048192]
.Lx372_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx372_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2288]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2296]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2304]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2312]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2248]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   n319_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rsp + 2368], 2                      # result
                        mov              dword ptr [rsp + 2372], 5
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 2376], rax
                                                                                        jmp   n243_call_α
n242_lit_string_β:
                                                                                        jmp   n241_match_begin_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # letter
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx375_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx375_5
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx375_6]
                        lea              rdx, [rip + .Lx375_7]
                                                                                        jmp   rax
.Lx375_6:
                        mov              rdi, qword ptr [1879052336]                    # icase
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx375_2
.Lx375_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax                    # ch
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # letter
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # str
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx375_2
.Lx375_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx375_20
                        mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx375_21
.Lx375_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2368]                    # v
                        mov              rdx, qword ptr [rsp + 2376]                    # v
                        call             rt_arg_stage@PLT
.Lx375_21:
                        mov              rdi, qword ptr [rip + .Lx375_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx375_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx375_3]
                        lea              rdx, [rip + .Lx375_4]
                                                                                        jmp   rax
.Lx375_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx375_2
.Lx375_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx375_2
.Lx375_1:
                        call             rt_faildescr@PLT
.Lx375_2:
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104
                                                                                        je    n241_match_begin_α
                                                                                        jmp   n244_match_value_α
n243_call_β:
                                                                                        jmp   n241_match_begin_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n244_match_value_α:
                        lea              rdi, [rbp + 2320]                              # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx376_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx376_4]
                        lea              rdx, [rip + .Lx376_5]
                                                                                        jmp   rax
.Lx376_4:
                                                                                        jmp   n245_match_end_α
.Lx376_5:
                                                                                        jmp   n241_match_begin_β
.Lx376_0:
                        lea              rdi, [rbp + 2320]                              # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n241_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx376_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n245_match_end_α
.Lx376_6:
                        add              rsp, 16
                                                                                        jmp   n241_match_begin_β
n244_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n245_match_end_α:
                        mov              rax, qword ptr [rbp + 2248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2256]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx378_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx378_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx378_1:
                        test             rax, rax
                                                                                        je    .Lx378_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx378_3]
                        lea              rdx, [rip + .Lx378_4]
                                                                                        jmp   rax
.Lx378_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx378_1
.Lx378_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx378_1
.Lx378_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx378_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx378_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2288]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2296]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2304]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2312]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rsp + 2416], 2                      # result
                        mov              dword ptr [rsp + 2420], 32
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2424], rax
                                                                                        jmp   n247_assign_α
n246_lit_string_β:
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   main_γ
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "FAIL: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:
                        mov              rsi, qword ptr [rsp + 2416]                    # val
                        mov              rdx, qword ptr [rsp + 2424]                    # val
                        mov              rdi, qword ptr [rip + .Lx380_0]                # name
                        call             NV_SET_fn@PLT
                        mov              rbp, qword ptr [rbp + 2280]                    # old_rbp
                        add              rsp, 2432
                                                                                        jmp   main_γ
n247_assign_β:
                        mov              rbp, qword ptr [rbp + 2280]
                        add              rsp, 2432
                                                                                        jmp   main_γ
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n248_goto_α:
                                                                                        jmp   n249_var_α
n248_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n250_keyword_snobol4_α
n249_var_β:
                                                                                        jmp   n254_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n250_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx383_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n251_keyword_snobol4_α
n250_keyword_snobol4_β:
                                                                                        jmp   n254_save_restore_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n251_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx384_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n252_call_α
n251_keyword_snobol4_β:
                                                                                        jmp   n254_save_restore_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn386:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn386]                         # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n254_save_restore_α
                                                                                        jmp   n253_assign_α
n252_call_β:
                                                                                        jmp   n254_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n254_save_restore_α
n253_assign_β:
                                                                                        jmp   n254_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n254_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n255_goto_α:
                                                                                        jmp   n204_lit_string_α
n255_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_goto_α:
                                                                                        jmp   n257_var_α
n256_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:
                        mov              rax, qword ptr [1879052304]                    # upr
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 256], rax                     # result
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n258_keyword_snobol4_α
n257_var_β:
                                                                                        jmp   n254_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n258_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx393_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n259_keyword_snobol4_α
n258_keyword_snobol4_β:
                                                                                        jmp   n254_save_restore_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n259_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx394_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n260_call_α
n259_keyword_snobol4_β:
                                                                                        jmp   n254_save_restore_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn396:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]                         # fn
                        lea              rsi, [rsp + 192]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n254_save_restore_α
                                                                                        jmp   n261_assign_α
n260_call_β:
                                                                                        jmp   n254_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [1879052304], rax                    # upr
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n254_save_restore_α
n261_assign_β:
                                                                                        jmp   n254_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n262_goto_α:
                                                                                        jmp   n204_lit_string_α
n262_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_goto_α:
                                                                                        jmp   n264_var_α
n263_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 480], rax                     # result
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n265_lit_integer_α
n264_var_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n266_lit_integer_α
n265_lit_integer_β:
                                                                                        jmp   n279_save_restore_α
.Lx401_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:
                        mov              qword ptr [rsp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n267_call_α
n266_lit_integer_β:
                                                                                        jmp   n279_save_restore_α
.Lx402_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn404:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn404]                         # fn
                        lea              rsi, [rsp + 416]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n279_save_restore_α
                                                                                        jmp   n268_keyword_snobol4_α
n267_call_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n268_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx405_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                                                                                        jmp   n269_keyword_snobol4_α
n268_keyword_snobol4_β:
                                                                                        jmp   n279_save_restore_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n269_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx406_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n270_call_α
n269_keyword_snobol4_β:
                                                                                        jmp   n279_save_restore_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn408:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]                         # fn
                        lea              rsi, [rsp + 336]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n279_save_restore_α
                                                                                        jmp   n271_var_α
n270_call_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:
                        mov              rax, qword ptr [1879052320]                    # cap
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 704], rax                     # result
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n272_lit_integer_α
n271_var_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:
                        mov              qword ptr [rsp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n273_call_α
n272_lit_integer_β:
                                                                                        jmp   n279_save_restore_α
.Lx410_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn412:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]                         # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n279_save_restore_α
                                                                                        jmp   n274_keyword_snobol4_α
n273_call_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n274_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx413_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n275_keyword_snobol4_α
n274_keyword_snobol4_β:
                                                                                        jmp   n279_save_restore_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n275_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx414_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                                                                                        jmp   n276_call_α
n275_keyword_snobol4_β:
                                                                                        jmp   n279_save_restore_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn416:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]                         # fn
                        lea              rsi, [rsp + 576]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n279_save_restore_α
                                                                                        jmp   n277_binop_α
n276_call_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:
                        mov              rdi, qword ptr [rsp + 320]                     # a
                        mov              rsi, qword ptr [rsp + 328]                     # a
                        mov              rdx, qword ptr [rsp + 560]                     # b
                        mov              rcx, qword ptr [rsp + 568]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n278_assign_α
n277_binop_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [1879052320], rax                    # cap
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n254_save_restore_α
n278_assign_β:
                                                                                        jmp   n279_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n279_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n280_goto_α:
                                                                                        jmp   n204_lit_string_α
n280_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n281_goto_α:
                                                                                        jmp   n282_var_α
n281_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n283_call_α
n282_var_β:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn425:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]                         # fn
                        lea              rsi, [rsp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n284_var_α
                                                                                        jmp   n254_save_restore_α
n283_call_β:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n285_match_begin_α
n284_var_β:
                                                                                        jmp   n298_var_α
#-----------------------------------------------------------------------------------------------------------------------
n285_match_begin_α:
                        mov              qword ptr [rsp + 888], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 1040]                    # lo
                        mov              rsi, qword ptr [rsp + 1048]                    # hi
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
.Lx428_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n286_match_sequence_α
n285_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx428_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx428_1
                                                                                        jmp   .Lx428_0
.Lx428_1:
                        mov              r10, qword ptr [1879048192]
.Lx428_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx428_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n298_var_α
#-----------------------------------------------------------------------------------------------------------------------
n286_match_sequence_α:
                                                                                        jmp   n296_lit_integer_α
n286_match_sequence_as:
                                                                                        jmp   n287_match_end_α
n286_match_sequence_β:
                                                                                        jmp   n295_match_assign_cond_β
n286_match_sequence_af:
                                                                                        jmp   n285_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n287_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx432_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx432_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 896], eax
                        mov              qword ptr [rsp + 920], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx432_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx432_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx432_1:
                        test             rax, rax
                                                                                        je    .Lx432_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx432_3]
                        lea              rdx, [rip + .Lx432_4]
                                                                                        jmp   rax
.Lx432_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx432_1
.Lx432_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx432_1
.Lx432_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx432_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx432_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n288_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rsp + 944], 2                       # result
                        mov              dword ptr [rsp + 948], 0
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n289_match_replace_α
n288_lit_string_β:
                                                                                        jmp   n298_var_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n289_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx435_0]                # name
                        mov              rsi, qword ptr [rbp + 1040]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1048]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 848]                     # start
                        mov              r8, qword ptr [rbp + 872]                      # end
                        lea              r9, [rbp + 944]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx435_1
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "str"
.Lx435_1:
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rsp + 1104], 2                      # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n291_call_α
n290_lit_string_β:
                                                                                        jmp   n282_var_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn438:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]                         # fn
                        lea              rsi, [rsp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n282_var_α
                                                                                        jmp   n292_assign_α
n291_call_β:
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n282_var_α
n292_assign_β:
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n293_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n294_match_any_α
n293_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n285_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n294_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx443_239
                        add              rsp, 16
                                                                                        jmp   n285_match_begin_β
.Lx443_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx443_240
                        add              rsp, 16
                                                                                        jmp   n285_match_begin_β
.Lx443_240:
                        add              r14d, 1
                                                                                        jmp   n295_match_assign_cond_α
n294_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n285_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n295_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n287_match_end_α
n295_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n294_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n297_match_pos_α
n296_lit_integer_β:
                                                                                        jmp   n285_match_begin_β
.Lx446_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n297_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n285_match_begin_β
                                                                                        jmp   n293_match_assign_save_α
n297_match_pos_β:
                                                                                        jmp   n285_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:
                        mov              rax, qword ptr [1879052352]                    # str
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 1328], rax                    # result
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n299_match_begin_α
n298_var_β:
                                                                                        jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_match_begin_α:
                        mov              qword ptr [rsp + 1176], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1184], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1192], r14                    # outer_δ
                        mov              qword ptr [rbp + 1200], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1208], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 1328]                    # lo
                        mov              rsi, qword ptr [rsp + 1336]                    # hi
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
.Lx450_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n300_match_sequence_α
n299_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx450_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx450_1
                                                                                        jmp   .Lx450_0
.Lx450_1:
                        mov              r10, qword ptr [1879048192]
.Lx450_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx450_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n300_match_sequence_α:
                                                                                        jmp   n307_lit_integer_α
n300_match_sequence_as:
                                                                                        jmp   n301_match_end_α
n300_match_sequence_β:
                                                                                        jmp   n306_match_assign_cond_β
n300_match_sequence_af:
                                                                                        jmp   n299_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n301_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx454_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1184], eax
                        mov              qword ptr [rsp + 1208], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx454_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx454_1:
                        test             rax, rax
                                                                                        je    .Lx454_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx454_3]
                        lea              rdx, [rip + .Lx454_4]
                                                                                        jmp   rax
.Lx454_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx454_1
.Lx454_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx454_1
.Lx454_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx454_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1184]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1192]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1200]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1208]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n302_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rsp + 1232], 2                      # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n303_match_replace_α
n302_lit_string_β:
                                                                                        jmp   n309_var_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n303_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx457_0]                # name
                        mov              rsi, qword ptr [rbp + 1328]                    # sub_lo
                        mov              rdx, qword ptr [rbp + 1336]                    # sub_hi
                        mov              ecx, dword ptr [rbp + 1136]                    # start
                        mov              r8, qword ptr [rbp + 1160]                     # end
                        lea              r9, [rbp + 1232]                               # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx457_1
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "str"
.Lx457_1:
                                                                                        jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n304_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n305_match_len_α
n304_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n299_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n305_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx460_240
                        add              rsp, 16
                                                                                        jmp   n299_match_begin_β
.Lx460_240:
                        add              r14d, 1
                                                                                        jmp   n306_match_assign_cond_α
n305_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n299_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n306_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n301_match_end_α
n306_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n305_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n308_match_pos_α
n307_lit_integer_β:
                                                                                        jmp   n299_match_begin_β
.Lx463_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n308_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n299_match_begin_β
                                                                                        jmp   n304_match_assign_save_α
n308_match_pos_β:
                                                                                        jmp   n299_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [1879052336]                    # icase
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1360], rax                    # result
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n310_var_α
n309_var_β:
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [1879052384]                    # ch
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1376], rax                    # result
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n311_binop_α
n310_var_β:
                        add              rsp, 16
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:
                        mov              rdi, qword ptr [rsp + 1360]                    # a
                        mov              rsi, qword ptr [rsp + 1368]                    # a
                        mov              rdx, qword ptr [rsp + 1376]                    # b
                        mov              rcx, qword ptr [rsp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n312_assign_α
n311_binop_β:
                        add              rsp, 32
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_assign_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [1879052336], rax                    # icase
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n282_var_α
n312_assign_β:
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:
                                                                                        jmp   n298_var_α
n313_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:
                                                                                        jmp   n204_lit_string_α
n314_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:
                                                                                        jmp   n224_lit_string_α
n315_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:
                                                                                        jmp   n232_lit_string_α
n316_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:
                                                                                        jmp   n240_lit_string_α
n317_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:
                                                                                        jmp   n246_lit_string_α
n318_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rsp + 2432], 2                      # result
                        mov              dword ptr [rsp + 2436], 11
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 2440], rax
                                                                                        jmp   n320_assign_α
n319_lit_string_β:
                                                                                        jmp   main_γ
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:
                        mov              rsi, qword ptr [rsp + 2432]                    # val
                        mov              rdx, qword ptr [rsp + 2440]                    # val
                        mov              rdi, qword ptr [rip + .Lx476_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n320_assign_β:
                                                                                        jmp   main_γ
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "OUTPUT"
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
.S0:                    .string          "letter"
.S1:                    .string          "ch"
.S2:                    .string          "icase"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
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
