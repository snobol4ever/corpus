                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ROMAN_α
proc_LBL__ROMAN_α:
                        .global          proc_LBL__ROMAN_α
                        .global          proc_LBL__ROMAN_β
                        .global          proc_LBL__ROMAN_γ
                        .global          proc_LBL__ROMAN_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
proc_LBL__ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n3_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n4_call_α
n1_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n5_lit_string_α
n2_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#=======================================================================================================================
# ROMAN   N   RPOS(1)  LEN(1) . T  =         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n6_match_head_α
n3_var_β:
                                                                                        jmp   n7_op14_α
#=======================================================================================================================
#     DEFINE('ROMAN(N)T')                 :(ROMAN_END)
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
                        .section         .rodata
.Lrkfn66:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rbp + 864]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_integer_α
                                                                                        jmp   n8_assign_α
n4_call_β:
                                                                                        jmp   n9_lit_integer_α
#=======================================================================================================================
# LOOP    R = ROMAN('1776')
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n10_call_α
n5_lit_string_β:
                                                                                        jmp   n14_var_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "1776"
#-----------------------------------------------------------------------------------------------------------------------
n6_match_head_α:
                        mov              qword ptr [rbp + 280], rbp
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 272], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx69_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n11_match_sequence_α
n6_match_head_β:
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
                        mov              r12, qword ptr [rbp + 272]
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   n7_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n9_lit_integer_α
n8_assign_β:
                                                                                        jmp   n9_lit_integer_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
n9_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n5_lit_string_α
.Lx73_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx75_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx75_5
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_6]
                        lea              rdx, [rip + .Lx75_7]
                                                                                        jmp   rax
.Lx75_6:
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
                                                                                        jmp   .Lx75_2
.Lx75_7:
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
                                                                                        jmp   .Lx75_2
.Lx75_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx75_20
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx75_21
.Lx75_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        call             rt_arg_stage@PLT
.Lx75_21:
                        mov              rdi, qword ptr [rip + .Lx75_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx75_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_3]
                        lea              rdx, [rip + .Lx75_4]
                                                                                        jmp   rax
.Lx75_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx75_2
.Lx75_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx75_2
.Lx75_1:
                        call             rt_faildescr@PLT
.Lx75_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n14_var_α
                                                                                        jmp   n13_assign_α
n10_call_β:
                                                                                        jmp   n14_var_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n11_match_sequence_α:
                                                                                        jmp   n16_lit_integer_α
n11_match_sequence_as:
                                                                                        jmp   n15_match_release_α
n11_match_sequence_β:
                                                                                        jmp   n19_match_assign_cond_β
n11_match_sequence_af:
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n5_lit_string_α
n12_assign_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n14_var_α
n13_assign_β:
                                                                                        jmp   n14_var_α
#=======================================================================================================================
#     N = LT(N, 100000) N + 1            :S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n20_lit_integer_α
n14_var_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 288], eax
                        mov              qword ptr [rsp + 312], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx82_1:
                        test             rax, rax
                                                                                        je    .Lx82_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4]
                                                                                        jmp   rax
.Lx82_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx82_1
.Lx82_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx82_1
.Lx82_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 272]
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n17_match_rpos_α
n16_lit_integer_β:
                                                                                        jmp   n6_match_head_β
.Lx83_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n6_match_head_β
                                                                                        jmp   n18_match_assign_save_α
n17_match_rpos_β:
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n23_match_len_α
n18_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n15_match_release_α
n19_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n23_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n24_op75_α
n20_lit_integer_β:
                                                                                        jmp   n21_call_α
.Lx89_0:
                        .quad            100000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        .section         .rodata
.Lrkfn91:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n25_assign_α
n21_call_β:
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n27_match_replace_α
n22_lit_string_β:
                                                                                        jmp   n7_op14_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n23_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx93_240
                        add              rsp, 16
                                                                                        jmp   n6_match_head_β
.Lx93_240:
                        add              r14d, 1
                                                                                        jmp   n19_match_assign_cond_α
n23_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n24_op75_α:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 7
                                                                                        je    .Lx95_1
                        cmp              eax, 6
                                                                                        jne   .Lx95_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx95_0
.Lx95_1:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n28_op75_α
.Lx95_0:
                        lea              rdi, [rbp + 1040]
                        lea              rsi, [rbp + 1024]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_op75_α
n24_op75_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n26_lit_string_α
n25_assign_β:
                                                                                        jmp   n26_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " R
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_var_α
n26_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n33_lit_string_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n27_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx99_0]
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              r8, qword ptr [rbp + 264]
                        lea              r9, [rbp + 304]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx99_1
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "N"
.Lx99_1:
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op75_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 7
                                                                                        je    .Lx101_1
                        cmp              eax, 6
                                                                                        jne   .Lx101_0
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 6
                                                                                        jne   .Lx101_0
.Lx101_1:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n31_op77_α
.Lx101_0:
                        lea              rdi, [rbp + 1024]
                        lea              rsi, [rbp + 1040]
                        lea              rdx, [rbp + 992]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n31_op77_α
n28_op75_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_binop_α
n29_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n33_lit_string_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n34_match_head_α
n30_lit_string_β:
                                                                                        jmp   n52_op14_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n31_op77_α:
                        lea              rdi, [rbp + 1008]
                        lea              rsi, [rbp + 992]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n21_call_α
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                                                                                        jmp   n35_var_α
n31_op77_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_assign_α
n32_binop_β:
                        add              rsp, 32
                                                                                        jmp   n33_lit_string_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_var_α
n33_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   proc_LBL__ROMAN_γ
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n34_match_head_α:
                        mov              qword ptr [rbp + 504], rbp
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 496], r12
                        mov              qword ptr [rbp + 480], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 472], rax
                        mov              dword ptr [rbp + 464], 0
.Lx109_0:
                        mov              r14d, dword ptr [rbp + 464]
                                                                                        jmp   n38_match_sequence_α
n34_match_head_β:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, r15d
                                                                                        jg    .Lx109_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx109_1
                                                                                        jmp   .Lx109_0
.Lx109_1:
                        mov              rax, qword ptr [rbp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 480]
                        mov              r12, qword ptr [rbp + 496]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   n52_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n39_lit_integer_α
n35_var_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx111_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n33_lit_string_α
n36_assign_β:
                                                                                        jmp   n33_lit_string_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_var_α
n37_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_LBL__ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
n38_match_sequence_α:
                        mov              dword ptr [rbp + 512], r14d
                                                                                        jmp   n42_match_defer_α
n38_match_sequence_as:
                                                                                        jmp   n41_match_release_α
n38_match_sequence_β:
                                                                                        jmp   n44_match_assign_cond_β
n38_match_sequence_af:
                                                                                        jmp   n34_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n45_binop_α
n39_lit_integer_β:
                                                                                        jmp   n21_call_α
.Lx115_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_binop_α
n40_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   proc_LBL__ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
n41_match_release_α:
                        mov              rax, qword ptr [rbp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 480]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx118_1:
                        test             rax, rax
                                                                                        je    .Lx118_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx118_3]
                        lea              rdx, [rip + .Lx118_4]
                                                                                        jmp   rax
.Lx118_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx118_1
.Lx118_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx118_1
.Lx118_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 496]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_match_defer_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx119_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx119_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx119_10
.Lx119_9:
                        xor              eax, eax
.Lx119_10:
                        test             rax, rax
                                                                                        jz    .Lx119_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx119_4]
                        lea              rdx, [rip + .Lx119_5]
                                                                                        jmp   rax
.Lx119_4:
                                                                                        jmp   n43_match_assign_save_α
.Lx119_5:
                                                                                        jmp   n34_match_head_β
.Lx119_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx119_2:
                        test             rax, rax
                                                                                        je    .Lx119_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx119_7]
                        lea              rdx, [rip + .Lx119_8]
                                                                                        jmp   rax
.Lx119_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx119_2
.Lx119_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx119_2
.Lx119_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n34_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx119_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n43_match_assign_save_α
.Lx119_6:
                        add              rsp, 16
                                                                                        jmp   n34_match_head_β
n42_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n43_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n48_match_break_α
n43_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n42_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n41_match_release_α
n44_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n48_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 100
                                                                                        je    .Lx124_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx124_2
.Lx124_1:
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1056], 6
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n49_binop_α
.Lx124_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 0
                        lea              r9, [rbp + 1056]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n49_binop_α
.Lx124_2:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n21_call_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n49_binop_α
n45_binop_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx125_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx125_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx125_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx125_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_binop_α
.Lx125_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx125_2
                        add              rsp, 16
                                                                                        jmp   n50_binop_α
.Lx125_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx125_240
                        add              rsp, 48
                                                                                        jmp   proc_LBL__ROMAN_γ
.Lx125_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_binop_α
n46_binop_β:
                        add              rsp, 48
                                                                                        jmp   proc_LBL__ROMAN_γ
#=======================================================================================================================
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n51_call_α
n47_var_β:
                                                                                        jmp   n52_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n48_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx128_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx128_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n42_match_defer_β
.Lx128_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx128_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx128_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n42_match_defer_β
.Lx128_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx128_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx128_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n42_match_defer_β
.Lx128_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx128_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx128_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n42_match_defer_β
.Lx128_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx128_1
                        add              ecx, 1
                                                                                        jmp   .Lx128_0
.Lx128_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n44_match_assign_cond_α
n48_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n42_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n53_assign_α
n49_binop_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_assign_α
n50_binop_β:
                        add              rsp, 32
                                                                                        jmp   proc_LBL__ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx132_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx132_5
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx132_6]
                        lea              rdx, [rip + .Lx132_7]
                                                                                        jmp   rax
.Lx132_6:
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
                                                                                        jmp   .Lx132_2
.Lx132_7:
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
                                                                                        jmp   .Lx132_2
.Lx132_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx132_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx132_21
.Lx132_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx132_21:
                        mov              rdi, qword ptr [rip + .Lx132_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx132_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx132_3]
                        lea              rdx, [rip + .Lx132_4]
                                                                                        jmp   rax
.Lx132_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx132_2
.Lx132_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx132_2
.Lx132_1:
                        call             rt_faildescr@PLT
.Lx132_2:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n52_op14_α
                                                                                        jmp   n55_lit_string_α
n51_call_β:
                                                                                        jmp   n52_op14_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n52_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n5_lit_string_α
n53_assign_β:
                                                                                        jmp   n21_call_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx136_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   proc_LBL__ROMAN_γ
n54_assign_β:
                                                                                        jmp   proc_LBL__ROMAN_γ
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n56_lit_string_α
n55_lit_string_β:
                                                                                        jmp   n52_op14_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n57_call_α
n56_lit_string_β:
                                                                                        jmp   n52_op14_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn140:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rbp + 672]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n52_op14_α
                                                                                        jmp   n58_var_α
n57_call_β:
                                                                                        jmp   n52_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n59_binop_α
n58_var_β:
                                                                                        jmp   n52_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n60_assign_α
n59_binop_β:
                                                                                        jmp   n52_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n7_op14_α
n60_assign_β:
                                                                                        jmp   n52_op14_α
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
                        mov              rax, [rbp + 1272]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
                        .global          proc_ROMAN_α
                        .global          proc_ROMAN_β
                        .global          proc_ROMAN_γ
                        .global          proc_ROMAN_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              ecx, 1264
                        xor              eax, eax
                        rep stosb
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n144_op14_α:
                        mov              rdi, qword ptr [rbp + 1272]
                        mov              rsi, qword ptr [rbp + 1280]
                        lea              rdx, [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n145_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx149_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx149_1
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "ROMAN"
.Lx149_1:
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
                        mov              rax, [rbp + 1272]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
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
                        mov              esi, 1264
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "ROMAN"
.Lstartup_pp1_0:        .string          "N"
.Lstartup_pp1_1:        .string          "T"
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
                        lea              rsi, [rip + proc_ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "T"
.Lgvan3:                .string          "T1"
.Lgvan4:                .string          "R"
.Lgvan5:                .string          "T2"
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
                        sub              rsp, 1272
                        mov              rdi, rsp
                        mov              ecx, 1272
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1264], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n154_lit_integer_α
n150_lit_string_β:
                                                                                        jmp   n164_lit_string_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n151_goto_α:
                                                                                        jmp   n155_var_α
n151_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n152_goto_α:
                                                                                        jmp   n156_call_α
n152_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_goto_α:
                                                                                        jmp   n157_lit_string_α
n153_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n158_call_α
n154_lit_integer_β:
                                                                                        jmp   n164_lit_string_α
.Lx221_0:
                        .quad            1
#=======================================================================================================================
# ROMAN   N   RPOS(1)  LEN(1) . T  =         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n159_match_head_α
n155_var_β:
                                                                                        jmp   n160_op14_α
#=======================================================================================================================
#     DEFINE('ROMAN(N)T')                 :(ROMAN_END)
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:
                        .section         .rodata
.Lrkfn224:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn224]
                        lea              rsi, [rbp + 864]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n162_lit_integer_α
                                                                                        jmp   n161_assign_α
n156_call_β:
                                                                                        jmp   n162_lit_integer_α
#=======================================================================================================================
# LOOP    R = ROMAN('1776')
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n163_call_α
n157_lit_string_β:
                                                                                        jmp   n168_var_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "1776"
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn227:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n164_lit_string_α
                                                                                        jmp   n164_lit_string_α
n158_call_β:
                                                                                        jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_match_head_α:
                        mov              qword ptr [rbp + 280], rbp
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 272], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx229_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n165_match_sequence_α
n159_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx229_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx229_1
                                                                                        jmp   .Lx229_0
.Lx229_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 272]
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   n160_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n160_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n162_lit_integer_α
n161_assign_β:
                                                                                        jmp   n162_lit_integer_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n166_assign_α
n162_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n157_lit_string_α
.Lx233_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx235_5
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_6]
                        lea              rdx, [rip + .Lx235_7]
                                                                                        jmp   rax
.Lx235_6:
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
                                                                                        jmp   .Lx235_2
.Lx235_7:
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
                                                                                        jmp   .Lx235_2
.Lx235_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
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
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n168_var_α
                                                                                        jmp   n167_assign_α
n163_call_β:
                                                                                        jmp   n168_var_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "ROMAN"
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n169_lit_integer_α
n164_lit_string_β:
                                                                                        jmp   n156_call_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n165_match_sequence_α:
                                                                                        jmp   n171_lit_integer_α
n165_match_sequence_as:
                                                                                        jmp   n170_match_release_α
n165_match_sequence_β:
                                                                                        jmp   n174_match_assign_cond_β
n165_match_sequence_af:
                                                                                        jmp   n159_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n157_lit_string_α
n166_assign_β:
                                                                                        jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n168_var_α
n167_assign_β:
                                                                                        jmp   n168_var_α
#=======================================================================================================================
#     N = LT(N, 100000) N + 1            :S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n175_lit_integer_α
n168_var_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n177_call_α
n169_lit_integer_β:
                                                                                        jmp   n156_call_α
.Lx242_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n170_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 288], eax
                        mov              qword ptr [rsp + 312], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx244_1:
                        test             rax, rax
                                                                                        je    .Lx244_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx244_3]
                        lea              rdx, [rip + .Lx244_4]
                                                                                        jmp   rax
.Lx244_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx244_1
.Lx244_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx244_1
.Lx244_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 272]
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n172_match_rpos_α
n171_lit_integer_β:
                                                                                        jmp   n159_match_head_β
.Lx245_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n172_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n159_match_head_β
                                                                                        jmp   n173_match_assign_save_α
n172_match_rpos_β:
                                                                                        jmp   n159_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n173_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n179_match_len_α
n173_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n159_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n174_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n170_match_release_α
n174_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n179_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n180_op75_α
n175_lit_integer_β:
                                                                                        jmp   n176_call_α
.Lx251_0:
                        .quad            100000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n176_call_α:
                        .section         .rodata
.Lrkfn253:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                                                                                        jmp   n181_assign_α
n176_call_β:
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn255:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n156_call_α
                                                                                        jmp   n156_call_α
n177_call_β:
                                                                                        jmp   n156_call_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n183_match_replace_α
n178_lit_string_β:
                                                                                        jmp   n160_op14_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n179_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx257_240
                        add              rsp, 16
                                                                                        jmp   n159_match_head_β
.Lx257_240:
                        add              r14d, 1
                                                                                        jmp   n174_match_assign_cond_α
n179_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n159_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n180_op75_α:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 7
                                                                                        je    .Lx259_1
                        cmp              eax, 6
                                                                                        jne   .Lx259_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx259_0
.Lx259_1:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n184_op75_α
.Lx259_0:
                        lea              rdi, [rbp + 1040]
                        lea              rsi, [rbp + 1024]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n184_op75_α
n180_op75_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n182_lit_string_α
n181_assign_β:
                                                                                        jmp   n182_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " R
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n185_var_α
n182_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n189_lit_string_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n183_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx263_0]
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              r8, qword ptr [rbp + 264]
                        lea              r9, [rbp + 304]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx263_1
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "N"
.Lx263_1:
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_op75_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 7
                                                                                        je    .Lx265_1
                        cmp              eax, 6
                                                                                        jne   .Lx265_0
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 6
                                                                                        jne   .Lx265_0
.Lx265_1:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n187_op77_α
.Lx265_0:
                        lea              rdi, [rbp + 1024]
                        lea              rsi, [rbp + 1040]
                        lea              rdx, [rbp + 992]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n187_op77_α
n184_op75_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n188_binop_α
n185_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n189_lit_string_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n190_match_head_α
n186_lit_string_β:
                                                                                        jmp   n208_op14_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n187_op77_α:
                        lea              rdi, [rbp + 1008]
                        lea              rsi, [rbp + 992]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n176_call_α
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                                                                                        jmp   n191_var_α
n187_op77_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n192_assign_α
n188_binop_β:
                        add              rsp, 32
                                                                                        jmp   n189_lit_string_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n193_var_α
n189_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n190_match_head_α:
                        mov              qword ptr [rbp + 504], rbp
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 496], r12
                        mov              qword ptr [rbp + 480], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 472], rax
                        mov              dword ptr [rbp + 464], 0
.Lx273_0:
                        mov              r14d, dword ptr [rbp + 464]
                                                                                        jmp   n194_match_sequence_α
n190_match_head_β:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, r15d
                                                                                        jg    .Lx273_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx273_1
                                                                                        jmp   .Lx273_0
.Lx273_1:
                        mov              rax, qword ptr [rbp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 480]
                        mov              r12, qword ptr [rbp + 496]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   n208_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n195_lit_integer_α
n191_var_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n189_lit_string_α
n192_assign_β:
                                                                                        jmp   n189_lit_string_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n196_var_α
n193_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n194_match_sequence_α:
                        mov              dword ptr [rbp + 512], r14d
                                                                                        jmp   n198_match_defer_α
n194_match_sequence_as:
                                                                                        jmp   n197_match_release_α
n194_match_sequence_β:
                                                                                        jmp   n200_match_assign_cond_β
n194_match_sequence_af:
                                                                                        jmp   n190_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n201_binop_α
n195_lit_integer_β:
                                                                                        jmp   n176_call_α
.Lx279_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n202_binop_α
n196_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n197_match_release_α:
                        mov              rax, qword ptr [rbp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 480]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx282_1:
                        test             rax, rax
                                                                                        je    .Lx282_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx282_3]
                        lea              rdx, [rip + .Lx282_4]
                                                                                        jmp   rax
.Lx282_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx282_1
.Lx282_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx282_1
.Lx282_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 496]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n198_match_defer_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx283_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx283_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx283_10
.Lx283_9:
                        xor              eax, eax
.Lx283_10:
                        test             rax, rax
                                                                                        jz    .Lx283_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx283_4]
                        lea              rdx, [rip + .Lx283_5]
                                                                                        jmp   rax
.Lx283_4:
                                                                                        jmp   n199_match_assign_save_α
.Lx283_5:
                                                                                        jmp   n190_match_head_β
.Lx283_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx283_2:
                        test             rax, rax
                                                                                        je    .Lx283_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx283_7]
                        lea              rdx, [rip + .Lx283_8]
                                                                                        jmp   rax
.Lx283_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx283_2
.Lx283_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx283_2
.Lx283_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n190_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx283_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n199_match_assign_save_α
.Lx283_6:
                        add              rsp, 16
                                                                                        jmp   n190_match_head_β
n198_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n199_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n204_match_break_α
n199_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n198_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n200_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n197_match_release_α
n200_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n204_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n201_binop_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 100
                                                                                        je    .Lx288_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx288_2
.Lx288_1:
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1056], 6
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n205_binop_α
.Lx288_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 0
                        lea              r9, [rbp + 1056]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n205_binop_α
.Lx288_2:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n176_call_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n205_binop_α
n201_binop_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx289_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx289_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx289_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx289_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n206_binop_α
.Lx289_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx289_2
                        add              rsp, 16
                                                                                        jmp   n206_binop_α
.Lx289_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx289_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx289_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n206_binop_α
n202_binop_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#=======================================================================================================================
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n207_call_α
n203_var_β:
                                                                                        jmp   n208_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n204_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx292_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx292_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n198_match_defer_β
.Lx292_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx292_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx292_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n198_match_defer_β
.Lx292_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx292_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx292_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n198_match_defer_β
.Lx292_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx292_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx292_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n198_match_defer_β
.Lx292_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx292_1
                        add              ecx, 1
                                                                                        jmp   .Lx292_0
.Lx292_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n200_match_assign_cond_α
n204_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n198_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n209_assign_α
n205_binop_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n210_assign_α
n206_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx296_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx296_5
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx296_6]
                        lea              rdx, [rip + .Lx296_7]
                                                                                        jmp   rax
.Lx296_6:
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
                                                                                        jmp   .Lx296_2
.Lx296_7:
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
                                                                                        jmp   .Lx296_2
.Lx296_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx296_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx296_21
.Lx296_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx296_21:
                        mov              rdi, qword ptr [rip + .Lx296_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx296_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx296_3]
                        lea              rdx, [rip + .Lx296_4]
                                                                                        jmp   rax
.Lx296_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx296_2
.Lx296_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx296_2
.Lx296_1:
                        call             rt_faildescr@PLT
.Lx296_2:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n208_op14_α
                                                                                        jmp   n211_lit_string_α
n207_call_β:
                                                                                        jmp   n208_op14_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n208_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n157_lit_string_α
n209_assign_β:
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx300_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   main_γ
n210_assign_β:
                                                                                        jmp   main_γ
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n212_lit_string_α
n211_lit_string_β:
                                                                                        jmp   n208_op14_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n213_call_α
n212_lit_string_β:
                                                                                        jmp   n208_op14_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn304:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 672]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n208_op14_α
                                                                                        jmp   n214_var_α
n213_call_β:
                                                                                        jmp   n208_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n215_binop_α
n214_var_β:
                                                                                        jmp   n208_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n216_assign_α
n215_binop_β:
                                                                                        jmp   n208_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n160_op14_α
n216_assign_β:
                                                                                        jmp   n208_op14_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1264]
                        add              rsp, 1272
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1264]
                        add              rsp, 1272
                        ret
                        .section         .rodata
.S0:                    .string          "T"
                        .text
                        .section         .note.GNU-stack,"",@progbits
