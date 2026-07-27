                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ROMAN_α
proc_LBL__ROMAN_α:
                        .global          proc_LBL__ROMAN_α
                        .global          proc_LBL__ROMAN_β
                        .global          proc_LBL__ROMAN_γ
                        .global          proc_LBL__ROMAN_ω
                        sub              rsp, 1312
                        mov              [rsp + 1288], rcx
                        mov              [rsp + 1296], rdx
                        mov              [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
proc_LBL__ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n4_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n5_lit_integer_α
n1_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n6_var_α
n2_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n5_lit_integer_α
n3_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n7_match_head_α
n4_var_β:
                                                                                        jmp   n8_op14_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	DEFINE("TEST(I,J)")				:(TEST_END)
# 	TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n9_lit_integer_α
n5_lit_integer_β:
                                                                                        jmp   n22_lit_integer_α
.Lx66_0:
                        .quad            1
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n10_lit_string_α
n6_var_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_head_α:
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 80], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx69_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n12_match_sequence_α
n7_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx69_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx69_1
                                                                                        jmp   .Lx69_0
.Lx69_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 80]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n8_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n13_call_α
n9_lit_integer_β:
                                                                                        jmp   n22_lit_integer_α
.Lx72_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n14_binop_α
n10_lit_string_β:
                                                                                        jmp   n11_var_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          " -> "
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n15_var_α
n11_var_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_match_sequence_α:
                                                                                        jmp   n18_lit_integer_α
n12_match_sequence_as:
                                                                                        jmp   n17_match_release_α
n12_match_sequence_β:
                                                                                        jmp   n21_match_assign_cond_β
n12_match_sequence_af:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx78_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx78_5
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx78_6]
                        lea              rdx, [rip + .Lx78_7]
                                                                                        jmp   rax
.Lx78_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx78_2
.Lx78_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx78_2
.Lx78_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx78_20
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx78_21
.Lx78_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        call             rt_arg_stage@PLT
.Lx78_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx78_22
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx78_23
.Lx78_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx78_23:
                        mov              rdi, qword ptr [rip + .Lx78_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx78_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx78_3]
                        lea              rdx, [rip + .Lx78_4]
                                                                                        jmp   rax
.Lx78_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx78_2
.Lx78_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx78_2
.Lx78_1:
                        call             rt_faildescr@PLT
.Lx78_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n22_lit_integer_α
                                                                                        jmp   n22_lit_integer_α
n13_call_β:
                                                                                        jmp   n22_lit_integer_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n23_var_α
n14_binop_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n24_op75_α
n15_var_β:
                                                                                        jmp   n16_var_α
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_lit_integer_α
n16_var_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx83_1:
                        test             rax, rax
                                                                                        je    .Lx83_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx83_3]
                        lea              rdx, [rip + .Lx83_4]
                                                                                        jmp   rax
.Lx83_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx83_1
.Lx83_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx83_1
.Lx83_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 80]
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n19_match_rpos_α
n18_lit_integer_β:
                                                                                        jmp   n7_match_head_β
.Lx84_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n7_match_head_β
                                                                                        jmp   n20_match_assign_save_α
n19_match_rpos_β:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n27_match_len_α
n20_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n17_match_release_α
n21_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n27_match_len_β
#=======================================================================================================================
# 	TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n28_lit_integer_α
n22_lit_integer_β:
                                                                                        jmp   n38_lit_integer_α
.Lx90_0:
                        .quad            149
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n29_call_α
n23_var_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op75_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx93_1
                        cmp              eax, 6
                                                                                        jne   .Lx93_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx93_0
.Lx93_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n30_op75_α
.Lx93_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 816]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n30_op75_α
n24_op75_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_binop_α
n25_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
.Lx94_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n32_match_replace_α
n26_lit_string_β:
                                                                                        jmp   n8_op14_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx96_240
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
.Lx96_240:
                        add              r14d, 1
                                                                                        jmp   n21_match_assign_cond_α
n27_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n33_call_α
n28_lit_integer_β:
                                                                                        jmp   n38_lit_integer_α
.Lx97_0:
                        .quad            151
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx99_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx99_5
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx99_6]
                        lea              rdx, [rip + .Lx99_7]
                                                                                        jmp   rax
.Lx99_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx99_2
.Lx99_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx99_2
.Lx99_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx99_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx99_21
.Lx99_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx99_21:
                        mov              rdi, qword ptr [rip + .Lx99_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx99_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx99_3]
                        lea              rdx, [rip + .Lx99_4]
                                                                                        jmp   rax
.Lx99_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx99_2
.Lx99_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx99_2
.Lx99_1:
                        call             rt_faildescr@PLT
.Lx99_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n11_var_α
                                                                                        jmp   n34_binop_α
n29_call_β:
                                                                                        jmp   n11_var_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n30_op75_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 7
                                                                                        je    .Lx101_1
                        cmp              eax, 6
                                                                                        jne   .Lx101_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx101_0
.Lx101_1:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n35_op77_α
.Lx101_0:
                        lea              rdi, [rbp + 816]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 784]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n35_op77_α
n30_op75_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx102_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx102_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx102_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx102_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_assign_α
.Lx102_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx102_2
                        add              rsp, 16
                                                                                        jmp   n36_assign_α
.Lx102_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx102_240
                        add              rsp, 32
                                                                                        jmp   n6_var_α
.Lx102_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_assign_α
n31_binop_β:
                        add              rsp, 32
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx104_0]
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              ecx, dword ptr [rbp + 48]
                        mov              r8, qword ptr [rbp + 72]
                        lea              r9, [rbp + 112]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx104_1
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "N"
.Lx104_1:
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx106_5
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx106_6]
                        lea              rdx, [rip + .Lx106_7]
                                                                                        jmp   rax
.Lx106_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx106_2
.Lx106_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx106_2
.Lx106_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx106_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx106_21
.Lx106_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx106_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx106_22
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx106_23
.Lx106_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx106_23:
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx106_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx106_3]
                        lea              rdx, [rip + .Lx106_4]
                                                                                        jmp   rax
.Lx106_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx106_2
.Lx106_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx106_2
.Lx106_1:
                        call             rt_faildescr@PLT
.Lx106_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n38_lit_integer_α
                                                                                        jmp   n38_lit_integer_α
n33_call_β:
                                                                                        jmp   n38_lit_integer_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n39_assign_α
n34_binop_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op77_α:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 784]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n16_var_α
                                                                                        jmp   n8_op14_α
n35_op77_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n6_var_α
n36_assign_β:
                                                                                        jmp   n6_var_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n40_match_head_α
n37_lit_string_β:
                                                                                        jmp   n53_op14_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#=======================================================================================================================
# 	TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n41_lit_integer_α
n38_lit_integer_β:
                                                                                        jmp   n48_lit_integer_α
.Lx112_0:
                        .quad            480
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n11_var_α
n39_assign_β:
                                                                                        jmp   n11_var_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n40_match_head_α:
                        mov              qword ptr [rbp + 312], rbp
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 304], r12
                        mov              qword ptr [rbp + 288], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 280], rax
                        mov              dword ptr [rbp + 272], 0
.Lx115_0:
                        mov              r14d, dword ptr [rbp + 272]
                                                                                        jmp   n42_match_sequence_α
n40_match_head_β:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, r15d
                                                                                        jg    .Lx115_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx115_1
                                                                                        jmp   .Lx115_0
.Lx115_1:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        mov              r12, qword ptr [rbp + 304]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   n53_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n43_call_α
n41_lit_integer_β:
                                                                                        jmp   n48_lit_integer_α
.Lx116_0:
                        .quad            520
#-----------------------------------------------------------------------------------------------------------------------
n42_match_sequence_α:
                        mov              dword ptr [rbp + 320], r14d
                                                                                        jmp   n45_match_defer_α
n42_match_sequence_as:
                                                                                        jmp   n44_match_release_α
n42_match_sequence_β:
                                                                                        jmp   n47_match_assign_cond_β
n42_match_sequence_af:
                                                                                        jmp   n40_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx120_5
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx120_6]
                        lea              rdx, [rip + .Lx120_7]
                                                                                        jmp   rax
.Lx120_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx120_2
.Lx120_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx120_2
.Lx120_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_20
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx120_21
.Lx120_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx120_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_22
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx120_23
.Lx120_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx120_23:
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx120_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx120_3]
                        lea              rdx, [rip + .Lx120_4]
                                                                                        jmp   rax
.Lx120_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx120_2
.Lx120_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx120_2
.Lx120_1:
                        call             rt_faildescr@PLT
.Lx120_2:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n48_lit_integer_α
                                                                                        jmp   n48_lit_integer_α
n43_call_β:
                                                                                        jmp   n48_lit_integer_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n44_match_release_α:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx122_1:
                        test             rax, rax
                                                                                        je    .Lx122_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx122_3]
                        lea              rdx, [rip + .Lx122_4]
                                                                                        jmp   rax
.Lx122_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx122_1
.Lx122_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx122_1
.Lx122_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 304]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_match_defer_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx123_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx123_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx123_10
.Lx123_9:
                        xor              eax, eax
.Lx123_10:
                        test             rax, rax
                                                                                        jz    .Lx123_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx123_4]
                        lea              rdx, [rip + .Lx123_5]
                                                                                        jmp   rax
.Lx123_4:
                                                                                        jmp   n46_match_assign_save_α
.Lx123_5:
                                                                                        jmp   n40_match_head_β
.Lx123_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx123_2:
                        test             rax, rax
                                                                                        je    .Lx123_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx123_7]
                        lea              rdx, [rip + .Lx123_8]
                                                                                        jmp   rax
.Lx123_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx123_2
.Lx123_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx123_2
.Lx123_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n40_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx123_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n46_match_assign_save_α
.Lx123_6:
                        add              rsp, 16
                                                                                        jmp   n40_match_head_β
n45_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n50_match_break_α
n46_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n45_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n44_match_release_α
n47_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n50_match_break_β
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n51_lit_integer_α
n48_lit_integer_β:
                                                                                        jmp   proc_LBL__ROMAN_γ
.Lx128_0:
                        .quad            1900
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n52_call_α
n49_var_β:
                                                                                        jmp   n53_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n50_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx131_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx131_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n45_match_defer_β
.Lx131_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx131_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx131_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n45_match_defer_β
.Lx131_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx131_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx131_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n45_match_defer_β
.Lx131_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx131_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx131_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n45_match_defer_β
.Lx131_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx131_1
                        add              ecx, 1
                                                                                        jmp   .Lx131_0
.Lx131_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n47_match_assign_cond_α
n50_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n45_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n54_call_α
n51_lit_integer_β:
                                                                                        jmp   proc_LBL__ROMAN_γ
.Lx132_0:
                        .quad            2100
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx134_5
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx134_6]
                        lea              rdx, [rip + .Lx134_7]
                                                                                        jmp   rax
.Lx134_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx134_2
.Lx134_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx134_2
.Lx134_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_20
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx134_21
.Lx134_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx134_21:
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n53_op14_α
                                                                                        jmp   n55_lit_string_α
n52_call_β:
                                                                                        jmp   n53_op14_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n53_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx138_5
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx138_6]
                        lea              rdx, [rip + .Lx138_7]
                                                                                        jmp   rax
.Lx138_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx138_2
.Lx138_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx138_2
.Lx138_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx138_20
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx138_21
.Lx138_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        call             rt_arg_stage@PLT
.Lx138_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx138_22
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx138_23
.Lx138_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx138_23:
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    proc_LBL__ROMAN_γ
                                                                                        jmp   proc_LBL__ROMAN_γ
n54_call_β:
                                                                                        jmp   proc_LBL__ROMAN_γ
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n56_lit_string_α
n55_lit_string_β:
                                                                                        jmp   n53_op14_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n57_call_α
n56_lit_string_β:
                                                                                        jmp   n53_op14_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn142:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 480]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n53_op14_α
                                                                                        jmp   n58_var_α
n57_call_β:
                                                                                        jmp   n53_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n59_binop_α
n58_var_β:
                                                                                        jmp   n53_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n60_assign_α
n59_binop_β:
                                                                                        jmp   n53_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n8_op14_α
n60_assign_β:
                                                                                        jmp   n53_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1288]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                        mov              rax, [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__TEST_α
proc_LBL__TEST_α:
                        .global          proc_LBL__TEST_α
                        .global          proc_LBL__TEST_β
                        .global          proc_LBL__TEST_γ
                        .global          proc_LBL__TEST_ω
                        sub              rsp, 1312
                        mov              [rsp + 1288], rcx
                        mov              [rsp + 1296], rdx
                        mov              [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
proc_LBL__TEST_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n146_goto_α:
                                                                                        jmp   n150_var_α
n146_goto_β:
                                                                                        jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
n147_goto_α:
                                                                                        jmp   n151_var_α
n147_goto_β:
                                                                                        jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_goto_α:
                                                                                        jmp   n152_lit_integer_α
n148_goto_β:
                                                                                        jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_goto_α:
                                                                                        jmp   n152_lit_integer_α
n149_goto_β:
                                                                                        jmp   proc_LBL__TEST_ω
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n153_lit_string_α
n150_var_β:
                                                                                        jmp   n154_var_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n155_match_head_α
n151_var_β:
                                                                                        jmp   n156_op14_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	DEFINE("TEST(I,J)")				:(TEST_END)
# 	TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n157_lit_integer_α
n152_lit_integer_β:
                                                                                        jmp   n171_lit_integer_α
.Lx213_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n158_binop_α
n153_lit_string_β:
                                                                                        jmp   n154_var_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          " -> "
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n159_var_α
n154_var_β:
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_match_head_α:
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 80], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx217_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n161_match_sequence_α
n155_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx217_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx217_1
                                                                                        jmp   .Lx217_0
.Lx217_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 80]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n156_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n156_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n162_call_α
n157_lit_integer_β:
                                                                                        jmp   n171_lit_integer_α
.Lx220_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n163_var_α
n158_binop_β:
                                                                                        jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n164_op75_α
n159_var_β:
                                                                                        jmp   n160_var_α
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_lit_integer_α
n160_var_β:
                        add              rsp, 16
                                                                                        jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n161_match_sequence_α:
                                                                                        jmp   n167_lit_integer_α
n161_match_sequence_as:
                                                                                        jmp   n166_match_release_α
n161_match_sequence_β:
                                                                                        jmp   n170_match_assign_cond_β
n161_match_sequence_af:
                                                                                        jmp   n155_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx227_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx227_5
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx227_6]
                        lea              rdx, [rip + .Lx227_7]
                                                                                        jmp   rax
.Lx227_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_20
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx227_21
.Lx227_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        call             rt_arg_stage@PLT
.Lx227_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_22
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx227_23
.Lx227_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx227_23:
                        mov              rdi, qword ptr [rip + .Lx227_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx227_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4]
                                                                                        jmp   rax
.Lx227_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_1:
                        call             rt_faildescr@PLT
.Lx227_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n171_lit_integer_α
                                                                                        jmp   n171_lit_integer_α
n162_call_β:
                                                                                        jmp   n171_lit_integer_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n172_call_α
n163_var_β:
                                                                                        jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_op75_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx230_1
                        cmp              eax, 6
                                                                                        jne   .Lx230_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx230_0
.Lx230_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n173_op75_α
.Lx230_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 816]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n173_op75_α
n164_op75_β:
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n174_binop_α
n165_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n150_var_α
.Lx231_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n166_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx233_1:
                        test             rax, rax
                                                                                        je    .Lx233_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx233_3]
                        lea              rdx, [rip + .Lx233_4]
                                                                                        jmp   rax
.Lx233_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx233_1
.Lx233_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx233_1
.Lx233_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 80]
                                                                                        jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n168_match_rpos_α
n167_lit_integer_β:
                                                                                        jmp   n155_match_head_β
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n168_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n155_match_head_β
                                                                                        jmp   n169_match_assign_save_α
n168_match_rpos_β:
                                                                                        jmp   n155_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n169_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n176_match_len_α
n169_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n155_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n170_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n166_match_release_α
n170_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n176_match_len_β
#=======================================================================================================================
# 	TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n177_lit_integer_α
n171_lit_integer_β:
                                                                                        jmp   n185_lit_integer_α
.Lx240_0:
                        .quad            149
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx242_5
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_6]
                        lea              rdx, [rip + .Lx242_7]
                                                                                        jmp   rax
.Lx242_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx242_2
.Lx242_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx242_2
.Lx242_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx242_21
.Lx242_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
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
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n154_var_α
                                                                                        jmp   n178_binop_α
n172_call_β:
                                                                                        jmp   n154_var_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n173_op75_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 7
                                                                                        je    .Lx244_1
                        cmp              eax, 6
                                                                                        jne   .Lx244_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx244_0
.Lx244_1:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n179_op77_α
.Lx244_0:
                        lea              rdi, [rbp + 816]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 784]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n179_op77_α
n173_op75_β:
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx245_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx245_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx245_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx245_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n180_assign_α
.Lx245_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx245_2
                        add              rsp, 16
                                                                                        jmp   n180_assign_α
.Lx245_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx245_240
                        add              rsp, 32
                                                                                        jmp   n150_var_α
.Lx245_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n180_assign_α
n174_binop_β:
                        add              rsp, 32
                                                                                        jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n181_match_replace_α
n175_lit_string_β:
                                                                                        jmp   n156_op14_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n176_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx247_240
                        add              rsp, 16
                                                                                        jmp   n155_match_head_β
.Lx247_240:
                        add              r14d, 1
                                                                                        jmp   n170_match_assign_cond_α
n176_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n155_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n182_call_α
n177_lit_integer_β:
                                                                                        jmp   n185_lit_integer_α
.Lx248_0:
                        .quad            151
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n183_assign_α
n178_binop_β:
                                                                                        jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n179_op77_α:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 784]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n160_var_α
                                                                                        jmp   n156_op14_α
n179_op77_β:
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n150_var_α
n180_assign_β:
                                                                                        jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n181_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx254_0]
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              ecx, dword ptr [rbp + 48]
                        mov              r8, qword ptr [rbp + 72]
                        lea              r9, [rbp + 112]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx254_1
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "N"
.Lx254_1:
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx256_5
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx256_6]
                        lea              rdx, [rip + .Lx256_7]
                                                                                        jmp   rax
.Lx256_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx256_2
.Lx256_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx256_2
.Lx256_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx256_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx256_21
.Lx256_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx256_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx256_22
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx256_23
.Lx256_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx256_23:
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx256_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx256_3]
                        lea              rdx, [rip + .Lx256_4]
                                                                                        jmp   rax
.Lx256_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx256_2
.Lx256_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx256_2
.Lx256_1:
                        call             rt_faildescr@PLT
.Lx256_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n185_lit_integer_α
                                                                                        jmp   n185_lit_integer_α
n182_call_β:
                                                                                        jmp   n185_lit_integer_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              rdi, qword ptr [rip + .Lx257_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n154_var_α
n183_assign_β:
                                                                                        jmp   n154_var_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n186_match_head_α
n184_lit_string_β:
                                                                                        jmp   n199_op14_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#=======================================================================================================================
# 	TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n187_lit_integer_α
n185_lit_integer_β:
                                                                                        jmp   n194_lit_integer_α
.Lx259_0:
                        .quad            480
#-----------------------------------------------------------------------------------------------------------------------
n186_match_head_α:
                        mov              qword ptr [rbp + 312], rbp
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 304], r12
                        mov              qword ptr [rbp + 288], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 280], rax
                        mov              dword ptr [rbp + 272], 0
.Lx261_0:
                        mov              r14d, dword ptr [rbp + 272]
                                                                                        jmp   n188_match_sequence_α
n186_match_head_β:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, r15d
                                                                                        jg    .Lx261_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx261_1
                                                                                        jmp   .Lx261_0
.Lx261_1:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        mov              r12, qword ptr [rbp + 304]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   n199_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n189_call_α
n187_lit_integer_β:
                                                                                        jmp   n194_lit_integer_α
.Lx262_0:
                        .quad            520
#-----------------------------------------------------------------------------------------------------------------------
n188_match_sequence_α:
                        mov              dword ptr [rbp + 320], r14d
                                                                                        jmp   n191_match_defer_α
n188_match_sequence_as:
                                                                                        jmp   n190_match_release_α
n188_match_sequence_β:
                                                                                        jmp   n193_match_assign_cond_β
n188_match_sequence_af:
                                                                                        jmp   n186_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx266_5
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx266_6]
                        lea              rdx, [rip + .Lx266_7]
                                                                                        jmp   rax
.Lx266_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx266_2
.Lx266_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx266_2
.Lx266_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx266_20
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx266_21
.Lx266_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx266_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx266_22
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx266_23
.Lx266_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx266_23:
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx266_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx266_3]
                        lea              rdx, [rip + .Lx266_4]
                                                                                        jmp   rax
.Lx266_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx266_2
.Lx266_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx266_2
.Lx266_1:
                        call             rt_faildescr@PLT
.Lx266_2:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n194_lit_integer_α
                                                                                        jmp   n194_lit_integer_α
n189_call_β:
                                                                                        jmp   n194_lit_integer_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n190_match_release_α:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx268_1:
                        test             rax, rax
                                                                                        je    .Lx268_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4]
                                                                                        jmp   rax
.Lx268_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx268_1
.Lx268_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx268_1
.Lx268_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 304]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n191_match_defer_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx269_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx269_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx269_10
.Lx269_9:
                        xor              eax, eax
.Lx269_10:
                        test             rax, rax
                                                                                        jz    .Lx269_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx269_4]
                        lea              rdx, [rip + .Lx269_5]
                                                                                        jmp   rax
.Lx269_4:
                                                                                        jmp   n192_match_assign_save_α
.Lx269_5:
                                                                                        jmp   n186_match_head_β
.Lx269_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx269_2:
                        test             rax, rax
                                                                                        je    .Lx269_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx269_7]
                        lea              rdx, [rip + .Lx269_8]
                                                                                        jmp   rax
.Lx269_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx269_2
.Lx269_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx269_2
.Lx269_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n186_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx269_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n192_match_assign_save_α
.Lx269_6:
                        add              rsp, 16
                                                                                        jmp   n186_match_head_β
n191_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n192_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n196_match_break_α
n192_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n191_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n193_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n190_match_release_α
n193_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n196_match_break_β
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n197_lit_integer_α
n194_lit_integer_β:
                                                                                        jmp   proc_LBL__TEST_γ
.Lx274_0:
                        .quad            1900
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n198_call_α
n195_var_β:
                                                                                        jmp   n199_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n196_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx277_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx277_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n191_match_defer_β
.Lx277_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx277_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx277_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n191_match_defer_β
.Lx277_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx277_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx277_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n191_match_defer_β
.Lx277_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx277_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx277_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n191_match_defer_β
.Lx277_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx277_1
                        add              ecx, 1
                                                                                        jmp   .Lx277_0
.Lx277_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n193_match_assign_cond_α
n196_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n191_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n200_call_α
n197_lit_integer_β:
                                                                                        jmp   proc_LBL__TEST_γ
.Lx278_0:
                        .quad            2100
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx280_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx280_5
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx280_6]
                        lea              rdx, [rip + .Lx280_7]
                                                                                        jmp   rax
.Lx280_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_20
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx280_21
.Lx280_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx280_21:
                        mov              rdi, qword ptr [rip + .Lx280_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx280_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx280_3]
                        lea              rdx, [rip + .Lx280_4]
                                                                                        jmp   rax
.Lx280_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_1:
                        call             rt_faildescr@PLT
.Lx280_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n199_op14_α
                                                                                        jmp   n201_lit_string_α
n198_call_β:
                                                                                        jmp   n199_op14_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n199_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx284_5
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx284_6]
                        lea              rdx, [rip + .Lx284_7]
                                                                                        jmp   rax
.Lx284_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx284_2
.Lx284_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx284_2
.Lx284_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx284_20
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx284_21
.Lx284_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        call             rt_arg_stage@PLT
.Lx284_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx284_22
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx284_23
.Lx284_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx284_23:
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx284_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx284_3]
                        lea              rdx, [rip + .Lx284_4]
                                                                                        jmp   rax
.Lx284_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx284_2
.Lx284_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx284_2
.Lx284_1:
                        call             rt_faildescr@PLT
.Lx284_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    proc_LBL__TEST_γ
                                                                                        jmp   proc_LBL__TEST_γ
n200_call_β:
                                                                                        jmp   proc_LBL__TEST_γ
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n202_lit_string_α
n201_lit_string_β:
                                                                                        jmp   n199_op14_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n203_call_α
n202_lit_string_β:
                                                                                        jmp   n199_op14_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn288:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 480]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n199_op14_α
                                                                                        jmp   n204_var_α
n203_call_β:
                                                                                        jmp   n199_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n205_binop_α
n204_var_β:
                                                                                        jmp   n199_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n206_assign_α
n205_binop_β:
                                                                                        jmp   n199_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n156_op14_α
n206_assign_β:
                                                                                        jmp   n199_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_β:
                                                                                        jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1288]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_ω:
                        mov              rax, [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
                        .global          proc_ROMAN_α
                        .global          proc_ROMAN_β
                        .global          proc_ROMAN_γ
                        .global          proc_ROMAN_ω
                        sub              rsp, 1312
                        mov              [rsp + 1288], rcx
                        mov              [rsp + 1296], rdx
                        mov              [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              ecx, 1280
                        xor              eax, eax
                        rep stosb
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n292_op14_α:
                        mov              rdi, qword ptr [rbp + 1288]
                        mov              rsi, qword ptr [rbp + 1296]
                        lea              rdx, [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n293_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n293_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx297_1
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "ROMAN"
.Lx297_1:
                                                                                        jmp   proc_ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1288]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_ω:
                        mov              rax, [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_TEST_α
proc_TEST_α:
                        .global          proc_TEST_α
                        .global          proc_TEST_β
                        .global          proc_TEST_γ
                        .global          proc_TEST_ω
                        sub              rsp, 1312
                        mov              [rsp + 1288], rcx
                        mov              [rsp + 1296], rdx
                        mov              [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              ecx, 1280
                        xor              eax, eax
                        rep stosb
proc_TEST_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n298_op14_α:
                        mov              rdi, qword ptr [rbp + 1288]
                        mov              rsi, qword ptr [rbp + 1296]
                        lea              rdx, [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n299_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx303_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx303_1
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "TEST"
.Lx303_1:
                                                                                        jmp   proc_TEST_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_β:
                                                                                        jmp   proc_TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1288]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_ω:
                        mov              rax, [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ROMAN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__TEST"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__TEST_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ROMAN"
.Lstartup_pp2_0:        .string          "N"
.Lstartup_pp2_1:        .string          "UNITS"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            .Lstartup_pp2_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "TEST"
.Lstartup_pp3_0:        .string          "I"
.Lstartup_pp3_1:        .string          "J"
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
                        lea              rsi, [rip + proc_TEST_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "UNITS"
.Lgvan3:                .string          "TEST"
.Lgvan4:                .string          "I"
.Lgvan5:                .string          "J"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
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
                        sub              rsp, 1288
                        mov              rdi, rsp
                        mov              ecx, 1288
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1280], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	DEFINE("TEST(I,J)")				:(TEST_END)
# 	TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n309_lit_integer_α
n304_lit_integer_β:
                                                                                        jmp   n317_lit_integer_α
.Lx365_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:
                                                                                        jmp   n310_var_α
n305_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:
                                                                                        jmp   n304_lit_integer_α
n306_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:
                                                                                        jmp   n311_var_α
n307_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:
                                                                                        jmp   n304_lit_integer_α
n308_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n312_call_α
n309_lit_integer_β:
                                                                                        jmp   n317_lit_integer_α
.Lx370_0:
                        .quad            100
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n313_match_head_α
n310_var_β:
                                                                                        jmp   n314_op14_α
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n315_lit_string_α
n311_var_β:
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx374_5
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx374_6]
                        lea              rdx, [rip + .Lx374_7]
                                                                                        jmp   rax
.Lx374_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx374_2
.Lx374_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx374_2
.Lx374_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_20
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx374_21
.Lx374_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        call             rt_arg_stage@PLT
.Lx374_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_22
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx374_23
.Lx374_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx374_23:
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n317_lit_integer_α
                                                                                        jmp   n317_lit_integer_α
n312_call_β:
                                                                                        jmp   n317_lit_integer_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n313_match_head_α:
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 80], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx376_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n318_match_sequence_α
n313_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx376_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx376_1
                                                                                        jmp   .Lx376_0
.Lx376_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 80]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n314_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n314_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n319_binop_α
n315_lit_string_β:
                                                                                        jmp   n316_var_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          " -> "
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n320_var_α
n316_var_β:
                                                                                        jmp   n321_var_α
#=======================================================================================================================
# 	TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n322_lit_integer_α
n317_lit_integer_β:
                                                                                        jmp   n337_lit_integer_α
.Lx381_0:
                        .quad            149
#-----------------------------------------------------------------------------------------------------------------------
n318_match_sequence_α:
                                                                                        jmp   n324_lit_integer_α
n318_match_sequence_as:
                                                                                        jmp   n323_match_release_α
n318_match_sequence_β:
                                                                                        jmp   n327_match_assign_cond_β
n318_match_sequence_af:
                                                                                        jmp   n313_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n328_var_α
n319_binop_β:
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n329_op75_α
n320_var_β:
                                                                                        jmp   n321_var_α
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n330_lit_integer_α
n321_var_β:
                        add              rsp, 16
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n331_call_α
n322_lit_integer_β:
                                                                                        jmp   n337_lit_integer_α
.Lx387_0:
                        .quad            151
#-----------------------------------------------------------------------------------------------------------------------
n323_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx389_1:
                        test             rax, rax
                                                                                        je    .Lx389_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx389_3]
                        lea              rdx, [rip + .Lx389_4]
                                                                                        jmp   rax
.Lx389_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx389_1
.Lx389_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx389_1
.Lx389_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 80]
                                                                                        jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n325_match_rpos_α
n324_lit_integer_β:
                                                                                        jmp   n313_match_head_β
.Lx390_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n325_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n313_match_head_β
                                                                                        jmp   n326_match_assign_save_α
n325_match_rpos_β:
                                                                                        jmp   n313_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n326_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n333_match_len_α
n326_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n313_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n327_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n323_match_release_α
n327_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n333_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n334_call_α
n328_var_β:
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_op75_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx398_1
                        cmp              eax, 6
                                                                                        jne   .Lx398_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx398_0
.Lx398_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n335_op75_α
.Lx398_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 816]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n335_op75_α
n329_op75_β:
                                                                                        jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n336_binop_α
n330_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n311_var_α
.Lx399_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx401_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx401_5
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx401_6]
                        lea              rdx, [rip + .Lx401_7]
                                                                                        jmp   rax
.Lx401_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx401_2
.Lx401_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx401_2
.Lx401_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx401_21
.Lx401_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx401_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_22
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx401_23
.Lx401_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx401_23:
                        mov              rdi, qword ptr [rip + .Lx401_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n337_lit_integer_α
                                                                                        jmp   n337_lit_integer_α
n331_call_β:
                                                                                        jmp   n337_lit_integer_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n338_match_replace_α
n332_lit_string_β:
                                                                                        jmp   n314_op14_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n333_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx403_240
                        add              rsp, 16
                                                                                        jmp   n313_match_head_β
.Lx403_240:
                        add              r14d, 1
                                                                                        jmp   n327_match_assign_cond_α
n333_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n313_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx405_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx405_5
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx405_6]
                        lea              rdx, [rip + .Lx405_7]
                                                                                        jmp   rax
.Lx405_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx405_2
.Lx405_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx405_2
.Lx405_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx405_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx405_21
.Lx405_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx405_21:
                        mov              rdi, qword ptr [rip + .Lx405_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx405_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx405_3]
                        lea              rdx, [rip + .Lx405_4]
                                                                                        jmp   rax
.Lx405_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx405_2
.Lx405_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx405_2
.Lx405_1:
                        call             rt_faildescr@PLT
.Lx405_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n316_var_α
                                                                                        jmp   n339_binop_α
n334_call_β:
                                                                                        jmp   n316_var_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n335_op75_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 7
                                                                                        je    .Lx407_1
                        cmp              eax, 6
                                                                                        jne   .Lx407_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx407_0
.Lx407_1:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n340_op77_α
.Lx407_0:
                        lea              rdi, [rbp + 816]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 784]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n340_op77_α
n335_op75_β:
                                                                                        jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n336_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx408_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx408_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx408_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx408_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n341_assign_α
.Lx408_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx408_2
                        add              rsp, 16
                                                                                        jmp   n341_assign_α
.Lx408_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx408_240
                        add              rsp, 32
                                                                                        jmp   n311_var_α
.Lx408_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n341_assign_α
n336_binop_β:
                        add              rsp, 32
                                                                                        jmp   n311_var_α
#=======================================================================================================================
# 	TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n342_lit_integer_α
n337_lit_integer_β:
                                                                                        jmp   n347_lit_integer_α
.Lx409_0:
                        .quad            480
#-----------------------------------------------------------------------------------------------------------------------
n338_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx411_0]
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              ecx, dword ptr [rbp + 48]
                        mov              r8, qword ptr [rbp + 72]
                        lea              r9, [rbp + 112]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx411_1
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "N"
.Lx411_1:
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n343_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_binop_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n344_assign_α
n339_binop_β:
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_op77_α:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 784]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n321_var_α
                                                                                        jmp   n314_op14_α
n340_op77_β:
                                                                                        jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n311_var_α
n341_assign_β:
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n345_call_α
n342_lit_integer_β:
                                                                                        jmp   n347_lit_integer_α
.Lx416_0:
                        .quad            520
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n346_match_head_α
n343_lit_string_β:
                                                                                        jmp   n358_op14_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_α:
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              rdi, qword ptr [rip + .Lx418_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n316_var_α
n344_assign_β:
                                                                                        jmp   n316_var_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx420_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx420_5
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx420_6]
                        lea              rdx, [rip + .Lx420_7]
                                                                                        jmp   rax
.Lx420_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx420_20
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx420_21
.Lx420_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx420_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx420_22
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx420_23
.Lx420_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx420_23:
                        mov              rdi, qword ptr [rip + .Lx420_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n347_lit_integer_α
                                                                                        jmp   n347_lit_integer_α
n345_call_β:
                                                                                        jmp   n347_lit_integer_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n346_match_head_α:
                        mov              qword ptr [rbp + 312], rbp
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 304], r12
                        mov              qword ptr [rbp + 288], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 280], rax
                        mov              dword ptr [rbp + 272], 0
.Lx422_0:
                        mov              r14d, dword ptr [rbp + 272]
                                                                                        jmp   n348_match_sequence_α
n346_match_head_β:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, r15d
                                                                                        jg    .Lx422_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx422_1
                                                                                        jmp   .Lx422_0
.Lx422_1:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        mov              r12, qword ptr [rbp + 304]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   n358_op14_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n349_lit_integer_α
n347_lit_integer_β:
                                                                                        jmp   main_γ
.Lx423_0:
                        .quad            1900
#-----------------------------------------------------------------------------------------------------------------------
n348_match_sequence_α:
                        mov              dword ptr [rbp + 320], r14d
                                                                                        jmp   n351_match_defer_α
n348_match_sequence_as:
                                                                                        jmp   n350_match_release_α
n348_match_sequence_β:
                                                                                        jmp   n353_match_assign_cond_β
n348_match_sequence_af:
                                                                                        jmp   n346_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n354_call_α
n349_lit_integer_β:
                                                                                        jmp   main_γ
.Lx426_0:
                        .quad            2100
#-----------------------------------------------------------------------------------------------------------------------
n350_match_release_α:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx428_1:
                        test             rax, rax
                                                                                        je    .Lx428_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx428_3]
                        lea              rdx, [rip + .Lx428_4]
                                                                                        jmp   rax
.Lx428_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx428_1
.Lx428_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx428_1
.Lx428_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 304]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   n355_var_α
#-----------------------------------------------------------------------------------------------------------------------
n351_match_defer_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx429_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx429_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx429_10
.Lx429_9:
                        xor              eax, eax
.Lx429_10:
                        test             rax, rax
                                                                                        jz    .Lx429_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx429_4]
                        lea              rdx, [rip + .Lx429_5]
                                                                                        jmp   rax
.Lx429_4:
                                                                                        jmp   n352_match_assign_save_α
.Lx429_5:
                                                                                        jmp   n346_match_head_β
.Lx429_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx429_2:
                        test             rax, rax
                                                                                        je    .Lx429_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx429_7]
                        lea              rdx, [rip + .Lx429_8]
                                                                                        jmp   rax
.Lx429_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx429_2
.Lx429_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx429_2
.Lx429_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n346_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx429_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n352_match_assign_save_α
.Lx429_6:
                        add              rsp, 16
                                                                                        jmp   n346_match_head_β
n351_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n352_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n356_match_break_α
n352_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n351_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n353_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n350_match_release_α
n353_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n356_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n354_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx435_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx435_5
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx435_6]
                        lea              rdx, [rip + .Lx435_7]
                                                                                        jmp   rax
.Lx435_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx435_2
.Lx435_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx435_2
.Lx435_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx435_20
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx435_21
.Lx435_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        call             rt_arg_stage@PLT
.Lx435_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx435_22
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx435_23
.Lx435_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx435_23:
                        mov              rdi, qword ptr [rip + .Lx435_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx435_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx435_3]
                        lea              rdx, [rip + .Lx435_4]
                                                                                        jmp   rax
.Lx435_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx435_2
.Lx435_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx435_2
.Lx435_1:
                        call             rt_faildescr@PLT
.Lx435_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   main_γ
n354_call_β:
                                                                                        jmp   main_γ
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "TEST"
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n355_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n357_call_α
n355_var_β:
                                                                                        jmp   n358_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n356_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx438_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx438_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n351_match_defer_β
.Lx438_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx438_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx438_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n351_match_defer_β
.Lx438_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx438_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx438_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n351_match_defer_β
.Lx438_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx438_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx438_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n351_match_defer_β
.Lx438_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx438_1
                        add              ecx, 1
                                                                                        jmp   .Lx438_0
.Lx438_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n353_match_assign_cond_α
n356_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n351_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx440_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx440_5
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx440_6]
                        lea              rdx, [rip + .Lx440_7]
                                                                                        jmp   rax
.Lx440_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx440_2
.Lx440_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx440_2
.Lx440_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx440_20
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx440_21
.Lx440_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx440_21:
                        mov              rdi, qword ptr [rip + .Lx440_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx440_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx440_3]
                        lea              rdx, [rip + .Lx440_4]
                                                                                        jmp   rax
.Lx440_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx440_2
.Lx440_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx440_2
.Lx440_1:
                        call             rt_faildescr@PLT
.Lx440_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n358_op14_α
                                                                                        jmp   n359_lit_string_α
n357_call_β:
                                                                                        jmp   n358_op14_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n358_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n360_lit_string_α
n359_lit_string_β:
                                                                                        jmp   n358_op14_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n361_call_α
n360_lit_string_β:
                                                                                        jmp   n358_op14_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn446:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rbp + 480]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n358_op14_α
                                                                                        jmp   n362_var_α
n361_call_β:
                                                                                        jmp   n358_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n363_binop_α
n362_var_β:
                                                                                        jmp   n358_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n363_binop_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n364_assign_α
n363_binop_β:
                                                                                        jmp   n358_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n364_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n314_op14_α
n364_assign_β:
                                                                                        jmp   n358_op14_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1280]
                        add              rsp, 1288
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1280]
                        add              rsp, 1288
                        ret
                        .section         .rodata
.S0:                    .string          "UNITS"
                        .text
                        .section         .note.GNU-stack,"",@progbits
