                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__lwr_α
proc_LBL__lwr_α:
                        .global          proc_LBL__lwr_α
                        .global          proc_LBL__lwr_β
                        .global          proc_LBL__lwr_γ
                        .global          proc_LBL__lwr_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              [rsp + 2520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
proc_LBL__lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n2_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx9_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n4_keyword_snobol4_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n4_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx12_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n5_call_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn14:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n3_op14_α
                                                                                        jmp   n6_assign_α
n5_call_β:
                                                                                        jmp   n3_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_β:
                                                                                        jmp   proc_LBL__lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2504]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lwr_ω:
                        mov              rax, [rbp + 2512]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__upr_α
proc_LBL__upr_α:
                        .global          proc_LBL__upr_α
                        .global          proc_LBL__upr_β
                        .global          proc_LBL__upr_γ
                        .global          proc_LBL__upr_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              [rsp + 2520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
proc_LBL__upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n16_goto_α:
                                                                                        jmp   n17_var_α
n16_goto_β:
                                                                                        jmp   proc_LBL__upr_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n18_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx25_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n20_keyword_snobol4_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n19_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n20_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx28_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n21_call_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn30:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rbp + 192]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n19_op14_α
                                                                                        jmp   n22_assign_α
n21_call_β:
                                                                                        jmp   n19_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n19_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_β:
                                                                                        jmp   proc_LBL__upr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2504]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__upr_ω:
                        mov              rax, [rbp + 2512]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__cap_α
proc_LBL__cap_α:
                        .global          proc_LBL__cap_α
                        .global          proc_LBL__cap_β
                        .global          proc_LBL__cap_γ
                        .global          proc_LBL__cap_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              [rsp + 2520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
proc_LBL__cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:
                                                                                        jmp   n33_var_α
n32_goto_β:
                                                                                        jmp   proc_LBL__cap_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n36_lit_integer_α
.Lx52_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n37_call_α
.Lx55_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn57:               .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rbp + 416]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n35_op14_α
                                                                                        jmp   n38_keyword_snobol4_α
n37_call_β:
                                                                                        jmp   n35_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n38_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n39_keyword_snobol4_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n40_call_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn61:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rbp + 336]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n35_op14_α
                                                                                        jmp   n41_var_α
n40_call_β:
                                                                                        jmp   n35_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n43_call_α
.Lx63_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn65:               .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n35_op14_α
                                                                                        jmp   n44_keyword_snobol4_α
n43_call_β:
                                                                                        jmp   n35_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n44_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n45_keyword_snobol4_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n45_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx67_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n46_call_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn69:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rbp + 576]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n35_op14_α
                                                                                        jmp   n47_binop_α
n46_call_β:
                                                                                        jmp   n35_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n48_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n49_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2504]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__cap_ω:
                        mov              rax, [rbp + 2512]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__icase_α
proc_LBL__icase_α:
                        .global          proc_LBL__icase_α
                        .global          proc_LBL__icase_β
                        .global          proc_LBL__icase_γ
                        .global          proc_LBL__icase_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              [rsp + 2520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
proc_LBL__icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n74_goto_α:
                                                                                        jmp   n75_var_α
n74_goto_β:
                                                                                        jmp   proc_LBL__icase_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n76_call_α
n75_var_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn110:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n77_var_α
                                                                                        jmp   n78_op14_α
n76_call_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n79_match_head_α
n77_var_β:
                                                                                        jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n79_match_head_α:
                        mov              qword ptr [rbp + 896], r13
                        mov              qword ptr [rbp + 904], r14
                        mov              qword ptr [rbp + 912], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax
                        mov              qword ptr [rbp + 888], rbp
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx115_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n81_match_sequence_α
n79_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx115_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx115_1
                                                                                        jmp   .Lx115_0
.Lx115_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx115_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx115_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]
                        mov              r14, qword ptr [rbp + 904]
                        mov              r15, qword ptr [rbp + 912]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 920]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]
                                                                                        jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n82_match_head_α
n80_var_β:
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_match_sequence_α:
                                                                                        jmp   n85_lit_integer_α
n81_match_sequence_as:
                                                                                        jmp   n84_match_release_α
n81_match_sequence_β:
                                                                                        jmp   n88_match_assign_cond_β
n81_match_sequence_af:
                                                                                        jmp   n79_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n82_match_head_α:
                        mov              qword ptr [rbp + 1200], r13
                        mov              qword ptr [rbp + 1208], r14
                        mov              qword ptr [rbp + 1216], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1224], rax
                        mov              qword ptr [rbp + 1192], rbp
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx120_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n89_match_sequence_α
n82_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx120_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx120_1
                                                                                        jmp   .Lx120_0
.Lx120_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx120_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx120_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1200]
                        mov              r14, qword ptr [rbp + 1208]
                        mov              r15, qword ptr [rbp + 1216]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1224]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1192]
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_var_α
n83_var_β:
                        add              rsp, 16
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 896], eax
                        mov              qword ptr [rsp + 920], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx123_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx123_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx123_1:
                        test             rax, rax
                                                                                        je    .Lx123_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx123_3]
                        lea              rdx, [rip + .Lx123_4]
                                                                                        jmp   rax
.Lx123_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx123_1
.Lx123_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx123_1
.Lx123_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx123_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx123_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]
                        mov              r14, qword ptr [rbp + 904]
                        mov              r15, qword ptr [rbp + 912]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 920]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n86_match_pos_α
n85_lit_integer_β:
                                                                                        jmp   n79_match_head_β
.Lx124_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n86_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n79_match_head_β
                                                                                        jmp   n87_match_assign_save_α
n86_match_pos_β:
                                                                                        jmp   n79_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n92_match_any_α
n87_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n79_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n88_match_assign_cond_α:
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
                                                                                        jmp   n84_match_release_α
n88_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n92_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n89_match_sequence_α:
                                                                                        jmp   n94_lit_integer_α
n89_match_sequence_as:
                                                                                        jmp   n93_match_release_α
n89_match_sequence_β:
                                                                                        jmp   n97_match_assign_cond_β
n89_match_sequence_af:
                                                                                        jmp   n82_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_binop_α
n90_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n99_match_replace_α
n91_lit_string_β:
                                                                                        jmp   n80_var_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n92_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx135_239
                        add              rsp, 16
                                                                                        jmp   n79_match_head_β
.Lx135_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx135_240
                        add              rsp, 16
                                                                                        jmp   n79_match_head_β
.Lx135_240:
                        add              r14d, 1
                                                                                        jmp   n88_match_assign_cond_α
n92_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n79_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n93_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1200], eax
                        mov              qword ptr [rsp + 1224], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx137_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx137_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx137_1:
                        test             rax, rax
                                                                                        je    .Lx137_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx137_3]
                        lea              rdx, [rip + .Lx137_4]
                                                                                        jmp   rax
.Lx137_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx137_1
.Lx137_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx137_1
.Lx137_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx137_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx137_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1200]
                        mov              r14, qword ptr [rbp + 1208]
                        mov              r15, qword ptr [rbp + 1216]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1224]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n95_match_pos_α
n94_lit_integer_β:
                                                                                        jmp   n82_match_head_β
.Lx138_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n95_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n82_match_head_β
                                                                                        jmp   n96_match_assign_save_α
n95_match_pos_β:
                                                                                        jmp   n82_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n96_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n101_match_len_α
n96_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n82_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_assign_cond_α:
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
                                                                                        jmp   n93_match_release_α
n97_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n101_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_assign_α
n98_binop_β:
                        add              rsp, 32
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n99_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx146_0]
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              ecx, dword ptr [rbp + 848]
                        mov              r8, qword ptr [rbp + 872]
                        lea              r9, [rbp + 944]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx146_1
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "str"
.Lx146_1:
                        mov              rbp, qword ptr [rbp + 888]
                                                                                        jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n104_match_replace_α
n100_lit_string_β:
                                                                                        jmp   n83_var_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx148_240
                        add              rsp, 16
                                                                                        jmp   n82_match_head_β
.Lx148_240:
                        add              r14d, 1
                                                                                        jmp   n97_match_assign_cond_α
n101_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n82_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n75_var_α
n102_assign_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n105_call_α
n103_lit_string_β:
                                                                                        jmp   n75_var_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n104_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx152_0]
                        mov              rsi, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              ecx, dword ptr [rbp + 1152]
                        mov              r8, qword ptr [rbp + 1176]
                        lea              r9, [rbp + 1248]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx152_1
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "str"
.Lx152_1:
                        mov              rbp, qword ptr [rbp + 1192]
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn154:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n75_var_α
                                                                                        jmp   n106_assign_α
n105_call_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052336], rax
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2504]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__icase_ω:
                        mov              rax, [rbp + 2512]
                        lea              rsp, [rbp + 2528]
                        mov              rbp, [rbp + 2520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwr_α
proc_lwr_α:
                        .global          proc_lwr_α
                        .global          proc_lwr_β
                        .global          proc_lwr_γ
                        .global          proc_lwr_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              rdi, rsp
                        mov              ecx, 2496
                        xor              eax, eax
                        rep stosb
proc_lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n156_op14_α:
                        mov              rdi, qword ptr [rsp + 2504]
                        mov              rsi, qword ptr [rsp + 2512]
                        lea              rdx, [rsp + 2528]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n157_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n157_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx161_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 2504]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_ω:
                        mov              rax, [rsp + 2512]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_upr_α
proc_upr_α:
                        .global          proc_upr_α
                        .global          proc_upr_β
                        .global          proc_upr_γ
                        .global          proc_upr_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              rdi, rsp
                        mov              ecx, 2496
                        xor              eax, eax
                        rep stosb
proc_upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n162_op14_α:
                        mov              rdi, qword ptr [rsp + 2504]
                        mov              rsi, qword ptr [rsp + 2512]
                        lea              rdx, [rsp + 2528]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n163_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n163_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx167_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 2504]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_ω:
                        mov              rax, [rsp + 2512]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cap_α
proc_cap_α:
                        .global          proc_cap_α
                        .global          proc_cap_β
                        .global          proc_cap_γ
                        .global          proc_cap_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              rdi, rsp
                        mov              ecx, 2496
                        xor              eax, eax
                        rep stosb
proc_cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n168_op14_α:
                        mov              rdi, qword ptr [rsp + 2504]
                        mov              rsi, qword ptr [rsp + 2512]
                        lea              rdx, [rsp + 2528]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n169_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n169_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx173_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 2504]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_ω:
                        mov              rax, [rsp + 2512]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_icase_α
proc_icase_α:
                        .global          proc_icase_α
                        .global          proc_icase_β
                        .global          proc_icase_γ
                        .global          proc_icase_ω
                        sub              rsp, 2528
                        mov              [rsp + 2504], rcx
                        mov              [rsp + 2512], rdx
                        mov              rdi, rsp
                        mov              ecx, 2496
                        xor              eax, eax
                        rep stosb
proc_icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n174_op14_α:
                        mov              rdi, qword ptr [rsp + 2504]
                        mov              rsi, qword ptr [rsp + 2512]
                        lea              rdx, [rsp + 2528]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n175_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n175_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx179_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 2504]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_ω:
                        mov              rax, [rsp + 2512]
                        add              rsp, 2528
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n180_match_sequence_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n180_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n181_match_defer_α
n180_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n180_match_sequence_β:
                                                                                        jmp   n182_match_alternate_β
n180_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n181_match_defer_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx191_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx191_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx191_10
.Lx191_9:
                        xor              eax, eax
.Lx191_10:
                        test             rax, rax
                                                                                        jz    .Lx191_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx191_4]
                        lea              rdx, [rip + .Lx191_5]
                                                                                        jmp   rax
.Lx191_4:
                                                                                        jmp   n182_match_alternate_α
.Lx191_5:
                                                                                        jmp   proc_PAT$0_ω
.Lx191_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx191_2:
                        test             rax, rax
                                                                                        je    .Lx191_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx191_7]
                        lea              rdx, [rip + .Lx191_8]
                                                                                        jmp   rax
.Lx191_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx191_2
.Lx191_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx191_2
.Lx191_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$0_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx191_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n182_match_alternate_α
.Lx191_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
n181_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n182_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx193_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n183_var_α
.Lx193_21:
                        lea              rax, [rip + .Lx193_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n185_var_α
n182_match_alternate_s0:
                        lea              rax, [rip + .Lx193_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n182_match_alternate_as
n182_match_alternate_s1:
                        lea              rax, [rip + .Lx193_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n182_match_alternate_as
.Lx193_40:
                                                                                        jmp   n184_match_value_β
.Lx193_41:
                                                                                        jmp   n186_match_value_β
n182_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n182_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n182_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx193_19:
                                                                                        jmp   n181_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n187_call_α
n183_var_β:
                                                                                        jmp   n182_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n184_match_value_α:
                        lea              rdi, [rbp + 80]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx195_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx195_4]
                        lea              rdx, [rip + .Lx195_5]
                                                                                        jmp   rax
.Lx195_4:
                                                                                        jmp   n182_match_alternate_s0
.Lx195_5:
                                                                                        jmp   n182_match_alternate_af
.Lx195_0:
                        lea              rdi, [rbp + 80]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n182_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx195_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n182_match_alternate_s0
.Lx195_6:
                        add              rsp, 16
                                                                                        jmp   n182_match_alternate_af
n184_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n188_call_α
n185_var_β:
                                                                                        jmp   n182_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n186_match_value_α:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx197_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx197_4]
                        lea              rdx, [rip + .Lx197_5]
                                                                                        jmp   rax
.Lx197_4:
                                                                                        jmp   n182_match_alternate_s1
.Lx197_5:
                                                                                        jmp   n182_match_alternate_af
.Lx197_0:
                        lea              rdi, [rbp + 144]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n182_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx197_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n182_match_alternate_s1
.Lx197_6:
                        add              rsp, 16
                                                                                        jmp   n182_match_alternate_af
n186_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              esi, 1
                        mov              edx, 1
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
                                                                                        je    n182_match_alternate_af
                                                                                        jmp   n184_match_value_α
n187_call_β:
                                                                                        jmp   n182_match_alternate_af
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx201_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx201_5
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx201_6]
                        lea              rdx, [rip + .Lx201_7]
                                                                                        jmp   rax
.Lx201_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx201_21
.Lx201_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx201_21:
                        mov              rdi, qword ptr [rip + .Lx201_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx201_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx201_3]
                        lea              rdx, [rip + .Lx201_4]
                                                                                        jmp   rax
.Lx201_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_1:
                        call             rt_faildescr@PLT
.Lx201_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n182_match_alternate_af
                                                                                        jmp   n186_match_value_α
n188_call_β:
                                                                                        jmp   n182_match_alternate_af
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "lwr"
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 216], eax
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
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 232]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
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
                        mov              esi, 2496
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
                        mov              esi, 2496
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
                        mov              esi, 2496
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
                        mov              esi, 2496
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
                        sub              rsp, 2504
                        mov              rdi, rsp
                        mov              ecx, 2504
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2496], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         OUTPUT = 'no match ok'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n216_lit_integer_α
n202_lit_string_β:
                                                                                        jmp   n240_lit_string_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n203_goto_α:
                                                                                        jmp   n217_var_α
n203_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n204_goto_α:
                                                                                        jmp   n202_lit_string_α
n204_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n205_goto_α:
                                                                                        jmp   n218_var_α
n205_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_goto_α:
                                                                                        jmp   n202_lit_string_α
n206_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n207_goto_α:
                                                                                        jmp   n219_var_α
n207_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n208_goto_α:
                                                                                        jmp   n202_lit_string_α
n208_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n209_goto_α:
                                                                                        jmp   n220_var_α
n209_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n210_goto_α:
                                                                                        jmp   n221_var_α
n210_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n211_goto_α:
                                                                                        jmp   n202_lit_string_α
n211_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n212_goto_α:
                                                                                        jmp   n222_lit_string_α
n212_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n213_goto_α:
                                                                                        jmp   n223_lit_string_α
n213_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_goto_α:
                                                                                        jmp   n224_lit_string_α
n214_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_goto_α:
                                                                                        jmp   n225_lit_string_α
n215_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n226_call_α
n216_lit_integer_β:
                                                                                        jmp   n240_lit_string_α
.Lx333_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n227_keyword_snobol4_α
n217_var_β:
                                                                                        jmp   n228_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n229_keyword_snobol4_α
n218_var_β:
                                                                                        jmp   n228_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n230_lit_integer_α
n219_var_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n232_call_α
n220_var_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n234_match_head_α
n221_var_β:
                                                                                        jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n236_match_head_α
n222_lit_string_β:
                                                                                        jmp   n223_lit_string_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n237_match_head_α
n223_lit_string_β:
                                                                                        jmp   n224_lit_string_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n238_match_head_α
n224_lit_string_β:
                                                                                        jmp   n317_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n239_assign_α
n225_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "FAIL: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n226_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn344:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn344]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n240_lit_string_α
                                                                                        jmp   n240_lit_string_α
n226_call_β:
                                                                                        jmp   n240_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx345_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n241_keyword_snobol4_α
n227_keyword_snobol4_β:
                                                                                        jmp   n228_op14_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n228_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n229_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n242_keyword_snobol4_α
n229_keyword_snobol4_β:
                                                                                        jmp   n228_op14_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n243_lit_integer_α
n230_lit_integer_β:
                                                                                        jmp   n231_op14_α
.Lx349_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n231_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn353:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n233_var_α
                                                                                        jmp   n228_op14_α
n232_call_β:
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n244_match_head_α
n233_var_β:
                                                                                        jmp   n221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_match_head_α:
                        mov              qword ptr [rbp + 1200], r13
                        mov              qword ptr [rbp + 1208], r14
                        mov              qword ptr [rbp + 1216], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1224], rax
                        mov              qword ptr [rbp + 1192], rbp
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx356_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n245_match_sequence_α
n234_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx356_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx356_1
                                                                                        jmp   .Lx356_0
.Lx356_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx356_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx356_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1200]
                        mov              r14, qword ptr [rbp + 1208]
                        mov              r15, qword ptr [rbp + 1216]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1224]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1192]
                                                                                        jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n246_var_α
n235_var_β:
                        add              rsp, 16
                                                                                        jmp   n220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_match_head_α:
                        mov              qword ptr [rbp + 1968], r13
                        mov              qword ptr [rbp + 1976], r14
                        mov              qword ptr [rbp + 1984], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1992], rax
                        mov              qword ptr [rbp + 1960], rbp
                        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1936], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1928], rax
                        mov              dword ptr [rbp + 1920], 0
.Lx359_0:
                        mov              r14d, dword ptr [rbp + 1920]
                                                                                        jmp   n247_lit_string_α
n236_match_head_β:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, r15d
                                                                                        jg    .Lx359_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx359_1
                                                                                        jmp   .Lx359_0
.Lx359_1:
                        mov              rax, qword ptr [rbp + 1928]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1936]
                        mov              r10, qword ptr [1879048192]
.Lx359_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx359_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1968]
                        mov              r14, qword ptr [rbp + 1976]
                        mov              r15, qword ptr [rbp + 1984]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1960]
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n237_match_head_α:
                        mov              qword ptr [rbp + 2160], r13
                        mov              qword ptr [rbp + 2168], r14
                        mov              qword ptr [rbp + 2176], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2184], rax
                        mov              qword ptr [rbp + 2152], rbp
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 2128], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2120], rax
                        mov              dword ptr [rbp + 2112], 0
.Lx361_0:
                        mov              r14d, dword ptr [rbp + 2112]
                                                                                        jmp   n248_lit_string_α
n237_match_head_β:
                        add              dword ptr [rbp + 2112], 1
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, r15d
                                                                                        jg    .Lx361_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx361_1
                                                                                        jmp   .Lx361_0
.Lx361_1:
                        mov              rax, qword ptr [rbp + 2120]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2128]
                        mov              r10, qword ptr [1879048192]
.Lx361_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx361_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2160]
                        mov              r14, qword ptr [rbp + 2168]
                        mov              r15, qword ptr [rbp + 2176]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2184]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2152]
                                                                                        jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n238_match_head_α:
                        mov              qword ptr [rbp + 2352], r13
                        mov              qword ptr [rbp + 2360], r14
                        mov              qword ptr [rbp + 2368], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2376], rax
                        mov              qword ptr [rbp + 2344], rbp
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 2320], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2312], rax
                        mov              dword ptr [rbp + 2304], 0
.Lx363_0:
                        mov              r14d, dword ptr [rbp + 2304]
                                                                                        jmp   n249_lit_string_α
n238_match_head_β:
                        add              dword ptr [rbp + 2304], 1
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, r15d
                                                                                        jg    .Lx363_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx363_1
                                                                                        jmp   .Lx363_0
.Lx363_1:
                        mov              rax, qword ptr [rbp + 2312]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2320]
                        mov              r10, qword ptr [1879048192]
.Lx363_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx363_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2352]
                        mov              r14, qword ptr [rbp + 2360]
                        mov              r15, qword ptr [rbp + 2368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2376]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2344]
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx364_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n239_assign_β:
                                                                                        jmp   main_γ
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n250_call_α
n240_lit_string_β:
                                                                                        jmp   n265_lit_string_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n241_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx366_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n251_call_α
n241_keyword_snobol4_β:
                                                                                        jmp   n228_op14_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n242_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx367_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n252_call_α
n242_keyword_snobol4_β:
                                                                                        jmp   n228_op14_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n253_call_α
n243_lit_integer_β:
                                                                                        jmp   n231_op14_α
.Lx368_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_match_head_α:
                        mov              qword ptr [rbp + 896], r13
                        mov              qword ptr [rbp + 904], r14
                        mov              qword ptr [rbp + 912], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax
                        mov              qword ptr [rbp + 888], rbp
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx370_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n254_match_sequence_α
n244_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx370_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx370_1
                                                                                        jmp   .Lx370_0
.Lx370_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx370_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx370_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]
                        mov              r14, qword ptr [rbp + 904]
                        mov              r15, qword ptr [rbp + 912]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 920]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]
                                                                                        jmp   n221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_match_sequence_α:
                                                                                        jmp   n256_lit_integer_α
n245_match_sequence_as:
                                                                                        jmp   n255_match_release_α
n245_match_sequence_β:
                                                                                        jmp   n259_match_assign_cond_β
n245_match_sequence_af:
                                                                                        jmp   n234_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n260_binop_α
n246_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n261_call_α
n247_lit_string_β:
                                                                                        jmp   n236_match_head_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n262_call_α
n248_lit_string_β:
                                                                                        jmp   n237_match_head_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n263_call_α
n249_lit_string_β:
                                                                                        jmp   n238_match_head_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n250_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx378_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx378_5
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [1879052296], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx378_6]
                        lea              rdx, [rip + .Lx378_7]
                                                                                        jmp   rax
.Lx378_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx378_2
.Lx378_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx378_2
.Lx378_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx378_20
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx378_21
.Lx378_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        call             rt_arg_stage@PLT
.Lx378_21:
                        mov              rdi, qword ptr [rip + .Lx378_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx378_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx378_3]
                        lea              rdx, [rip + .Lx378_4]
                                                                                        jmp   rax
.Lx378_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx378_2
.Lx378_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx378_2
.Lx378_1:
                        call             rt_faildescr@PLT
.Lx378_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n265_lit_string_α
                                                                                        jmp   n264_assign_α
n250_call_β:
                                                                                        jmp   n265_lit_string_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn380:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn380]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n228_op14_α
                                                                                        jmp   n266_assign_α
n251_call_β:
                                                                                        jmp   n228_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn382:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rbp + 192]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n228_op14_α
                                                                                        jmp   n267_assign_α
n252_call_β:
                                                                                        jmp   n228_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn384:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn384]
                        lea              rsi, [rbp + 416]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n231_op14_α
                                                                                        jmp   n268_keyword_snobol4_α
n253_call_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n254_match_sequence_α:
                                                                                        jmp   n270_lit_integer_α
n254_match_sequence_as:
                                                                                        jmp   n269_match_release_α
n254_match_sequence_β:
                                                                                        jmp   n273_match_assign_cond_β
n254_match_sequence_af:
                                                                                        jmp   n244_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n255_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 1200], eax
                        mov              qword ptr [rsp + 1224], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx388_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx388_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx388_1:
                        test             rax, rax
                                                                                        je    .Lx388_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx388_3]
                        lea              rdx, [rip + .Lx388_4]
                                                                                        jmp   rax
.Lx388_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx388_1
.Lx388_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx388_1
.Lx388_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx388_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx388_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1200]
                        mov              r14, qword ptr [rbp + 1208]
                        mov              r15, qword ptr [rbp + 1216]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1224]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n257_match_pos_α
n256_lit_integer_β:
                                                                                        jmp   n234_match_head_β
.Lx389_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n257_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n234_match_head_β
                                                                                        jmp   n258_match_assign_save_α
n257_match_pos_β:
                                                                                        jmp   n234_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n258_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n275_match_len_α
n258_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n234_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n259_match_assign_cond_α:
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
                                                                                        jmp   n255_match_release_α
n259_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n275_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n276_assign_α
n260_binop_β:
                        add              rsp, 32
                                                                                        jmp   n220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx397_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx397_5
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx397_6]
                        lea              rdx, [rip + .Lx397_7]
                                                                                        jmp   rax
.Lx397_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx397_2
.Lx397_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx397_2
.Lx397_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx397_20
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx397_21
.Lx397_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx397_21:
                        mov              rdi, qword ptr [rip + .Lx397_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n236_match_head_α
                                                                                        jmp   n277_match_value_α
n261_call_β:
                                                                                        jmp   n236_match_head_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx399_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx399_5
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx399_6]
                        lea              rdx, [rip + .Lx399_7]
                                                                                        jmp   rax
.Lx399_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx399_20
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx399_21
.Lx399_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        call             rt_arg_stage@PLT
.Lx399_21:
                        mov              rdi, qword ptr [rip + .Lx399_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx399_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4]
                                                                                        jmp   rax
.Lx399_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_1:
                        call             rt_faildescr@PLT
.Lx399_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n237_match_head_α
                                                                                        jmp   n278_match_value_α
n262_call_β:
                                                                                        jmp   n237_match_head_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx401_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx401_5
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx401_6]
                        lea              rdx, [rip + .Lx401_7]
                                                                                        jmp   rax
.Lx401_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx401_2
.Lx401_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx401_2
.Lx401_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_20
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx401_21
.Lx401_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        call             rt_arg_stage@PLT
.Lx401_21:
                        mov              rdi, qword ptr [rip + .Lx401_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx401_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx401_3]
                        lea              rdx, [rip + .Lx401_4]
                                                                                        jmp   rax
.Lx401_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx401_2
.Lx401_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx401_2
.Lx401_1:
                        call             rt_faildescr@PLT
.Lx401_2:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n238_match_head_α
                                                                                        jmp   n279_match_value_α
n263_call_β:
                                                                                        jmp   n238_match_head_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:
                        mov              rsi, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              rdi, qword ptr [rip + .Lx402_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n265_lit_string_α
n264_assign_β:
                                                                                        jmp   n265_lit_string_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n280_call_α
n265_lit_string_β:
                                                                                        jmp   n289_lit_string_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n228_op14_α
n266_assign_β:
                                                                                        jmp   n228_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n228_op14_α
n267_assign_β:
                                                                                        jmp   n228_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n268_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx406_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n281_keyword_snobol4_α
n268_keyword_snobol4_β:
                                                                                        jmp   n231_op14_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n269_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 896], eax
                        mov              qword ptr [rsp + 920], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx408_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx408_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx408_1:
                        test             rax, rax
                                                                                        je    .Lx408_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4]
                                                                                        jmp   rax
.Lx408_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx408_1
.Lx408_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx408_1
.Lx408_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx408_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx408_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]
                        mov              r14, qword ptr [rbp + 904]
                        mov              r15, qword ptr [rbp + 912]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 920]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n282_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n271_match_pos_α
n270_lit_integer_β:
                                                                                        jmp   n244_match_head_β
.Lx409_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n271_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n244_match_head_β
                                                                                        jmp   n272_match_assign_save_α
n271_match_pos_β:
                                                                                        jmp   n244_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n272_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n283_match_any_α
n272_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n244_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n273_match_assign_cond_α:
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
                                                                                        jmp   n269_match_release_α
n273_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n283_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n284_match_replace_α
n274_lit_string_β:
                                                                                        jmp   n235_var_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n275_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx416_240
                        add              rsp, 16
                                                                                        jmp   n234_match_head_β
.Lx416_240:
                        add              r14d, 1
                                                                                        jmp   n259_match_assign_cond_α
n275_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n234_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n220_var_α
n276_assign_β:
                                                                                        jmp   n220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_match_value_α:
                        lea              rdi, [rbp + 2000]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx418_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx418_4]
                        lea              rdx, [rip + .Lx418_5]
                                                                                        jmp   rax
.Lx418_4:
                                                                                        jmp   n285_match_release_α
.Lx418_5:
                                                                                        jmp   n236_match_head_β
.Lx418_0:
                        lea              rdi, [rbp + 2000]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n236_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx418_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n285_match_release_α
.Lx418_6:
                        add              rsp, 16
                                                                                        jmp   n236_match_head_β
n277_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n278_match_value_α:
                        lea              rdi, [rbp + 2192]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx419_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx419_4]
                        lea              rdx, [rip + .Lx419_5]
                                                                                        jmp   rax
.Lx419_4:
                                                                                        jmp   n286_match_release_α
.Lx419_5:
                                                                                        jmp   n237_match_head_β
.Lx419_0:
                        lea              rdi, [rbp + 2192]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n237_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx419_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n286_match_release_α
.Lx419_6:
                        add              rsp, 16
                                                                                        jmp   n237_match_head_β
n278_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n279_match_value_α:
                        lea              rdi, [rbp + 2384]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx420_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx420_4]
                        lea              rdx, [rip + .Lx420_5]
                                                                                        jmp   rax
.Lx420_4:
                                                                                        jmp   n287_match_release_α
.Lx420_5:
                                                                                        jmp   n238_match_head_β
.Lx420_0:
                        lea              rdi, [rbp + 2384]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n238_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx420_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n287_match_release_α
.Lx420_6:
                        add              rsp, 16
                                                                                        jmp   n238_match_head_β
n279_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n280_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx422_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx422_5
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx422_6]
                        lea              rdx, [rip + .Lx422_7]
                                                                                        jmp   rax
.Lx422_6:
                        mov              rdi, qword ptr [1879052304]
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx422_2
.Lx422_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx422_2
.Lx422_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx422_20
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx422_21
.Lx422_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        call             rt_arg_stage@PLT
.Lx422_21:
                        mov              rdi, qword ptr [rip + .Lx422_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx422_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx422_3]
                        lea              rdx, [rip + .Lx422_4]
                                                                                        jmp   rax
.Lx422_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx422_2
.Lx422_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx422_2
.Lx422_1:
                        call             rt_faildescr@PLT
.Lx422_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n289_lit_string_α
                                                                                        jmp   n288_assign_α
n280_call_β:
                                                                                        jmp   n289_lit_string_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n281_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx423_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n290_call_α
n281_keyword_snobol4_β:
                                                                                        jmp   n231_op14_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n291_match_replace_α
n282_lit_string_β:
                                                                                        jmp   n221_var_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n283_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx426_239
                        add              rsp, 16
                                                                                        jmp   n244_match_head_β
.Lx426_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx426_240
                        add              rsp, 16
                                                                                        jmp   n244_match_head_β
.Lx426_240:
                        add              r14d, 1
                                                                                        jmp   n273_match_assign_cond_α
n283_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n244_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n284_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx428_0]
                        mov              rsi, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              ecx, dword ptr [rbp + 1152]
                        mov              r8, qword ptr [rbp + 1176]
                        lea              r9, [rbp + 1248]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx428_1
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "str"
.Lx428_1:
                        mov              rbp, qword ptr [rbp + 1192]
                                                                                        jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n285_match_release_α:
                        mov              rax, qword ptr [rbp + 1928]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1936]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx430_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx430_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx430_1:
                        test             rax, rax
                                                                                        je    .Lx430_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx430_3]
                        lea              rdx, [rip + .Lx430_4]
                                                                                        jmp   rax
.Lx430_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx430_1
.Lx430_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx430_1
.Lx430_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx430_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx430_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1968]
                        mov              r14, qword ptr [rbp + 1976]
                        mov              r15, qword ptr [rbp + 1984]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1960]
                                                                                        jmp   n292_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_match_release_α:
                        mov              rax, qword ptr [rbp + 2120]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2128]
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
                        mov              r13, qword ptr [rbp + 2160]
                        mov              r14, qword ptr [rbp + 2168]
                        mov              r15, qword ptr [rbp + 2176]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2184]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2152]
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n287_match_release_α:
                        mov              rax, qword ptr [rbp + 2312]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2320]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx434_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx434_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx434_1:
                        test             rax, rax
                                                                                        je    .Lx434_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx434_3]
                        lea              rdx, [rip + .Lx434_4]
                                                                                        jmp   rax
.Lx434_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx434_1
.Lx434_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx434_1
.Lx434_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx434_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx434_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2352]
                        mov              r14, qword ptr [rbp + 2360]
                        mov              r15, qword ptr [rbp + 2368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2376]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2344]
                                                                                        jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:
                        mov              rsi, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              rdi, qword ptr [rip + .Lx435_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n289_lit_string_α
n288_assign_β:
                                                                                        jmp   n289_lit_string_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n294_call_α
n289_lit_string_β:
                                                                                        jmp   n300_lit_string_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn438:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rbp + 336]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n231_op14_α
                                                                                        jmp   n295_var_α
n290_call_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n291_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx440_0]
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              ecx, dword ptr [rbp + 848]
                        mov              r8, qword ptr [rbp + 872]
                        lea              r9, [rbp + 944]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx440_1
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "str"
.Lx440_1:
                        mov              rbp, qword ptr [rbp + 888]
                                                                                        jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n297_assign_α
n292_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n223_lit_string_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n298_assign_α
n293_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n224_lit_string_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx444_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx444_5
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx444_6]
                        lea              rdx, [rip + .Lx444_7]
                                                                                        jmp   rax
.Lx444_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx444_2
.Lx444_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx444_2
.Lx444_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx444_20
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx444_21
.Lx444_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx444_21:
                        mov              rdi, qword ptr [rip + .Lx444_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx444_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx444_3]
                        lea              rdx, [rip + .Lx444_4]
                                                                                        jmp   rax
.Lx444_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx444_2
.Lx444_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx444_2
.Lx444_1:
                        call             rt_faildescr@PLT
.Lx444_2:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n300_lit_string_α
                                                                                        jmp   n299_assign_α
n294_call_β:
                                                                                        jmp   n300_lit_string_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n301_lit_integer_α
n295_var_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n302_call_α
n296_lit_string_β:
                                                                                        jmp   n220_var_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx447_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n223_lit_string_α
n297_assign_β:
                                                                                        jmp   n223_lit_string_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx448_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n224_lit_string_α
n298_assign_β:
                                                                                        jmp   n224_lit_string_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:
                        mov              rsi, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              rdi, qword ptr [rip + .Lx449_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n300_lit_string_α
n299_assign_β:
                                                                                        jmp   n300_lit_string_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n303_match_head_α
n300_lit_string_β:
                                                                                        jmp   n222_lit_string_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n304_call_α
n301_lit_integer_β:
                                                                                        jmp   n231_op14_α
.Lx451_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn453:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n220_var_α
                                                                                        jmp   n305_assign_α
n302_call_β:
                                                                                        jmp   n220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n303_match_head_α:
                        mov              qword ptr [rbp + 1776], r13
                        mov              qword ptr [rbp + 1784], r14
                        mov              qword ptr [rbp + 1792], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1800], rax
                        mov              qword ptr [rbp + 1768], rbp
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1744], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax
                        mov              dword ptr [rbp + 1728], 0
.Lx455_0:
                        mov              r14d, dword ptr [rbp + 1728]
                                                                                        jmp   n306_lit_string_α
n303_match_head_β:
                        add              dword ptr [rbp + 1728], 1
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, r15d
                                                                                        jg    .Lx455_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx455_1
                                                                                        jmp   .Lx455_0
.Lx455_1:
                        mov              rax, qword ptr [rbp + 1736]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1744]
                        mov              r10, qword ptr [1879048192]
.Lx455_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx455_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1776]
                        mov              r14, qword ptr [rbp + 1784]
                        mov              r15, qword ptr [rbp + 1792]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1800]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1768]
                                                                                        jmp   n222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn457:              .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn457]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n231_op14_α
                                                                                        jmp   n307_keyword_snobol4_α
n304_call_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n220_var_α
n305_assign_β:
                                                                                        jmp   n220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n308_call_α
n306_lit_string_β:
                                                                                        jmp   n303_match_head_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n307_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx460_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n309_keyword_snobol4_α
n307_keyword_snobol4_β:
                                                                                        jmp   n231_op14_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052384]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx462_5
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx462_6]
                        lea              rdx, [rip + .Lx462_7]
                                                                                        jmp   rax
.Lx462_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx462_2
.Lx462_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx462_2
.Lx462_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx462_20
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx462_21
.Lx462_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_arg_stage@PLT
.Lx462_21:
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx462_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx462_3]
                        lea              rdx, [rip + .Lx462_4]
                                                                                        jmp   rax
.Lx462_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx462_2
.Lx462_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx462_2
.Lx462_1:
                        call             rt_faildescr@PLT
.Lx462_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n303_match_head_α
                                                                                        jmp   n310_match_value_α
n308_call_β:
                                                                                        jmp   n303_match_head_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n309_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx463_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n311_call_α
n309_keyword_snobol4_β:
                                                                                        jmp   n231_op14_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n310_match_value_α:
                        lea              rdi, [rbp + 1808]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx464_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx464_4]
                        lea              rdx, [rip + .Lx464_5]
                                                                                        jmp   rax
.Lx464_4:
                                                                                        jmp   n312_match_release_α
.Lx464_5:
                                                                                        jmp   n303_match_head_β
.Lx464_0:
                        lea              rdi, [rbp + 1808]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n303_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx464_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n312_match_release_α
.Lx464_6:
                        add              rsp, 16
                                                                                        jmp   n303_match_head_β
n310_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn466:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rbp + 576]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n231_op14_α
                                                                                        jmp   n313_binop_α
n311_call_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n312_match_release_α:
                        mov              rax, qword ptr [rbp + 1736]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1744]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx468_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx468_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx468_1:
                        test             rax, rax
                                                                                        je    .Lx468_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx468_3]
                        lea              rdx, [rip + .Lx468_4]
                                                                                        jmp   rax
.Lx468_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx468_1
.Lx468_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx468_1
.Lx468_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx468_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx468_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1776]
                        mov              r14, qword ptr [rbp + 1784]
                        mov              r15, qword ptr [rbp + 1792]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1800]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1768]
                                                                                        jmp   n314_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n313_binop_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n315_assign_α
n313_binop_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n316_assign_α
n314_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n222_lit_string_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n315_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n228_op14_α
n315_assign_β:
                                                                                        jmp   n231_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx472_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n222_lit_string_α
n316_assign_β:
                                                                                        jmp   n222_lit_string_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n318_assign_α
n317_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx474_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n318_assign_β:
                                                                                        jmp   main_γ
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2496]
                        add              rsp, 2504
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2496]
                        add              rsp, 2504
                        ret
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
