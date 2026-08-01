                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwr_α
proc_lwr_α:
proc_lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n1_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n1_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx6_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n2_keyword_snobol4_α
.Lx6_0:
                        .quad            .Lx6_0_s
.Lx6_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx7_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n3_call_α
.Lx7_0:
                        .quad            .Lx7_0_s
.Lx7_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:
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
.Lrkfn9:                .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn9]
                        lea              rsi, [rsp + 32]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_lwr_γ
                                                                                        jmp   n4_assign_α
n3_call_β:
                                                                                        jmp   proc_lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
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
n11_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n12_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n12_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx17_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n13_keyword_snobol4_α
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n13_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx18_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n14_call_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:
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
.Lrkfn20:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rsp + 32]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_upr_γ
                                                                                        jmp   n15_assign_α
n14_call_β:
                                                                                        jmp   proc_upr_γ
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
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
n22_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rsp + 208], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n24_lit_integer_α
.Lx38_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rsp + 224], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n25_call_α
.Lx39_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn41:               .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]
                        lea              rsi, [rsp + 128]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_cap_γ
                                                                                        jmp   n26_keyword_snobol4_α
n25_call_β:
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx42_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n27_keyword_snobol4_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n27_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx43_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n28_call_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn45:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn45]
                        lea              rsi, [rsp + 48]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_cap_γ
                                                                                        jmp   n29_var_α
n28_call_β:
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rsp + 432], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n31_call_α
.Lx47_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn49:               .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rsp + 368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_cap_γ
                                                                                        jmp   n32_keyword_snobol4_α
n31_call_β:
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n32_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx50_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n33_keyword_snobol4_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n33_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n34_call_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn53:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rsp + 288]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_cap_γ
                                                                                        jmp   n35_binop_α
n34_call_β:
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                                                                                        jmp   n36_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
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
n56_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n57_call_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx63_5
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_6]
                        lea              rdx, [rip + .Lx63_7]
                                                                                        jmp   rax
.Lx63_6:
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
                                                                                        jmp   .Lx63_2
.Lx63_7:
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
                                                                                        jmp   .Lx63_2
.Lx63_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx63_20
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx63_21
.Lx63_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_arg_stage@PLT
.Lx63_21:
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx63_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_3]
                        lea              rdx, [rip + .Lx63_4]
                                                                                        jmp   rax
.Lx63_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx63_2
.Lx63_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx63_2
.Lx63_1:
                        call             rt_faildescr@PLT
.Lx63_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_icase_ω
                                                                                        jmp   n58_var_α
n57_call_β:
                                                                                        jmp   proc_icase_ω
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n59_call_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx66_5
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_6]
                        lea              rdx, [rip + .Lx66_7]
                                                                                        jmp   rax
.Lx66_6:
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
                                                                                        jmp   .Lx66_2
.Lx66_7:
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
                                                                                        jmp   .Lx66_2
.Lx66_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx66_21
.Lx66_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        call             rt_arg_stage@PLT
.Lx66_21:
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx66_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_3]
                        lea              rdx, [rip + .Lx66_4]
                                                                                        jmp   rax
.Lx66_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx66_2
.Lx66_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx66_2
.Lx66_1:
                        call             rt_faildescr@PLT
.Lx66_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_icase_ω
                                                                                        jmp   n60_call_α
n59_call_β:
                                                                                        jmp   proc_icase_ω
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn68:               .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    proc_icase_ω
                                                                                        jmp   proc_icase_γ
n60_call_β:
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n70_lit_integer_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rsp + 16], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n71_call_α
.Lx104_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn106:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n72_lit_string_α
                                                                                        jmp   n72_lit_string_α
n71_call_β:
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rsp + 96], 1
                        mov              dword ptr [rsp + 100], 11
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n73_call_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx109_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx109_5
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx109_6]
                        lea              rdx, [rip + .Lx109_7]
                                                                                        jmp   rax
.Lx109_6:
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
                                                                                        jmp   .Lx109_2
.Lx109_7:
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
                                                                                        jmp   .Lx109_2
.Lx109_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx109_20
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx109_21
.Lx109_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        call             rt_arg_stage@PLT
.Lx109_21:
                        mov              rdi, qword ptr [rip + .Lx109_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx109_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx109_3]
                        lea              rdx, [rip + .Lx109_4]
                                                                                        jmp   rax
.Lx109_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx109_2
.Lx109_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx109_2
.Lx109_1:
                        call             rt_faildescr@PLT
.Lx109_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n74_assign_α
n73_call_β:
                                                                                        jmp   n75_lit_string_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lx110_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n75_lit_string_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              dword ptr [rsp + 164], 11
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n76_call_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx113_5
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx113_6]
                        lea              rdx, [rip + .Lx113_7]
                                                                                        jmp   rax
.Lx113_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx113_2
.Lx113_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx113_2
.Lx113_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx113_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx113_21
.Lx113_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        call             rt_arg_stage@PLT
.Lx113_21:
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx113_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx113_3]
                        lea              rdx, [rip + .Lx113_4]
                                                                                        jmp   rax
.Lx113_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx113_2
.Lx113_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx113_2
.Lx113_1:
                        call             rt_faildescr@PLT
.Lx113_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n78_lit_string_α
                                                                                        jmp   n77_assign_α
n76_call_β:
                                                                                        jmp   n78_lit_string_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              rdi, qword ptr [rip + .Lx114_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n78_lit_string_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              dword ptr [rsp + 228], 11
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n79_call_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx117_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx117_5
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx117_6]
                        lea              rdx, [rip + .Lx117_7]
                                                                                        jmp   rax
.Lx117_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx117_2
.Lx117_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx117_2
.Lx117_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx117_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx117_21
.Lx117_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
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
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n81_lit_string_α
                                                                                        jmp   n80_assign_α
n79_call_β:
                                                                                        jmp   n81_lit_string_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              rdi, qword ptr [rip + .Lx118_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n81_lit_string_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 320], 1
                        mov              dword ptr [rsp + 324], 5
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n82_lit_string_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rsp + 336], 1
                        mov              dword ptr [rsp + 340], 5
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n83_call_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx122_5
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx122_6]
                        lea              rdx, [rip + .Lx122_7]
                                                                                        jmp   rax
.Lx122_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx122_2
.Lx122_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx122_2
.Lx122_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx122_20
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx122_21
.Lx122_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        call             rt_arg_stage@PLT
.Lx122_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx122_22
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx122_23
.Lx122_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        call             rt_arg_stage@PLT
.Lx122_23:
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx122_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx122_3]
                        lea              rdx, [rip + .Lx122_4]
                                                                                        jmp   rax
.Lx122_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx122_2
.Lx122_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx122_2
.Lx122_1:
                        call             rt_faildescr@PLT
.Lx122_2:
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n86_lit_string_α
                                                                                        jmp   n84_lit_string_α
n83_call_β:
                                                                                        jmp   n86_lit_string_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rsp + 240], 1
                        mov              dword ptr [rsp + 244], 15
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n85_assign_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n86_lit_string_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rsp + 432], 1
                        mov              dword ptr [rsp + 436], 5
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n87_lit_string_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rsp + 448], 1
                        mov              dword ptr [rsp + 452], 5
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n88_call_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx128_5
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx128_6]
                        lea              rdx, [rip + .Lx128_7]
                                                                                        jmp   rax
.Lx128_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_20
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx128_21
.Lx128_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        call             rt_arg_stage@PLT
.Lx128_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx128_22
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx128_23
.Lx128_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        call             rt_arg_stage@PLT
.Lx128_23:
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx128_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx128_3]
                        lea              rdx, [rip + .Lx128_4]
                                                                                        jmp   rax
.Lx128_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_1:
                        call             rt_faildescr@PLT
.Lx128_2:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n91_lit_string_α
                                                                                        jmp   n89_lit_string_α
n88_call_β:
                                                                                        jmp   n91_lit_string_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              dword ptr [rsp + 356], 15
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n90_assign_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rip + .Lx130_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n91_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rsp + 544], 1
                        mov              dword ptr [rsp + 548], 5
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n92_lit_string_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rsp + 560], 1
                        mov              dword ptr [rsp + 564], 5
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n93_call_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx134_5
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx134_6]
                        lea              rdx, [rip + .Lx134_7]
                                                                                        jmp   rax
.Lx134_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx134_2
.Lx134_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx134_2
.Lx134_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_20
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx134_21
.Lx134_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        call             rt_arg_stage@PLT
.Lx134_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_22
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx134_23
.Lx134_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        call             rt_arg_stage@PLT
.Lx134_23:
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx134_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx134_3]
                        lea              rdx, [rip + .Lx134_4]
                                                                                        jmp   rax
.Lx134_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx134_2
.Lx134_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx134_2
.Lx134_1:
                        call             rt_faildescr@PLT
.Lx134_2:
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n96_lit_string_α
                                                                                        jmp   n94_lit_string_α
n93_call_β:
                                                                                        jmp   n96_lit_string_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rsp + 464], 1
                        mov              dword ptr [rsp + 468], 15
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n95_assign_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              rdi, qword ptr [rip + .Lx136_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n96_lit_string_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 672], 1
                        mov              dword ptr [rsp + 676], 5
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n97_lit_string_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rsp + 688], 1
                        mov              dword ptr [rsp + 692], 5
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n98_call_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx140_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx140_5
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx140_6]
                        lea              rdx, [rip + .Lx140_7]
                                                                                        jmp   rax
.Lx140_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx140_2
.Lx140_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx140_2
.Lx140_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx140_20
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx140_21
.Lx140_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        call             rt_arg_stage@PLT
.Lx140_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx140_22
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx140_23
.Lx140_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        call             rt_arg_stage@PLT
.Lx140_23:
                        mov              rdi, qword ptr [rip + .Lx140_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx140_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx140_3]
                        lea              rdx, [rip + .Lx140_4]
                                                                                        jmp   rax
.Lx140_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx140_2
.Lx140_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx140_2
.Lx140_1:
                        call             rt_faildescr@PLT
.Lx140_2:
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx140_240
                        add              rsp, 704
                                                                                        jmp   n101_lit_string_α
.Lx140_240:
                                                                                        jmp   n99_lit_string_α
n98_call_β:
                                                                                        jmp   n101_lit_string_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rsp + 576], 1
                        mov              dword ptr [rsp + 580], 32
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n100_assign_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "fail: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 704
                                                                                        jmp   main_γ
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rsp + 656], 1
                        mov              dword ptr [rsp + 660], 11
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n102_assign_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              rdi, qword ptr [rip + .Lx144_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
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
                        .section         .note.GNU-stack,"",@progbits
