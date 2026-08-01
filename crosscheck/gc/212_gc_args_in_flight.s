                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__j3_α
proc_LBL__j3_α:
proc_LBL__j3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__j3_ω
#=======================================================================================================================
# j3      j3 = a '|' b '|' c                                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rsp + 112], 1
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n3_binop_α
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rsp + 144], 1
                        mov              dword ptr [rsp + 148], 1
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n7_binop_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n11_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n11_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__j3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__j3_β:
                                                                                        jmp   proc_LBL__j3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__j3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__j3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_j3_α
proc_j3_α:
proc_j3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n25_save_restore_α:
                        mov              rdi, rcx
                        mov              rsi, rdx
                        lea              rdx, [rsp + 0]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n26_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n26_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx30_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx30_1
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "j3"
.Lx30_1:
                                                                                        jmp   proc_j3_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_j3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_j3_β:
                                                                                        jmp   proc_j3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_j3_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_j3_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__j3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__j3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "j3"
.Lstartup_pp1_0:        .string          "a"
.Lstartup_pp1_1:        .string          "b"
.Lstartup_pp1_2:        .string          "c"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            .Lstartup_pp1_1
                        .quad            .Lstartup_pp1_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_j3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "j3"
.Lgvan1:                .string          "a"
.Lgvan2:                .string          "b"
.Lgvan3:                .string          "c"
.Lgvan4:                .string          "I"
.Lgvan5:                .string          "R"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         DEFINE('j3(a,b,c)')                                         :(j_end)
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_assign_α
.Lx73_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 16
                                                                                        jmp   n33_var_α
#=======================================================================================================================
# lp      I = LT(I, 80) I + 1                                         :F(done)
#         :(lp)
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_coerce_numeric_α
.Lx76_0:
                        .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n35_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx78_1
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
.Lx78_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_coerce_numeric_α
.Lx78_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n36_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n36_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx80_1
                        cmp              eax, 6
                                                                                        jne   .Lx80_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx80_0
.Lx80_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_cmp_test_α
.Lx80_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n37_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n37_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx82_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n56_var_α
.Lx82_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n40_binop_α
.Lx84_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx85_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n56_var_α
.Lx85_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 144
                                                                                        jmp   n43_lit_string_α
#=======================================================================================================================
#         R = j3('A' I, DUPL('b', 10) I, 'C' I)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 624
                        mov              qword ptr [rsp + 416], 1
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n44_var_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n45_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rsp + 528], 1
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n47_lit_integer_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 544], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n48_call_α
.Lx92_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn94:               .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn94]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx93_240
                        add              rsp, 624
                                                                                        jmp   n33_var_α
.Lx93_240:
                                                                                        jmp   n49_var_α
n48_call_β:
                        add              rsp, 624
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n50_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rsp + 592], 1
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n52_var_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                                                                                        jmp   n53_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n54_call_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx101_0]
                        mov              esi, 3
                        mov              edx, 3
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx101_5
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx101_6]
                        lea              rdx, [rip + .Lx101_7]
                                                                                        jmp   rax
.Lx101_6:
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
                                                                                        jmp   .Lx101_2
.Lx101_7:
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
                                                                                        jmp   .Lx101_2
.Lx101_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx101_21
.Lx101_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        call             rt_arg_stage@PLT
.Lx101_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_22
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx101_23
.Lx101_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        call             rt_arg_stage@PLT
.Lx101_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_24
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx101_25
.Lx101_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        call             rt_arg_stage@PLT
.Lx101_25:
                        mov              rdi, qword ptr [rip + .Lx101_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx101_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx101_3]
                        lea              rdx, [rip + .Lx101_4]
                                                                                        jmp   rax
.Lx101_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx101_2
.Lx101_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx101_2
.Lx101_1:
                        call             rt_faildescr@PLT
.Lx101_2:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx101_240
                        add              rsp, 624
                                                                                        jmp   n33_var_α
.Lx101_240:
                                                                                        jmp   n55_assign_α
n54_call_β:
                                                                                        jmp   n33_var_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "j3"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 624
                                                                                        jmp   n33_var_α
#=======================================================================================================================
# done    OUTPUT = R
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx104_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_goto_α:
                                                                                        jmp   n59_var_α
n58_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# j3      j3 = a '|' b '|' c                                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_binop_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n63_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_binop_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n69_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n69_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:
                                                                                        jmp   n31_lit_integer_α
n70_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_goto_α:
                                                                                        jmp   n33_var_α
n71_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_goto_α:
                                                                                        jmp   n56_var_α
n72_goto_β:
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
                        .section         .note.GNU-stack,"",@progbits
