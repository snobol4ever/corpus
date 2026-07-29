                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_copyright$2F1_α
proc_prolog_copyright$2F1_α:
                        .global          proc_prolog_copyright$2F1_α
                        .global          proc_prolog_copyright$2F1_β
                        .global          proc_prolog_copyright$2F1_γ
                        .global          proc_prolog_copyright$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_copyright$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx7_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx7_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx7_101
.Lx7_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx7_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_copyright$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n3_op11_α
.Lx10_0:
                        .quad            .Lx10_0_s
.Lx10_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx11_2]
                                                                                        jmp   .Lx11_3
.Lx11_2:
                        .quad            .Lx11_2_s
.Lx11_2_s:
                        .string          ""
.Lx11_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_move_label_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_move_label_α:
                        lea              rax, [rip + n5_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_copyright$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_copyright$2F1_ω
                                                                                        jmp   proc_prolog_copyright$2F1_ω
n5_op11_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n6_disjunction_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx17_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx17_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_copyright$2F1_α_body
.Lx17_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx17_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_version$2F1_α
proc_prolog_version$2F1_α:
                        .global          proc_prolog_version$2F1_α
                        .global          proc_prolog_version$2F1_β
                        .global          proc_prolog_version$2F1_γ
                        .global          proc_prolog_version$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_version$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx25_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx25_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx25_101
.Lx25_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx25_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   n19_var_ref_α
n18_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n21_op11_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "4.3.12"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx29_2]
                                                                                        jmp   .Lx29_3
.Lx29_2:
                        .quad            .Lx29_2_s
.Lx29_2_s:
                        .string          "4.3.12"
.Lx29_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n23_op11_α
                                                                                        jmp   n22_move_label_α
n21_op11_β:
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_move_label_α:
                        lea              rax, [rip + n23_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_version$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   proc_prolog_version$2F1_ω
n23_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n24_disjunction_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_β:
                                                                                        jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx35_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx35_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_version$2F1_α_body
.Lx35_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx35_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse$2F2_α
proc_reverse$2F2_α:
                        .global          proc_reverse$2F2_α
                        .global          proc_reverse$2F2_β
                        .global          proc_reverse$2F2_γ
                        .global          proc_reverse$2F2_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse$2F2_α_body:
                        lea              rax, [rip + n55_suspend_β]
                        mov              qword ptr [rbp + 992], rax
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx69_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx69_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx69_101
.Lx69_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx69_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n37_var_ref_α
n36_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n39_lit_string_α
.Lx72_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n40_op11_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        lea              r8, [rbp + 896]
.Lx74_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx74_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_111
                        cmp              esi, 1
                                                                                        jne   .Lx74_112
                        mov              r8, rax
                                                                                        jmp   .Lx74_110
.Lx74_112:
                        cmp              esi, 2
                                                                                        jne   .Lx74_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx74_111
                        mov              r8, rax
                                                                                        jmp   .Lx74_110
.Lx74_113:
                        cmp              eax, 13
                                                                                        jne   .Lx74_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_111
                        cmp              rax, r8
                                                                                        je    .Lx74_111
                        mov              r8, rax
                                                                                        jmp   .Lx74_110
.Lx74_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_114
                        cmp              eax, 99
                                                                                        je    .Lx74_114
                        cmp              eax, 13
                                                                                        jne   .Lx74_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx74_114
                                                                                        jmp   .Lx74_118
.Lx74_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx74_115
                        cmp              eax, 6
                                                                                        je    .Lx74_114
                        cmp              eax, 1
                                                                                        jne   .Lx74_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx74_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx74_114
                                                                                        jmp   .Lx74_116
.Lx74_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx74_117
.Lx74_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx74_117
.Lx74_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx74_117:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n42_var_ref_α
                                                                                        jmp   n41_var_ref_α
n40_op11_β:
                                                                                        jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n45_op11_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n46_lit_integer_α
.Lx80_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              rsi, qword ptr [rip + .Lx81_2]
                                                                                        jmp   .Lx81_3
.Lx81_2:
                        .quad            .Lx81_2_s
.Lx81_2_s:
                        .string          "[]"
.Lx81_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n48_op11_α
                                                                                        jmp   n47_var_ref_α
n45_op11_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n49_op11_α
.Lx82_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n42_var_ref_α
n48_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx86_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx86_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx86_111
                        cmp              esi, 1
                                                                                        jne   .Lx86_112
                        mov              r8, rax
                                                                                        jmp   .Lx86_110
.Lx86_112:
                        cmp              esi, 2
                                                                                        jne   .Lx86_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx86_111
                        mov              r8, rax
                                                                                        jmp   .Lx86_110
.Lx86_113:
                        cmp              eax, 13
                                                                                        jne   .Lx86_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx86_111
                        cmp              rax, r8
                                                                                        je    .Lx86_111
                        mov              r8, rax
                                                                                        jmp   .Lx86_110
.Lx86_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx86_114
                        cmp              eax, 99
                                                                                        je    .Lx86_114
                        cmp              eax, 13
                                                                                        jne   .Lx86_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx86_114
                                                                                        jmp   .Lx86_118
.Lx86_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx86_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx86_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx86_115
                                                                                        jmp   .Lx86_114
.Lx86_119:
                        cmp              eax, 6
                                                                                        jne   .Lx86_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx86_114
                                                                                        jmp   .Lx86_115
.Lx86_120:
                        cmp              eax, 1
                                                                                        jne   .Lx86_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx86_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx86_114
                                                                                        jmp   .Lx86_115
.Lx86_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx86_117
.Lx86_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx86_117
.Lx86_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx86_117:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n51_var_ref_α
n49_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n53_op11_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   proc_reverse$2F2_ω
n52_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              rsi, qword ptr [rip + .Lx91_2]
                                                                                        jmp   .Lx91_3
.Lx91_2:
                        .quad            .Lx91_2_s
.Lx91_2_s:
                        .string          "[]"
.Lx91_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n48_op11_α
                                                                                        jmp   n55_suspend_α
n53_op11_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_suspend_α:
                        lea              rax, [rip + n55_suspend_β]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n55_suspend_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx98_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_61
                        cmp              esi, 1
                                                                                        jne   .Lx98_62
                        mov              r8, rax
                                                                                        jmp   .Lx98_60
.Lx98_62:
                        cmp              esi, 2
                                                                                        jne   .Lx98_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_61
                        mov              r8, rax
                                                                                        jmp   .Lx98_60
.Lx98_63:
                        cmp              eax, 13
                                                                                        jne   .Lx98_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_61
                        cmp              rax, r8
                                                                                        je    .Lx98_61
                        mov              r8, rax
                                                                                        jmp   .Lx98_60
.Lx98_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_80
                        cmp              eax, 99
                                                                                        je    .Lx98_80
                        cmp              eax, 13
                                                                                        jne   .Lx98_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx98_80
                                                                                        jmp   .Lx98_74
.Lx98_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx98_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx98_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx98_73
                        lea              r9, [rbp + 496]
.Lx98_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_65
                        cmp              esi, 1
                                                                                        jne   .Lx98_66
                        mov              r9, rax
                                                                                        jmp   .Lx98_64
.Lx98_66:
                        cmp              esi, 2
                                                                                        jne   .Lx98_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_65
                        mov              r9, rax
                                                                                        jmp   .Lx98_64
.Lx98_67:
                        cmp              eax, 13
                                                                                        jne   .Lx98_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_65
                        cmp              rax, r9
                                                                                        je    .Lx98_65
                        mov              r9, rax
                                                                                        jmp   .Lx98_64
.Lx98_65:
                        lea              rcx, [rbp + 512]
.Lx98_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx98_69
                        cmp              esi, 1
                                                                                        jne   .Lx98_70
                        mov              rcx, rax
                                                                                        jmp   .Lx98_68
.Lx98_70:
                        cmp              esi, 2
                                                                                        jne   .Lx98_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_69
                        mov              rcx, rax
                                                                                        jmp   .Lx98_68
.Lx98_71:
                        cmp              eax, 13
                                                                                        jne   .Lx98_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx98_69
                        cmp              rax, rcx
                                                                                        je    .Lx98_69
                        mov              rcx, rax
                                                                                        jmp   .Lx98_68
.Lx98_69:
                        cmp              r9, rcx
                                                                                        je    .Lx98_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_75
                        cmp              eax, 99
                                                                                        je    .Lx98_75
                        cmp              eax, 13
                                                                                        jne   .Lx98_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_75
                                                                                        jmp   .Lx98_72
.Lx98_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_76
                        cmp              eax, 99
                                                                                        je    .Lx98_76
                        cmp              eax, 13
                                                                                        jne   .Lx98_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx98_76
                                                                                        jmp   .Lx98_72
.Lx98_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx98_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx98_77
.Lx98_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx98_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx98_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx98_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx98_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 496]
.Lx98_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_82
                        cmp              esi, 1
                                                                                        jne   .Lx98_83
                        mov              r9, rax
                                                                                        jmp   .Lx98_81
.Lx98_83:
                        cmp              esi, 2
                                                                                        jne   .Lx98_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_82
                        mov              r9, rax
                                                                                        jmp   .Lx98_81
.Lx98_84:
                        cmp              eax, 13
                                                                                        jne   .Lx98_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_82
                        cmp              rax, r9
                                                                                        je    .Lx98_82
                        mov              r9, rax
                                                                                        jmp   .Lx98_81
.Lx98_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_85
                        cmp              eax, 99
                                                                                        je    .Lx98_85
                        cmp              eax, 13
                                                                                        jne   .Lx98_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_85
                                                                                        jmp   .Lx98_86
.Lx98_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx98_87
.Lx98_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx98_87:
                        lea              rcx, [rbp + 512]
.Lx98_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx98_89
                        cmp              esi, 1
                                                                                        jne   .Lx98_90
                        mov              rcx, rax
                                                                                        jmp   .Lx98_88
.Lx98_90:
                        cmp              esi, 2
                                                                                        jne   .Lx98_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_89
                        mov              rcx, rax
                                                                                        jmp   .Lx98_88
.Lx98_91:
                        cmp              eax, 13
                                                                                        jne   .Lx98_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx98_89
                        cmp              rax, rcx
                                                                                        je    .Lx98_89
                        mov              rcx, rax
                                                                                        jmp   .Lx98_88
.Lx98_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_92
                        cmp              eax, 99
                                                                                        je    .Lx98_92
                        cmp              eax, 13
                                                                                        jne   .Lx98_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx98_92
                                                                                        jmp   .Lx98_93
.Lx98_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx98_94
.Lx98_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx98_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx98_77
.Lx98_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx98_77
.Lx98_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx98_77:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n58_var_ref_α
n57_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n59_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx103_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx103_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_41
                        cmp              esi, 1
                                                                                        jne   .Lx103_55
                        mov              r8, rax
                                                                                        jmp   .Lx103_40
.Lx103_55:
                        cmp              esi, 2
                                                                                        jne   .Lx103_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx103_41
                        mov              r8, rax
                                                                                        jmp   .Lx103_40
.Lx103_56:
                        cmp              eax, 13
                                                                                        jne   .Lx103_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_41
                        cmp              rax, r8
                                                                                        je    .Lx103_41
                        mov              r8, rax
                                                                                        jmp   .Lx103_40
.Lx103_41:
                        lea              r9, [rbp + 400]
.Lx103_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx103_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_43
                        cmp              esi, 1
                                                                                        jne   .Lx103_57
                        mov              r9, rax
                                                                                        jmp   .Lx103_42
.Lx103_57:
                        cmp              esi, 2
                                                                                        jne   .Lx103_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx103_43
                        mov              r9, rax
                                                                                        jmp   .Lx103_42
.Lx103_58:
                        cmp              eax, 13
                                                                                        jne   .Lx103_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_43
                        cmp              rax, r9
                                                                                        je    .Lx103_43
                        mov              r9, rax
                                                                                        jmp   .Lx103_42
.Lx103_43:
                        cmp              r8, r9
                                                                                        je    .Lx103_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx103_44
                        cmp              eax, 99
                                                                                        je    .Lx103_44
                        cmp              eax, 13
                                                                                        jne   .Lx103_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx103_44
                                                                                        jmp   .Lx103_45
.Lx103_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx103_53
                        cmp              eax, 99
                                                                                        je    .Lx103_53
                        cmp              eax, 13
                                                                                        jne   .Lx103_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx103_53
                                                                                        jmp   .Lx103_46
.Lx103_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx103_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx103_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx103_51
.Lx103_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx103_47
                        cmp              eax, 99
                                                                                        je    .Lx103_47
                        cmp              eax, 13
                                                                                        jne   .Lx103_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx103_47
                                                                                        jmp   .Lx103_48
.Lx103_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx103_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx103_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx103_51
.Lx103_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx103_49
                        cmp              edx, 14
                                                                                        je    .Lx103_53
                                                                                        jmp   .Lx103_52
.Lx103_49:
                        cmp              edx, 14
                                                                                        je    .Lx103_52
                        cmp              ecx, 7
                                                                                        je    .Lx103_53
                        cmp              edx, 7
                                                                                        je    .Lx103_53
                        cmp              ecx, 6
                                                                                        jne   .Lx103_50
                        cmp              edx, 6
                                                                                        jne   .Lx103_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx103_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx103_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx103_51
                                                                                        jmp   .Lx103_52
.Lx103_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx103_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx103_53
.Lx103_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx103_54
.Lx103_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx103_54
.Lx103_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx103_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n61_var_ref_α
n60_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n64_var_ref_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n66_op11_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n67_call_proc_staged_α
n66_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx114_21
.Lx114_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx114_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx114_23
.Lx114_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx114_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_24
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx114_25
.Lx114_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx114_25:
                        mov              edi, 7
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx114_1
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4]
                                                                                        jmp   rax
.Lx114_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx114_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx114_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_1:
                        call             rt_faildescr@PLT
.Lx114_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n68_suspend_α
n67_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "reverse1/3"
#-----------------------------------------------------------------------------------------------------------------------
n68_suspend_α:
                        lea              rax, [rip + n68_suspend_β]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n68_suspend_β:
                                                                                        jmp   n67_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_β:
                                                                                        jmp   qword ptr [rbp + 992]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1064]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_go_other$2F0_α
proc_go_other$2F0_α:
                        .global          proc_go_other$2F0_α
                        .global          proc_go_other$2F0_β
                        .global          proc_go_other$2F0_γ
                        .global          proc_go_other$2F0_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_go_other$2F0_α_body:
                        lea              rax, [rip + n123_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx124_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx124_101
.Lx124_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx124_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other$2F0_ω
                                                                                        jmp   n118_var_ref_α
n117_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n119_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        call             proc_argument_list$2F1_dcα
                                                                                        jmp   .Lx128_2
.Lx128_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n120_var_ref_α
n119_call_proc_staged_β:
                                                                                        jmp   n121_op11_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n122_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other$2F0_ω
                                                                                        jmp   proc_go_other$2F0_ω
n121_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx133_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx133_21
.Lx133_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx133_21:
                        mov              edi, 12
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx133_1
                        lea              rcx, [rip + .Lx133_3]
                        lea              rdx, [rip + .Lx133_4]
                                                                                        jmp   rax
.Lx133_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx133_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx133_2
.Lx133_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx133_2
.Lx133_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx133_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx133_2
.Lx133_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx133_2
.Lx133_1:
                        call             rt_faildescr@PLT
.Lx133_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n119_call_proc_staged_β
                                                                                        jmp   n123_suspend_α
n122_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
n123_suspend_α:
                        lea              rax, [rip + n123_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other$2F0_γ
n123_suspend_β:
                                                                                        jmp   n122_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_go_other$2F0_res]
                        push             rax
                        mov              rax, [rbp + 264]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_append$2F3_α
proc_append$2F3_α:
                        .global          proc_append$2F3_α
                        .global          proc_append$2F3_β
                        .global          proc_append$2F3_γ
                        .global          proc_append$2F3_ω
                        sub              rsp, 1200
                        mov              [rsp + 1176], rcx
                        mov              [rsp + 1184], rdx
                        mov              [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
proc_append$2F3_α_body:
                        lea              rax, [rip + n161_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx173_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx173_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx173_101
.Lx173_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx173_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n137_var_ref_α
n136_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n139_lit_string_α
.Lx176_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n140_op11_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx178_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx178_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_111
                        cmp              esi, 1
                                                                                        jne   .Lx178_112
                        mov              r8, rax
                                                                                        jmp   .Lx178_110
.Lx178_112:
                        cmp              esi, 2
                                                                                        jne   .Lx178_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx178_111
                        mov              r8, rax
                                                                                        jmp   .Lx178_110
.Lx178_113:
                        cmp              eax, 13
                                                                                        jne   .Lx178_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_111
                        cmp              rax, r8
                                                                                        je    .Lx178_111
                        mov              r8, rax
                                                                                        jmp   .Lx178_110
.Lx178_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_114
                        cmp              eax, 99
                                                                                        je    .Lx178_114
                        cmp              eax, 13
                                                                                        jne   .Lx178_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx178_114
                                                                                        jmp   .Lx178_118
.Lx178_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx178_115
                        cmp              eax, 6
                                                                                        je    .Lx178_114
                        cmp              eax, 1
                                                                                        jne   .Lx178_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx178_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx178_114
                                                                                        jmp   .Lx178_116
.Lx178_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx178_117
.Lx178_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx178_117
.Lx178_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx178_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n142_var_ref_α
                                                                                        jmp   n141_var_ref_α
n140_op11_β:
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n145_op11_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n146_lit_integer_α
.Lx184_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx185_2]
                                                                                        jmp   .Lx185_3
.Lx185_2:
                        .quad            .Lx185_2_s
.Lx185_2_s:
                        .string          "[]"
.Lx185_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n148_op11_α
                                                                                        jmp   n147_var_ref_α
n145_op11_β:
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n149_op11_α
.Lx186_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n142_var_ref_α
n148_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx190_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_111
                        cmp              esi, 1
                                                                                        jne   .Lx190_112
                        mov              r8, rax
                                                                                        jmp   .Lx190_110
.Lx190_112:
                        cmp              esi, 2
                                                                                        jne   .Lx190_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_111
                        mov              r8, rax
                                                                                        jmp   .Lx190_110
.Lx190_113:
                        cmp              eax, 13
                                                                                        jne   .Lx190_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_111
                        cmp              rax, r8
                                                                                        je    .Lx190_111
                        mov              r8, rax
                                                                                        jmp   .Lx190_110
.Lx190_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_114
                        cmp              eax, 99
                                                                                        je    .Lx190_114
                        cmp              eax, 13
                                                                                        jne   .Lx190_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx190_114
                                                                                        jmp   .Lx190_118
.Lx190_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx190_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx190_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx190_115
                                                                                        jmp   .Lx190_114
.Lx190_119:
                        cmp              eax, 6
                                                                                        jne   .Lx190_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx190_114
                                                                                        jmp   .Lx190_115
.Lx190_120:
                        cmp              eax, 1
                                                                                        jne   .Lx190_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx190_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx190_114
                                                                                        jmp   .Lx190_115
.Lx190_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx190_117
.Lx190_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx190_117
.Lx190_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx190_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n152_op11_α
                                                                                        jmp   n151_var_ref_α
n149_op11_β:
                                                                                        jmp   n152_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   proc_append$2F3_ω
n152_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx196_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx196_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_41
                        cmp              esi, 1
                                                                                        jne   .Lx196_55
                        mov              r8, rax
                                                                                        jmp   .Lx196_40
.Lx196_55:
                        cmp              esi, 2
                                                                                        jne   .Lx196_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx196_41
                        mov              r8, rax
                                                                                        jmp   .Lx196_40
.Lx196_56:
                        cmp              eax, 13
                                                                                        jne   .Lx196_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_41
                        cmp              rax, r8
                                                                                        je    .Lx196_41
                        mov              r8, rax
                                                                                        jmp   .Lx196_40
.Lx196_41:
                        lea              r9, [rbp + 848]
.Lx196_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx196_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_43
                        cmp              esi, 1
                                                                                        jne   .Lx196_57
                        mov              r9, rax
                                                                                        jmp   .Lx196_42
.Lx196_57:
                        cmp              esi, 2
                                                                                        jne   .Lx196_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx196_43
                        mov              r9, rax
                                                                                        jmp   .Lx196_42
.Lx196_58:
                        cmp              eax, 13
                                                                                        jne   .Lx196_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_43
                        cmp              rax, r9
                                                                                        je    .Lx196_43
                        mov              r9, rax
                                                                                        jmp   .Lx196_42
.Lx196_43:
                        cmp              r8, r9
                                                                                        je    .Lx196_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx196_44
                        cmp              eax, 99
                                                                                        je    .Lx196_44
                        cmp              eax, 13
                                                                                        jne   .Lx196_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx196_44
                                                                                        jmp   .Lx196_45
.Lx196_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx196_53
                        cmp              eax, 99
                                                                                        je    .Lx196_53
                        cmp              eax, 13
                                                                                        jne   .Lx196_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx196_53
                                                                                        jmp   .Lx196_46
.Lx196_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx196_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx196_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx196_51
.Lx196_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx196_47
                        cmp              eax, 99
                                                                                        je    .Lx196_47
                        cmp              eax, 13
                                                                                        jne   .Lx196_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx196_47
                                                                                        jmp   .Lx196_48
.Lx196_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx196_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx196_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx196_51
.Lx196_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx196_49
                        cmp              edx, 14
                                                                                        je    .Lx196_53
                                                                                        jmp   .Lx196_52
.Lx196_49:
                        cmp              edx, 14
                                                                                        je    .Lx196_52
                        cmp              ecx, 7
                                                                                        je    .Lx196_53
                        cmp              edx, 7
                                                                                        je    .Lx196_53
                        cmp              ecx, 6
                                                                                        jne   .Lx196_50
                        cmp              edx, 6
                                                                                        jne   .Lx196_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx196_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx196_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx196_51
                                                                                        jmp   .Lx196_52
.Lx196_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx196_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx196_53
.Lx196_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx196_54
.Lx196_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx196_54
.Lx196_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx196_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n148_op11_α
                                                                                        jmp   n155_var_ref_α
n153_op11_β:
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n158_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n159_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx205_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx205_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_61
                        cmp              esi, 1
                                                                                        jne   .Lx205_62
                        mov              r8, rax
                                                                                        jmp   .Lx205_60
.Lx205_62:
                        cmp              esi, 2
                                                                                        jne   .Lx205_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_61
                        mov              r8, rax
                                                                                        jmp   .Lx205_60
.Lx205_63:
                        cmp              eax, 13
                                                                                        jne   .Lx205_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_61
                        cmp              rax, r8
                                                                                        je    .Lx205_61
                        mov              r8, rax
                                                                                        jmp   .Lx205_60
.Lx205_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_80
                        cmp              eax, 99
                                                                                        je    .Lx205_80
                        cmp              eax, 13
                                                                                        jne   .Lx205_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx205_80
                                                                                        jmp   .Lx205_74
.Lx205_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx205_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx205_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx205_73
                        lea              r9, [rbp + 512]
.Lx205_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx205_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_65
                        cmp              esi, 1
                                                                                        jne   .Lx205_66
                        mov              r9, rax
                                                                                        jmp   .Lx205_64
.Lx205_66:
                        cmp              esi, 2
                                                                                        jne   .Lx205_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_65
                        mov              r9, rax
                                                                                        jmp   .Lx205_64
.Lx205_67:
                        cmp              eax, 13
                                                                                        jne   .Lx205_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_65
                        cmp              rax, r9
                                                                                        je    .Lx205_65
                        mov              r9, rax
                                                                                        jmp   .Lx205_64
.Lx205_65:
                        lea              rcx, [rbp + 528]
.Lx205_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx205_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx205_69
                        cmp              esi, 1
                                                                                        jne   .Lx205_70
                        mov              rcx, rax
                                                                                        jmp   .Lx205_68
.Lx205_70:
                        cmp              esi, 2
                                                                                        jne   .Lx205_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_69
                        mov              rcx, rax
                                                                                        jmp   .Lx205_68
.Lx205_71:
                        cmp              eax, 13
                                                                                        jne   .Lx205_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx205_69
                        cmp              rax, rcx
                                                                                        je    .Lx205_69
                        mov              rcx, rax
                                                                                        jmp   .Lx205_68
.Lx205_69:
                        cmp              r9, rcx
                                                                                        je    .Lx205_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_75
                        cmp              eax, 99
                                                                                        je    .Lx205_75
                        cmp              eax, 13
                                                                                        jne   .Lx205_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx205_75
                                                                                        jmp   .Lx205_72
.Lx205_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_76
                        cmp              eax, 99
                                                                                        je    .Lx205_76
                        cmp              eax, 13
                                                                                        jne   .Lx205_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx205_76
                                                                                        jmp   .Lx205_72
.Lx205_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx205_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx205_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx205_77
.Lx205_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx205_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx205_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx205_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx205_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx205_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 512]
.Lx205_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx205_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_82
                        cmp              esi, 1
                                                                                        jne   .Lx205_83
                        mov              r9, rax
                                                                                        jmp   .Lx205_81
.Lx205_83:
                        cmp              esi, 2
                                                                                        jne   .Lx205_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_82
                        mov              r9, rax
                                                                                        jmp   .Lx205_81
.Lx205_84:
                        cmp              eax, 13
                                                                                        jne   .Lx205_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_82
                        cmp              rax, r9
                                                                                        je    .Lx205_82
                        mov              r9, rax
                                                                                        jmp   .Lx205_81
.Lx205_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_85
                        cmp              eax, 99
                                                                                        je    .Lx205_85
                        cmp              eax, 13
                                                                                        jne   .Lx205_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx205_85
                                                                                        jmp   .Lx205_86
.Lx205_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx205_87
.Lx205_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx205_87:
                        lea              rcx, [rbp + 528]
.Lx205_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx205_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx205_89
                        cmp              esi, 1
                                                                                        jne   .Lx205_90
                        mov              rcx, rax
                                                                                        jmp   .Lx205_88
.Lx205_90:
                        cmp              esi, 2
                                                                                        jne   .Lx205_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_89
                        mov              rcx, rax
                                                                                        jmp   .Lx205_88
.Lx205_91:
                        cmp              eax, 13
                                                                                        jne   .Lx205_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx205_89
                        cmp              rax, rcx
                                                                                        je    .Lx205_89
                        mov              rcx, rax
                                                                                        jmp   .Lx205_88
.Lx205_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_92
                        cmp              eax, 99
                                                                                        je    .Lx205_92
                        cmp              eax, 13
                                                                                        jne   .Lx205_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx205_92
                                                                                        jmp   .Lx205_93
.Lx205_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx205_94
.Lx205_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx205_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx205_77
.Lx205_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx205_77
.Lx205_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx205_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n152_op11_α
                                                                                        jmp   n160_var_ref_α
n158_op11_β:
                                                                                        jmp   n152_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx206_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx206_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx206_41
                        cmp              esi, 1
                                                                                        jne   .Lx206_55
                        mov              r8, rax
                                                                                        jmp   .Lx206_40
.Lx206_55:
                        cmp              esi, 2
                                                                                        jne   .Lx206_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx206_41
                        mov              r8, rax
                                                                                        jmp   .Lx206_40
.Lx206_56:
                        cmp              eax, 13
                                                                                        jne   .Lx206_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx206_41
                        cmp              rax, r8
                                                                                        je    .Lx206_41
                        mov              r8, rax
                                                                                        jmp   .Lx206_40
.Lx206_41:
                        lea              r9, [rbp + 768]
.Lx206_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx206_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx206_43
                        cmp              esi, 1
                                                                                        jne   .Lx206_57
                        mov              r9, rax
                                                                                        jmp   .Lx206_42
.Lx206_57:
                        cmp              esi, 2
                                                                                        jne   .Lx206_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx206_43
                        mov              r9, rax
                                                                                        jmp   .Lx206_42
.Lx206_58:
                        cmp              eax, 13
                                                                                        jne   .Lx206_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx206_43
                        cmp              rax, r9
                                                                                        je    .Lx206_43
                        mov              r9, rax
                                                                                        jmp   .Lx206_42
.Lx206_43:
                        cmp              r8, r9
                                                                                        je    .Lx206_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx206_44
                        cmp              eax, 99
                                                                                        je    .Lx206_44
                        cmp              eax, 13
                                                                                        jne   .Lx206_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx206_44
                                                                                        jmp   .Lx206_45
.Lx206_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx206_53
                        cmp              eax, 99
                                                                                        je    .Lx206_53
                        cmp              eax, 13
                                                                                        jne   .Lx206_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx206_53
                                                                                        jmp   .Lx206_46
.Lx206_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx206_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx206_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx206_51
.Lx206_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx206_47
                        cmp              eax, 99
                                                                                        je    .Lx206_47
                        cmp              eax, 13
                                                                                        jne   .Lx206_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx206_47
                                                                                        jmp   .Lx206_48
.Lx206_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx206_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx206_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx206_51
.Lx206_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx206_49
                        cmp              edx, 14
                                                                                        je    .Lx206_53
                                                                                        jmp   .Lx206_52
.Lx206_49:
                        cmp              edx, 14
                                                                                        je    .Lx206_52
                        cmp              ecx, 7
                                                                                        je    .Lx206_53
                        cmp              edx, 7
                                                                                        je    .Lx206_53
                        cmp              ecx, 6
                                                                                        jne   .Lx206_50
                        cmp              edx, 6
                                                                                        jne   .Lx206_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx206_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx206_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx206_51
                                                                                        jmp   .Lx206_52
.Lx206_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx206_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx206_53
.Lx206_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx206_54
.Lx206_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx206_54
.Lx206_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx206_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n148_op11_α
                                                                                        jmp   n161_suspend_α
n159_op11_β:
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_suspend_α:
                        lea              rax, [rip + n161_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n161_suspend_β:
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx213_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx213_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        cmp              esi, 1
                                                                                        jne   .Lx213_55
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_55:
                        cmp              esi, 2
                                                                                        jne   .Lx213_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_56:
                        cmp              eax, 13
                                                                                        jne   .Lx213_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        cmp              rax, r8
                                                                                        je    .Lx213_41
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_41:
                        lea              r9, [rbp + 416]
.Lx213_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx213_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        cmp              esi, 1
                                                                                        jne   .Lx213_57
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_57:
                        cmp              esi, 2
                                                                                        jne   .Lx213_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_58:
                        cmp              eax, 13
                                                                                        jne   .Lx213_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        cmp              rax, r9
                                                                                        je    .Lx213_43
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_43:
                        cmp              r8, r9
                                                                                        je    .Lx213_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_44
                        cmp              eax, 99
                                                                                        je    .Lx213_44
                        cmp              eax, 13
                                                                                        jne   .Lx213_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx213_44
                                                                                        jmp   .Lx213_45
.Lx213_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_53
                        cmp              eax, 99
                                                                                        je    .Lx213_53
                        cmp              eax, 13
                                                                                        jne   .Lx213_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx213_53
                                                                                        jmp   .Lx213_46
.Lx213_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx213_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx213_51
.Lx213_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_47
                        cmp              eax, 99
                                                                                        je    .Lx213_47
                        cmp              eax, 13
                                                                                        jne   .Lx213_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx213_47
                                                                                        jmp   .Lx213_48
.Lx213_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx213_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx213_51
.Lx213_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx213_49
                        cmp              edx, 14
                                                                                        je    .Lx213_53
                                                                                        jmp   .Lx213_52
.Lx213_49:
                        cmp              edx, 14
                                                                                        je    .Lx213_52
                        cmp              ecx, 7
                                                                                        je    .Lx213_53
                        cmp              edx, 7
                                                                                        je    .Lx213_53
                        cmp              ecx, 6
                                                                                        jne   .Lx213_50
                        cmp              edx, 6
                                                                                        jne   .Lx213_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx213_51
                                                                                        jmp   .Lx213_52
.Lx213_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx213_53
.Lx213_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx213_54
.Lx213_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx213_54
.Lx213_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx213_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n152_op11_α
                                                                                        jmp   n164_var_ref_α
n163_op11_β:
                                                                                        jmp   n152_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n167_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx220_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx220_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_61
                        cmp              esi, 1
                                                                                        jne   .Lx220_62
                        mov              r8, rax
                                                                                        jmp   .Lx220_60
.Lx220_62:
                        cmp              esi, 2
                                                                                        jne   .Lx220_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx220_61
                        mov              r8, rax
                                                                                        jmp   .Lx220_60
.Lx220_63:
                        cmp              eax, 13
                                                                                        jne   .Lx220_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_61
                        cmp              rax, r8
                                                                                        je    .Lx220_61
                        mov              r8, rax
                                                                                        jmp   .Lx220_60
.Lx220_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_80
                        cmp              eax, 99
                                                                                        je    .Lx220_80
                        cmp              eax, 13
                                                                                        jne   .Lx220_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx220_80
                                                                                        jmp   .Lx220_74
.Lx220_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx220_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx220_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx220_73
                        lea              r9, [rbp + 320]
.Lx220_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx220_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_65
                        cmp              esi, 1
                                                                                        jne   .Lx220_66
                        mov              r9, rax
                                                                                        jmp   .Lx220_64
.Lx220_66:
                        cmp              esi, 2
                                                                                        jne   .Lx220_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx220_65
                        mov              r9, rax
                                                                                        jmp   .Lx220_64
.Lx220_67:
                        cmp              eax, 13
                                                                                        jne   .Lx220_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_65
                        cmp              rax, r9
                                                                                        je    .Lx220_65
                        mov              r9, rax
                                                                                        jmp   .Lx220_64
.Lx220_65:
                        lea              rcx, [rbp + 336]
.Lx220_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx220_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx220_69
                        cmp              esi, 1
                                                                                        jne   .Lx220_70
                        mov              rcx, rax
                                                                                        jmp   .Lx220_68
.Lx220_70:
                        cmp              esi, 2
                                                                                        jne   .Lx220_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx220_69
                        mov              rcx, rax
                                                                                        jmp   .Lx220_68
.Lx220_71:
                        cmp              eax, 13
                                                                                        jne   .Lx220_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx220_69
                        cmp              rax, rcx
                                                                                        je    .Lx220_69
                        mov              rcx, rax
                                                                                        jmp   .Lx220_68
.Lx220_69:
                        cmp              r9, rcx
                                                                                        je    .Lx220_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_75
                        cmp              eax, 99
                                                                                        je    .Lx220_75
                        cmp              eax, 13
                                                                                        jne   .Lx220_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx220_75
                                                                                        jmp   .Lx220_72
.Lx220_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_76
                        cmp              eax, 99
                                                                                        je    .Lx220_76
                        cmp              eax, 13
                                                                                        jne   .Lx220_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx220_76
                                                                                        jmp   .Lx220_72
.Lx220_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx220_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx220_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx220_77
.Lx220_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx220_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx220_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx220_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx220_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx220_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 320]
.Lx220_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx220_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_82
                        cmp              esi, 1
                                                                                        jne   .Lx220_83
                        mov              r9, rax
                                                                                        jmp   .Lx220_81
.Lx220_83:
                        cmp              esi, 2
                                                                                        jne   .Lx220_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx220_82
                        mov              r9, rax
                                                                                        jmp   .Lx220_81
.Lx220_84:
                        cmp              eax, 13
                                                                                        jne   .Lx220_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_82
                        cmp              rax, r9
                                                                                        je    .Lx220_82
                        mov              r9, rax
                                                                                        jmp   .Lx220_81
.Lx220_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_85
                        cmp              eax, 99
                                                                                        je    .Lx220_85
                        cmp              eax, 13
                                                                                        jne   .Lx220_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx220_85
                                                                                        jmp   .Lx220_86
.Lx220_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx220_87
.Lx220_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx220_87:
                        lea              rcx, [rbp + 336]
.Lx220_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx220_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx220_89
                        cmp              esi, 1
                                                                                        jne   .Lx220_90
                        mov              rcx, rax
                                                                                        jmp   .Lx220_88
.Lx220_90:
                        cmp              esi, 2
                                                                                        jne   .Lx220_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx220_89
                        mov              rcx, rax
                                                                                        jmp   .Lx220_88
.Lx220_91:
                        cmp              eax, 13
                                                                                        jne   .Lx220_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx220_89
                        cmp              rax, rcx
                                                                                        je    .Lx220_89
                        mov              rcx, rax
                                                                                        jmp   .Lx220_88
.Lx220_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_92
                        cmp              eax, 99
                                                                                        je    .Lx220_92
                        cmp              eax, 13
                                                                                        jne   .Lx220_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx220_92
                                                                                        jmp   .Lx220_93
.Lx220_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx220_94
.Lx220_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx220_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx220_77
.Lx220_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx220_77
.Lx220_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx220_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n152_op11_α
                                                                                        jmp   n168_var_ref_α
n167_op11_β:
                                                                                        jmp   n152_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n169_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n171_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx228_21
.Lx228_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx228_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx228_23
.Lx228_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx228_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx228_25
.Lx228_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx228_25:
                        mov              edi, 4
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx228_1
                        lea              rcx, [rip + .Lx228_3]
                        lea              rdx, [rip + .Lx228_4]
                                                                                        jmp   rax
.Lx228_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx228_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx228_2
.Lx228_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx228_2
.Lx228_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx228_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx228_2
.Lx228_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx228_2
.Lx228_1:
                        call             rt_faildescr@PLT
.Lx228_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n152_op11_α
                                                                                        jmp   n172_suspend_α
n171_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n172_suspend_α:
                        lea              rax, [rip + n172_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n172_suspend_β:
                                                                                        jmp   n171_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_append$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1176]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_ω:
                        mov              rax, [rbp + 1184]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F2_α
proc_$disj0$2F2_α:
                        .global          proc_$disj0$2F2_α
                        .global          proc_$disj0$2F2_β
                        .global          proc_$disj0$2F2_γ
                        .global          proc_$disj0$2F2_ω
                        sub              rsp, 736
                        mov              [rsp + 712], rcx
                        mov              [rsp + 720], rdx
                        mov              [rsp + 728], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 704
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F2_α_body:
                        lea              rax, [rip + n248_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n231_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx254_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx254_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx254_101
.Lx254_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx254_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n232_var_ref_α
n231_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n233_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n234_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n234_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx259_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx259_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_41
                        cmp              esi, 1
                                                                                        jne   .Lx259_55
                        mov              r8, rax
                                                                                        jmp   .Lx259_40
.Lx259_55:
                        cmp              esi, 2
                                                                                        jne   .Lx259_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx259_41
                        mov              r8, rax
                                                                                        jmp   .Lx259_40
.Lx259_56:
                        cmp              eax, 13
                                                                                        jne   .Lx259_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_41
                        cmp              rax, r8
                                                                                        je    .Lx259_41
                        mov              r8, rax
                                                                                        jmp   .Lx259_40
.Lx259_41:
                        lea              r9, [rbp + 608]
.Lx259_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx259_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_43
                        cmp              esi, 1
                                                                                        jne   .Lx259_57
                        mov              r9, rax
                                                                                        jmp   .Lx259_42
.Lx259_57:
                        cmp              esi, 2
                                                                                        jne   .Lx259_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx259_43
                        mov              r9, rax
                                                                                        jmp   .Lx259_42
.Lx259_58:
                        cmp              eax, 13
                                                                                        jne   .Lx259_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_43
                        cmp              rax, r9
                                                                                        je    .Lx259_43
                        mov              r9, rax
                                                                                        jmp   .Lx259_42
.Lx259_43:
                        cmp              r8, r9
                                                                                        je    .Lx259_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx259_44
                        cmp              eax, 99
                                                                                        je    .Lx259_44
                        cmp              eax, 13
                                                                                        jne   .Lx259_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx259_44
                                                                                        jmp   .Lx259_45
.Lx259_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx259_53
                        cmp              eax, 99
                                                                                        je    .Lx259_53
                        cmp              eax, 13
                                                                                        jne   .Lx259_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx259_53
                                                                                        jmp   .Lx259_46
.Lx259_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx259_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx259_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx259_51
.Lx259_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx259_47
                        cmp              eax, 99
                                                                                        je    .Lx259_47
                        cmp              eax, 13
                                                                                        jne   .Lx259_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx259_47
                                                                                        jmp   .Lx259_48
.Lx259_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx259_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx259_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx259_51
.Lx259_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx259_49
                        cmp              edx, 14
                                                                                        je    .Lx259_53
                                                                                        jmp   .Lx259_52
.Lx259_49:
                        cmp              edx, 14
                                                                                        je    .Lx259_52
                        cmp              ecx, 7
                                                                                        je    .Lx259_53
                        cmp              edx, 7
                                                                                        je    .Lx259_53
                        cmp              ecx, 6
                                                                                        jne   .Lx259_50
                        cmp              edx, 6
                                                                                        jne   .Lx259_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx259_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx259_51
                                                                                        jmp   .Lx259_52
.Lx259_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx259_53
.Lx259_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx259_54
.Lx259_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx259_54
.Lx259_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx259_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n236_op11_α
                                                                                        jmp   n235_var_ref_α
n234_op11_β:
                                                                                        jmp   n236_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n238_var_ref_α
n236_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n239_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx267_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx267_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx267_41
                        cmp              esi, 1
                                                                                        jne   .Lx267_55
                        mov              r8, rax
                                                                                        jmp   .Lx267_40
.Lx267_55:
                        cmp              esi, 2
                                                                                        jne   .Lx267_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx267_41
                        mov              r8, rax
                                                                                        jmp   .Lx267_40
.Lx267_56:
                        cmp              eax, 13
                                                                                        jne   .Lx267_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx267_41
                        cmp              rax, r8
                                                                                        je    .Lx267_41
                        mov              r8, rax
                                                                                        jmp   .Lx267_40
.Lx267_41:
                        lea              r9, [rbp + 528]
.Lx267_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx267_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx267_43
                        cmp              esi, 1
                                                                                        jne   .Lx267_57
                        mov              r9, rax
                                                                                        jmp   .Lx267_42
.Lx267_57:
                        cmp              esi, 2
                                                                                        jne   .Lx267_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx267_43
                        mov              r9, rax
                                                                                        jmp   .Lx267_42
.Lx267_58:
                        cmp              eax, 13
                                                                                        jne   .Lx267_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx267_43
                        cmp              rax, r9
                                                                                        je    .Lx267_43
                        mov              r9, rax
                                                                                        jmp   .Lx267_42
.Lx267_43:
                        cmp              r8, r9
                                                                                        je    .Lx267_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx267_44
                        cmp              eax, 99
                                                                                        je    .Lx267_44
                        cmp              eax, 13
                                                                                        jne   .Lx267_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx267_44
                                                                                        jmp   .Lx267_45
.Lx267_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx267_53
                        cmp              eax, 99
                                                                                        je    .Lx267_53
                        cmp              eax, 13
                                                                                        jne   .Lx267_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx267_53
                                                                                        jmp   .Lx267_46
.Lx267_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx267_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx267_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx267_51
.Lx267_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx267_47
                        cmp              eax, 99
                                                                                        je    .Lx267_47
                        cmp              eax, 13
                                                                                        jne   .Lx267_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx267_47
                                                                                        jmp   .Lx267_48
.Lx267_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx267_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx267_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx267_51
.Lx267_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx267_49
                        cmp              edx, 14
                                                                                        je    .Lx267_53
                                                                                        jmp   .Lx267_52
.Lx267_49:
                        cmp              edx, 14
                                                                                        je    .Lx267_52
                        cmp              ecx, 7
                                                                                        je    .Lx267_53
                        cmp              edx, 7
                                                                                        je    .Lx267_53
                        cmp              ecx, 6
                                                                                        jne   .Lx267_50
                        cmp              edx, 6
                                                                                        jne   .Lx267_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx267_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx267_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx267_51
                                                                                        jmp   .Lx267_52
.Lx267_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx267_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx267_53
.Lx267_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx267_54
.Lx267_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx267_54
.Lx267_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx267_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n236_op11_α
                                                                                        jmp   n241_var_ref_α
n239_op11_β:
                                                                                        jmp   n236_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n242_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n243_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n242_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx272_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx272_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_41
                        cmp              esi, 1
                                                                                        jne   .Lx272_55
                        mov              r8, rax
                                                                                        jmp   .Lx272_40
.Lx272_55:
                        cmp              esi, 2
                                                                                        jne   .Lx272_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx272_41
                        mov              r8, rax
                                                                                        jmp   .Lx272_40
.Lx272_56:
                        cmp              eax, 13
                                                                                        jne   .Lx272_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_41
                        cmp              rax, r8
                                                                                        je    .Lx272_41
                        mov              r8, rax
                                                                                        jmp   .Lx272_40
.Lx272_41:
                        lea              r9, [rbp + 320]
.Lx272_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx272_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_43
                        cmp              esi, 1
                                                                                        jne   .Lx272_57
                        mov              r9, rax
                                                                                        jmp   .Lx272_42
.Lx272_57:
                        cmp              esi, 2
                                                                                        jne   .Lx272_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx272_43
                        mov              r9, rax
                                                                                        jmp   .Lx272_42
.Lx272_58:
                        cmp              eax, 13
                                                                                        jne   .Lx272_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_43
                        cmp              rax, r9
                                                                                        je    .Lx272_43
                        mov              r9, rax
                                                                                        jmp   .Lx272_42
.Lx272_43:
                        cmp              r8, r9
                                                                                        je    .Lx272_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_44
                        cmp              eax, 99
                                                                                        je    .Lx272_44
                        cmp              eax, 13
                                                                                        jne   .Lx272_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx272_44
                                                                                        jmp   .Lx272_45
.Lx272_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_53
                        cmp              eax, 99
                                                                                        je    .Lx272_53
                        cmp              eax, 13
                                                                                        jne   .Lx272_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx272_53
                                                                                        jmp   .Lx272_46
.Lx272_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx272_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx272_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx272_51
.Lx272_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_47
                        cmp              eax, 99
                                                                                        je    .Lx272_47
                        cmp              eax, 13
                                                                                        jne   .Lx272_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx272_47
                                                                                        jmp   .Lx272_48
.Lx272_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx272_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx272_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx272_51
.Lx272_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx272_49
                        cmp              edx, 14
                                                                                        je    .Lx272_53
                                                                                        jmp   .Lx272_52
.Lx272_49:
                        cmp              edx, 14
                                                                                        je    .Lx272_52
                        cmp              ecx, 7
                                                                                        je    .Lx272_53
                        cmp              edx, 7
                                                                                        je    .Lx272_53
                        cmp              ecx, 6
                                                                                        jne   .Lx272_50
                        cmp              edx, 6
                                                                                        jne   .Lx272_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx272_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx272_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx272_51
                                                                                        jmp   .Lx272_52
.Lx272_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx272_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx272_53
.Lx272_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx272_54
.Lx272_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx272_54
.Lx272_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx272_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n245_op11_α
                                                                                        jmp   n244_var_ref_α
n242_op11_β:
                                                                                        jmp   n245_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n246_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n247_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n245_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   proc_$disj0$2F2_ω
n245_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx279_21
.Lx279_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx279_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx279_23
.Lx279_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx279_23:
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx279_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4]
                                                                                        jmp   rax
.Lx279_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx279_2
.Lx279_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx279_2
.Lx279_1:
                        call             rt_faildescr@PLT
.Lx279_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n236_op11_α
                                                                                        jmp   n248_suspend_α
n246_call_proc_staged_β:
                                                                                        jmp   n236_op11_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "bb_get/2"
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n249_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n248_suspend_α:
                        lea              rax, [rip + n248_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n248_suspend_β:
                                                                                        jmp   n246_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        lea              r8, [rbp + 224]
.Lx284_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx284_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_41
                        cmp              esi, 1
                                                                                        jne   .Lx284_55
                        mov              r8, rax
                                                                                        jmp   .Lx284_40
.Lx284_55:
                        cmp              esi, 2
                                                                                        jne   .Lx284_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx284_41
                        mov              r8, rax
                                                                                        jmp   .Lx284_40
.Lx284_56:
                        cmp              eax, 13
                                                                                        jne   .Lx284_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_41
                        cmp              rax, r8
                                                                                        je    .Lx284_41
                        mov              r8, rax
                                                                                        jmp   .Lx284_40
.Lx284_41:
                        lea              r9, [rbp + 240]
.Lx284_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx284_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_43
                        cmp              esi, 1
                                                                                        jne   .Lx284_57
                        mov              r9, rax
                                                                                        jmp   .Lx284_42
.Lx284_57:
                        cmp              esi, 2
                                                                                        jne   .Lx284_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx284_43
                        mov              r9, rax
                                                                                        jmp   .Lx284_42
.Lx284_58:
                        cmp              eax, 13
                                                                                        jne   .Lx284_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_43
                        cmp              rax, r9
                                                                                        je    .Lx284_43
                        mov              r9, rax
                                                                                        jmp   .Lx284_42
.Lx284_43:
                        cmp              r8, r9
                                                                                        je    .Lx284_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_44
                        cmp              eax, 99
                                                                                        je    .Lx284_44
                        cmp              eax, 13
                                                                                        jne   .Lx284_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx284_44
                                                                                        jmp   .Lx284_45
.Lx284_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_53
                        cmp              eax, 99
                                                                                        je    .Lx284_53
                        cmp              eax, 13
                                                                                        jne   .Lx284_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx284_53
                                                                                        jmp   .Lx284_46
.Lx284_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx284_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx284_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx284_51
.Lx284_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_47
                        cmp              eax, 99
                                                                                        je    .Lx284_47
                        cmp              eax, 13
                                                                                        jne   .Lx284_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx284_47
                                                                                        jmp   .Lx284_48
.Lx284_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx284_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx284_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx284_51
.Lx284_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx284_49
                        cmp              edx, 14
                                                                                        je    .Lx284_53
                                                                                        jmp   .Lx284_52
.Lx284_49:
                        cmp              edx, 14
                                                                                        je    .Lx284_52
                        cmp              ecx, 7
                                                                                        je    .Lx284_53
                        cmp              edx, 7
                                                                                        je    .Lx284_53
                        cmp              ecx, 6
                                                                                        jne   .Lx284_50
                        cmp              edx, 6
                                                                                        jne   .Lx284_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx284_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx284_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx284_51
                                                                                        jmp   .Lx284_52
.Lx284_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx284_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx284_53
.Lx284_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx284_54
.Lx284_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx284_54
.Lx284_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx284_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n245_op11_α
                                                                                        jmp   n250_var_ref_α
n249_op11_β:
                                                                                        jmp   n245_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n251_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n252_op11_α
.Lx287_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n245_op11_α
                                                                                        jmp   n253_suspend_α
n252_op11_β:
                                                                                        jmp   n245_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n253_suspend_α:
                        lea              rax, [rip + n253_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n253_suspend_β:
                                                                                        jmp   n245_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F2_res]
                        push             rax
                        mov              rax, [rbp + 712]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_ω:
                        mov              rax, [rbp + 720]
                        lea              rsp, [rbp + 736]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_argument_list$2F1_α
proc_argument_list$2F1_α:
                        .global          proc_argument_list$2F1_α
                        .global          proc_argument_list$2F1_β
                        .global          proc_argument_list$2F1_γ
                        .global          proc_argument_list$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_argument_list$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx298_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx298_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx298_101
.Lx298_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx298_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   n292_var_ref_α
n291_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n294_op11_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n294_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx302_2]
                                                                                        jmp   .Lx302_3
.Lx302_2:
                        .quad            .Lx302_2_s
.Lx302_2_s:
                        .string          "[]"
.Lx302_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n295_move_label_α
n294_op11_β:
                                                                                        jmp   n296_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n295_move_label_α:
                        lea              rax, [rip + n296_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_argument_list$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n296_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   proc_argument_list$2F1_ω
n296_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n297_disjunction_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_β:
                                                                                        jmp   n297_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx308_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx308_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_argument_list$2F1_α_body
.Lx308_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx308_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse1$2F3_α
proc_reverse1$2F3_α:
                        .global          proc_reverse1$2F3_α
                        .global          proc_reverse1$2F3_β
                        .global          proc_reverse1$2F3_γ
                        .global          proc_reverse1$2F3_ω
                        sub              rsp, 1280
                        mov              [rsp + 1256], rcx
                        mov              [rsp + 1264], rdx
                        mov              [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1248
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse1$2F3_α_body:
                        lea              rax, [rip + n334_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n309_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx348_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx348_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx348_101
.Lx348_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx348_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse1$2F3_ω
                                                                                        jmp   n310_var_ref_α
n309_op11_β:
                                                                                        jmp   proc_reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n311_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n312_lit_string_α
.Lx351_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n313_op11_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx353_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx353_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx353_111
                        cmp              esi, 1
                                                                                        jne   .Lx353_112
                        mov              r8, rax
                                                                                        jmp   .Lx353_110
.Lx353_112:
                        cmp              esi, 2
                                                                                        jne   .Lx353_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx353_111
                        mov              r8, rax
                                                                                        jmp   .Lx353_110
.Lx353_113:
                        cmp              eax, 13
                                                                                        jne   .Lx353_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx353_111
                        cmp              rax, r8
                                                                                        je    .Lx353_111
                        mov              r8, rax
                                                                                        jmp   .Lx353_110
.Lx353_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx353_114
                        cmp              eax, 99
                                                                                        je    .Lx353_114
                        cmp              eax, 13
                                                                                        jne   .Lx353_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx353_114
                                                                                        jmp   .Lx353_118
.Lx353_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx353_115
                        cmp              eax, 6
                                                                                        je    .Lx353_114
                        cmp              eax, 1
                                                                                        jne   .Lx353_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx353_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx353_114
                                                                                        jmp   .Lx353_116
.Lx353_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx353_117
.Lx353_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx353_117
.Lx353_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx353_117:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n315_var_ref_α
                                                                                        jmp   n314_var_ref_α
n313_op11_β:
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n317_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n318_op11_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n319_lit_integer_α
.Lx359_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n318_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx360_2]
                                                                                        jmp   .Lx360_3
.Lx360_2:
                        .quad            .Lx360_2_s
.Lx360_2_s:
                        .string          "[]"
.Lx360_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n321_op11_α
                                                                                        jmp   n320_var_ref_α
n318_op11_β:
                                                                                        jmp   n321_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n322_op11_α
.Lx361_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n321_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse1$2F3_ω
                                                                                        jmp   n315_var_ref_α
n321_op11_β:
                                                                                        jmp   proc_reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx365_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx365_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx365_111
                        cmp              esi, 1
                                                                                        jne   .Lx365_112
                        mov              r8, rax
                                                                                        jmp   .Lx365_110
.Lx365_112:
                        cmp              esi, 2
                                                                                        jne   .Lx365_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx365_111
                        mov              r8, rax
                                                                                        jmp   .Lx365_110
.Lx365_113:
                        cmp              eax, 13
                                                                                        jne   .Lx365_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx365_111
                        cmp              rax, r8
                                                                                        je    .Lx365_111
                        mov              r8, rax
                                                                                        jmp   .Lx365_110
.Lx365_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx365_114
                        cmp              eax, 99
                                                                                        je    .Lx365_114
                        cmp              eax, 13
                                                                                        jne   .Lx365_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx365_114
                                                                                        jmp   .Lx365_118
.Lx365_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx365_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx365_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx365_115
                                                                                        jmp   .Lx365_114
.Lx365_119:
                        cmp              eax, 6
                                                                                        jne   .Lx365_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx365_114
                                                                                        jmp   .Lx365_115
.Lx365_120:
                        cmp              eax, 1
                                                                                        jne   .Lx365_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx365_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx365_114
                                                                                        jmp   .Lx365_115
.Lx365_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx365_117
.Lx365_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx365_117
.Lx365_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx365_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n325_op11_α
                                                                                        jmp   n324_var_ref_α
n322_op11_β:
                                                                                        jmp   n325_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n326_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n325_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse1$2F3_ω
                                                                                        jmp   proc_reverse1$2F3_ω
n325_op11_β:
                                                                                        jmp   proc_reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx371_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx371_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        cmp              esi, 1
                                                                                        jne   .Lx371_55
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_55:
                        cmp              esi, 2
                                                                                        jne   .Lx371_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_56:
                        cmp              eax, 13
                                                                                        jne   .Lx371_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        cmp              rax, r8
                                                                                        je    .Lx371_41
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_41:
                        lea              r9, [rbp + 928]
.Lx371_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx371_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        cmp              esi, 1
                                                                                        jne   .Lx371_57
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_57:
                        cmp              esi, 2
                                                                                        jne   .Lx371_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_58:
                        cmp              eax, 13
                                                                                        jne   .Lx371_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        cmp              rax, r9
                                                                                        je    .Lx371_43
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_43:
                        cmp              r8, r9
                                                                                        je    .Lx371_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_44
                        cmp              eax, 99
                                                                                        je    .Lx371_44
                        cmp              eax, 13
                                                                                        jne   .Lx371_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx371_44
                                                                                        jmp   .Lx371_45
.Lx371_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_53
                        cmp              eax, 99
                                                                                        je    .Lx371_53
                        cmp              eax, 13
                                                                                        jne   .Lx371_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx371_53
                                                                                        jmp   .Lx371_46
.Lx371_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx371_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx371_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx371_51
.Lx371_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_47
                        cmp              eax, 99
                                                                                        je    .Lx371_47
                        cmp              eax, 13
                                                                                        jne   .Lx371_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx371_47
                                                                                        jmp   .Lx371_48
.Lx371_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx371_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx371_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx371_51
.Lx371_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx371_49
                        cmp              edx, 14
                                                                                        je    .Lx371_53
                                                                                        jmp   .Lx371_52
.Lx371_49:
                        cmp              edx, 14
                                                                                        je    .Lx371_52
                        cmp              ecx, 7
                                                                                        je    .Lx371_53
                        cmp              edx, 7
                                                                                        je    .Lx371_53
                        cmp              ecx, 6
                                                                                        jne   .Lx371_50
                        cmp              edx, 6
                                                                                        jne   .Lx371_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx371_51
                                                                                        jmp   .Lx371_52
.Lx371_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx371_53
.Lx371_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx371_54
.Lx371_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx371_54
.Lx371_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx371_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n321_op11_α
                                                                                        jmp   n328_var_ref_α
n326_op11_β:
                                                                                        jmp   n321_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n331_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n331_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx380_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx380_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_61
                        cmp              esi, 1
                                                                                        jne   .Lx380_62
                        mov              r8, rax
                                                                                        jmp   .Lx380_60
.Lx380_62:
                        cmp              esi, 2
                                                                                        jne   .Lx380_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_61
                        mov              r8, rax
                                                                                        jmp   .Lx380_60
.Lx380_63:
                        cmp              eax, 13
                                                                                        jne   .Lx380_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_61
                        cmp              rax, r8
                                                                                        je    .Lx380_61
                        mov              r8, rax
                                                                                        jmp   .Lx380_60
.Lx380_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_80
                        cmp              eax, 99
                                                                                        je    .Lx380_80
                        cmp              eax, 13
                                                                                        jne   .Lx380_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx380_80
                                                                                        jmp   .Lx380_74
.Lx380_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx380_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx380_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx380_73
                        lea              r9, [rbp + 592]
.Lx380_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx380_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_65
                        cmp              esi, 1
                                                                                        jne   .Lx380_66
                        mov              r9, rax
                                                                                        jmp   .Lx380_64
.Lx380_66:
                        cmp              esi, 2
                                                                                        jne   .Lx380_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_65
                        mov              r9, rax
                                                                                        jmp   .Lx380_64
.Lx380_67:
                        cmp              eax, 13
                                                                                        jne   .Lx380_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_65
                        cmp              rax, r9
                                                                                        je    .Lx380_65
                        mov              r9, rax
                                                                                        jmp   .Lx380_64
.Lx380_65:
                        lea              rcx, [rbp + 608]
.Lx380_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx380_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx380_69
                        cmp              esi, 1
                                                                                        jne   .Lx380_70
                        mov              rcx, rax
                                                                                        jmp   .Lx380_68
.Lx380_70:
                        cmp              esi, 2
                                                                                        jne   .Lx380_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_69
                        mov              rcx, rax
                                                                                        jmp   .Lx380_68
.Lx380_71:
                        cmp              eax, 13
                                                                                        jne   .Lx380_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx380_69
                        cmp              rax, rcx
                                                                                        je    .Lx380_69
                        mov              rcx, rax
                                                                                        jmp   .Lx380_68
.Lx380_69:
                        cmp              r9, rcx
                                                                                        je    .Lx380_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_75
                        cmp              eax, 99
                                                                                        je    .Lx380_75
                        cmp              eax, 13
                                                                                        jne   .Lx380_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx380_75
                                                                                        jmp   .Lx380_72
.Lx380_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_76
                        cmp              eax, 99
                                                                                        je    .Lx380_76
                        cmp              eax, 13
                                                                                        jne   .Lx380_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx380_76
                                                                                        jmp   .Lx380_72
.Lx380_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx380_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx380_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx380_77
.Lx380_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx380_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx380_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx380_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx380_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx380_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 592]
.Lx380_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx380_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_82
                        cmp              esi, 1
                                                                                        jne   .Lx380_83
                        mov              r9, rax
                                                                                        jmp   .Lx380_81
.Lx380_83:
                        cmp              esi, 2
                                                                                        jne   .Lx380_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_82
                        mov              r9, rax
                                                                                        jmp   .Lx380_81
.Lx380_84:
                        cmp              eax, 13
                                                                                        jne   .Lx380_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_82
                        cmp              rax, r9
                                                                                        je    .Lx380_82
                        mov              r9, rax
                                                                                        jmp   .Lx380_81
.Lx380_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_85
                        cmp              eax, 99
                                                                                        je    .Lx380_85
                        cmp              eax, 13
                                                                                        jne   .Lx380_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx380_85
                                                                                        jmp   .Lx380_86
.Lx380_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx380_87
.Lx380_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx380_87:
                        lea              rcx, [rbp + 608]
.Lx380_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx380_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx380_89
                        cmp              esi, 1
                                                                                        jne   .Lx380_90
                        mov              rcx, rax
                                                                                        jmp   .Lx380_88
.Lx380_90:
                        cmp              esi, 2
                                                                                        jne   .Lx380_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_89
                        mov              rcx, rax
                                                                                        jmp   .Lx380_88
.Lx380_91:
                        cmp              eax, 13
                                                                                        jne   .Lx380_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx380_89
                        cmp              rax, rcx
                                                                                        je    .Lx380_89
                        mov              rcx, rax
                                                                                        jmp   .Lx380_88
.Lx380_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_92
                        cmp              eax, 99
                                                                                        je    .Lx380_92
                        cmp              eax, 13
                                                                                        jne   .Lx380_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx380_92
                                                                                        jmp   .Lx380_93
.Lx380_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx380_94
.Lx380_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx380_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx380_77
.Lx380_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx380_77
.Lx380_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx380_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n325_op11_α
                                                                                        jmp   n333_var_ref_α
n331_op11_β:
                                                                                        jmp   n325_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n332_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx381_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx381_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_41
                        cmp              esi, 1
                                                                                        jne   .Lx381_55
                        mov              r8, rax
                                                                                        jmp   .Lx381_40
.Lx381_55:
                        cmp              esi, 2
                                                                                        jne   .Lx381_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx381_41
                        mov              r8, rax
                                                                                        jmp   .Lx381_40
.Lx381_56:
                        cmp              eax, 13
                                                                                        jne   .Lx381_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_41
                        cmp              rax, r8
                                                                                        je    .Lx381_41
                        mov              r8, rax
                                                                                        jmp   .Lx381_40
.Lx381_41:
                        lea              r9, [rbp + 848]
.Lx381_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx381_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_43
                        cmp              esi, 1
                                                                                        jne   .Lx381_57
                        mov              r9, rax
                                                                                        jmp   .Lx381_42
.Lx381_57:
                        cmp              esi, 2
                                                                                        jne   .Lx381_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx381_43
                        mov              r9, rax
                                                                                        jmp   .Lx381_42
.Lx381_58:
                        cmp              eax, 13
                                                                                        jne   .Lx381_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_43
                        cmp              rax, r9
                                                                                        je    .Lx381_43
                        mov              r9, rax
                                                                                        jmp   .Lx381_42
.Lx381_43:
                        cmp              r8, r9
                                                                                        je    .Lx381_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx381_44
                        cmp              eax, 99
                                                                                        je    .Lx381_44
                        cmp              eax, 13
                                                                                        jne   .Lx381_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx381_44
                                                                                        jmp   .Lx381_45
.Lx381_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx381_53
                        cmp              eax, 99
                                                                                        je    .Lx381_53
                        cmp              eax, 13
                                                                                        jne   .Lx381_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx381_53
                                                                                        jmp   .Lx381_46
.Lx381_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx381_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx381_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx381_51
.Lx381_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx381_47
                        cmp              eax, 99
                                                                                        je    .Lx381_47
                        cmp              eax, 13
                                                                                        jne   .Lx381_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx381_47
                                                                                        jmp   .Lx381_48
.Lx381_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx381_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx381_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx381_51
.Lx381_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx381_49
                        cmp              edx, 14
                                                                                        je    .Lx381_53
                                                                                        jmp   .Lx381_52
.Lx381_49:
                        cmp              edx, 14
                                                                                        je    .Lx381_52
                        cmp              ecx, 7
                                                                                        je    .Lx381_53
                        cmp              edx, 7
                                                                                        je    .Lx381_53
                        cmp              ecx, 6
                                                                                        jne   .Lx381_50
                        cmp              edx, 6
                                                                                        jne   .Lx381_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx381_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx381_51
                                                                                        jmp   .Lx381_52
.Lx381_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx381_53
.Lx381_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx381_54
.Lx381_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx381_54
.Lx381_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx381_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n321_op11_α
                                                                                        jmp   n334_suspend_α
n332_op11_β:
                                                                                        jmp   n321_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n335_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n334_suspend_α:
                        lea              rax, [rip + n334_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse1$2F3_γ
n334_suspend_β:
                                                                                        jmp   n321_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n336_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n336_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx388_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx388_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        cmp              esi, 1
                                                                                        jne   .Lx388_55
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_55:
                        cmp              esi, 2
                                                                                        jne   .Lx388_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_56:
                        cmp              eax, 13
                                                                                        jne   .Lx388_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        cmp              rax, r8
                                                                                        je    .Lx388_41
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_41:
                        lea              r9, [rbp + 496]
.Lx388_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx388_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        cmp              esi, 1
                                                                                        jne   .Lx388_57
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_57:
                        cmp              esi, 2
                                                                                        jne   .Lx388_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_58:
                        cmp              eax, 13
                                                                                        jne   .Lx388_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        cmp              rax, r9
                                                                                        je    .Lx388_43
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_43:
                        cmp              r8, r9
                                                                                        je    .Lx388_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_44
                        cmp              eax, 99
                                                                                        je    .Lx388_44
                        cmp              eax, 13
                                                                                        jne   .Lx388_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx388_44
                                                                                        jmp   .Lx388_45
.Lx388_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_53
                        cmp              eax, 99
                                                                                        je    .Lx388_53
                        cmp              eax, 13
                                                                                        jne   .Lx388_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx388_53
                                                                                        jmp   .Lx388_46
.Lx388_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx388_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx388_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx388_51
.Lx388_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_47
                        cmp              eax, 99
                                                                                        je    .Lx388_47
                        cmp              eax, 13
                                                                                        jne   .Lx388_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx388_47
                                                                                        jmp   .Lx388_48
.Lx388_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx388_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx388_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx388_51
.Lx388_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx388_49
                        cmp              edx, 14
                                                                                        je    .Lx388_53
                                                                                        jmp   .Lx388_52
.Lx388_49:
                        cmp              edx, 14
                                                                                        je    .Lx388_52
                        cmp              ecx, 7
                                                                                        je    .Lx388_53
                        cmp              edx, 7
                                                                                        je    .Lx388_53
                        cmp              ecx, 6
                                                                                        jne   .Lx388_50
                        cmp              edx, 6
                                                                                        jne   .Lx388_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx388_51
                                                                                        jmp   .Lx388_52
.Lx388_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx388_53
.Lx388_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx388_54
.Lx388_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx388_54
.Lx388_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx388_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n325_op11_α
                                                                                        jmp   n337_var_ref_α
n336_op11_β:
                                                                                        jmp   n325_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n339_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n339_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx393_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx393_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        cmp              esi, 1
                                                                                        jne   .Lx393_55
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_55:
                        cmp              esi, 2
                                                                                        jne   .Lx393_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_56:
                        cmp              eax, 13
                                                                                        jne   .Lx393_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        cmp              rax, r8
                                                                                        je    .Lx393_41
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_41:
                        lea              r9, [rbp + 416]
.Lx393_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx393_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        cmp              esi, 1
                                                                                        jne   .Lx393_57
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_57:
                        cmp              esi, 2
                                                                                        jne   .Lx393_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_58:
                        cmp              eax, 13
                                                                                        jne   .Lx393_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        cmp              rax, r9
                                                                                        je    .Lx393_43
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_43:
                        cmp              r8, r9
                                                                                        je    .Lx393_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_44
                        cmp              eax, 99
                                                                                        je    .Lx393_44
                        cmp              eax, 13
                                                                                        jne   .Lx393_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx393_44
                                                                                        jmp   .Lx393_45
.Lx393_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_53
                        cmp              eax, 99
                                                                                        je    .Lx393_53
                        cmp              eax, 13
                                                                                        jne   .Lx393_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_53
                                                                                        jmp   .Lx393_46
.Lx393_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx393_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx393_51
.Lx393_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_47
                        cmp              eax, 99
                                                                                        je    .Lx393_47
                        cmp              eax, 13
                                                                                        jne   .Lx393_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_47
                                                                                        jmp   .Lx393_48
.Lx393_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx393_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx393_51
.Lx393_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx393_49
                        cmp              edx, 14
                                                                                        je    .Lx393_53
                                                                                        jmp   .Lx393_52
.Lx393_49:
                        cmp              edx, 14
                                                                                        je    .Lx393_52
                        cmp              ecx, 7
                                                                                        je    .Lx393_53
                        cmp              edx, 7
                                                                                        je    .Lx393_53
                        cmp              ecx, 6
                                                                                        jne   .Lx393_50
                        cmp              edx, 6
                                                                                        jne   .Lx393_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx393_51
                                                                                        jmp   .Lx393_52
.Lx393_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx393_53
.Lx393_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx393_54
.Lx393_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx393_54
.Lx393_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx393_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n325_op11_α
                                                                                        jmp   n340_var_ref_α
n339_op11_β:
                                                                                        jmp   n325_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n341_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n342_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n343_var_ref_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n325_op11_α
                                                                                        jmp   n346_call_proc_staged_α
n345_op11_β:
                                                                                        jmp   n325_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx405_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx405_21
.Lx405_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx405_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx405_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx405_23
.Lx405_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx405_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx405_24
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx405_25
.Lx405_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx405_25:
                        mov              edi, 7
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx405_1
                        lea              rcx, [rip + .Lx405_3]
                        lea              rdx, [rip + .Lx405_4]
                                                                                        jmp   rax
.Lx405_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx405_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx405_2
.Lx405_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx405_2
.Lx405_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx405_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx405_2
.Lx405_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx405_2
.Lx405_1:
                        call             rt_faildescr@PLT
.Lx405_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n325_op11_α
                                                                                        jmp   n347_suspend_α
n346_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "reverse1/3"
#-----------------------------------------------------------------------------------------------------------------------
n347_suspend_α:
                        lea              rax, [rip + n347_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse1$2F3_γ
n347_suspend_β:
                                                                                        jmp   n346_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1168]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse1$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1256]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_ω:
                        mov              rax, [rbp + 1264]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_name$2F1_α
proc_prolog_name$2F1_α:
                        .global          proc_prolog_name$2F1_α
                        .global          proc_prolog_name$2F1_β
                        .global          proc_prolog_name$2F1_γ
                        .global          proc_prolog_name$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_name$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n408_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx415_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx415_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx415_101
.Lx415_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx415_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_name$2F1_ω
                                                                                        jmp   n409_var_ref_α
n408_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n411_op11_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "YAP Prolog"
#-----------------------------------------------------------------------------------------------------------------------
n411_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx419_2]
                                                                                        jmp   .Lx419_3
.Lx419_2:
                        .quad            .Lx419_2_s
.Lx419_2_s:
                        .string          "YAP Prolog"
.Lx419_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n413_op11_α
                                                                                        jmp   n412_move_label_α
n411_op11_β:
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n412_move_label_α:
                        lea              rax, [rip + n413_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_name$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_name$2F1_ω
                                                                                        jmp   proc_prolog_name$2F1_ω
n413_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n414_disjunction_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_β:
                                                                                        jmp   n414_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx425_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx425_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_name$2F1_α_body
.Lx425_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx425_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_date$2F1_α
proc_prolog_date$2F1_α:
                        .global          proc_prolog_date$2F1_α
                        .global          proc_prolog_date$2F1_β
                        .global          proc_prolog_date$2F1_γ
                        .global          proc_prolog_date$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_date$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n426_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx433_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx433_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx433_101
.Lx433_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx433_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_date$2F1_ω
                                                                                        jmp   n427_var_ref_α
n426_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n428_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n429_op11_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "2000"
#-----------------------------------------------------------------------------------------------------------------------
n429_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx437_2]
                                                                                        jmp   .Lx437_3
.Lx437_2:
                        .quad            .Lx437_2_s
.Lx437_2_s:
                        .string          "2000"
.Lx437_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n431_op11_α
                                                                                        jmp   n430_move_label_α
n429_op11_β:
                                                                                        jmp   n431_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_move_label_α:
                        lea              rax, [rip + n431_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_date$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n431_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_date$2F1_ω
                                                                                        jmp   proc_prolog_date$2F1_ω
n431_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n432_disjunction_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_β:
                                                                                        jmp   n432_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx443_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx443_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_date$2F1_α_body
.Lx443_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx443_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_assign$2F2_α
proc_g_assign$2F2_α:
                        .global          proc_g_assign$2F2_α
                        .global          proc_g_assign$2F2_β
                        .global          proc_g_assign$2F2_γ
                        .global          proc_g_assign$2F2_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_assign$2F2_α_body:
                        lea              rax, [rip + n455_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n444_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx456_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx456_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx456_101
.Lx456_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx456_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_assign$2F2_ω
                                                                                        jmp   n445_var_ref_α
n444_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n446_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx461_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx461_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_41
                        cmp              esi, 1
                                                                                        jne   .Lx461_55
                        mov              r8, rax
                                                                                        jmp   .Lx461_40
.Lx461_55:
                        cmp              esi, 2
                                                                                        jne   .Lx461_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx461_41
                        mov              r8, rax
                                                                                        jmp   .Lx461_40
.Lx461_56:
                        cmp              eax, 13
                                                                                        jne   .Lx461_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_41
                        cmp              rax, r8
                                                                                        je    .Lx461_41
                        mov              r8, rax
                                                                                        jmp   .Lx461_40
.Lx461_41:
                        lea              r9, [rbp + 320]
.Lx461_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx461_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_43
                        cmp              esi, 1
                                                                                        jne   .Lx461_57
                        mov              r9, rax
                                                                                        jmp   .Lx461_42
.Lx461_57:
                        cmp              esi, 2
                                                                                        jne   .Lx461_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx461_43
                        mov              r9, rax
                                                                                        jmp   .Lx461_42
.Lx461_58:
                        cmp              eax, 13
                                                                                        jne   .Lx461_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx461_43
                        cmp              rax, r9
                                                                                        je    .Lx461_43
                        mov              r9, rax
                                                                                        jmp   .Lx461_42
.Lx461_43:
                        cmp              r8, r9
                                                                                        je    .Lx461_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx461_44
                        cmp              eax, 99
                                                                                        je    .Lx461_44
                        cmp              eax, 13
                                                                                        jne   .Lx461_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx461_44
                                                                                        jmp   .Lx461_45
.Lx461_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx461_53
                        cmp              eax, 99
                                                                                        je    .Lx461_53
                        cmp              eax, 13
                                                                                        jne   .Lx461_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx461_53
                                                                                        jmp   .Lx461_46
.Lx461_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx461_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx461_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx461_51
.Lx461_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx461_47
                        cmp              eax, 99
                                                                                        je    .Lx461_47
                        cmp              eax, 13
                                                                                        jne   .Lx461_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx461_47
                                                                                        jmp   .Lx461_48
.Lx461_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx461_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx461_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx461_51
.Lx461_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx461_49
                        cmp              edx, 14
                                                                                        je    .Lx461_53
                                                                                        jmp   .Lx461_52
.Lx461_49:
                        cmp              edx, 14
                                                                                        je    .Lx461_52
                        cmp              ecx, 7
                                                                                        je    .Lx461_53
                        cmp              edx, 7
                                                                                        je    .Lx461_53
                        cmp              ecx, 6
                                                                                        jne   .Lx461_50
                        cmp              edx, 6
                                                                                        jne   .Lx461_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx461_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx461_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx461_51
                                                                                        jmp   .Lx461_52
.Lx461_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx461_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx461_53
.Lx461_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx461_54
.Lx461_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx461_54
.Lx461_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx461_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n449_op11_α
                                                                                        jmp   n448_var_ref_α
n447_op11_β:
                                                                                        jmp   n449_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n450_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n449_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_assign$2F2_ω
                                                                                        jmp   proc_g_assign$2F2_ω
n449_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n451_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        lea              r8, [rbp + 224]
.Lx467_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              esi, 1
                                                                                        jne   .Lx467_55
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_55:
                        cmp              esi, 2
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_56:
                        cmp              eax, 13
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              rax, r8
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_41:
                        lea              r9, [rbp + 240]
.Lx467_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              esi, 1
                                                                                        jne   .Lx467_57
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_57:
                        cmp              esi, 2
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_58:
                        cmp              eax, 13
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              rax, r9
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_43:
                        cmp              r8, r9
                                                                                        je    .Lx467_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_44
                        cmp              eax, 99
                                                                                        je    .Lx467_44
                        cmp              eax, 13
                                                                                        jne   .Lx467_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx467_44
                                                                                        jmp   .Lx467_45
.Lx467_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_53
                        cmp              eax, 99
                                                                                        je    .Lx467_53
                        cmp              eax, 13
                                                                                        jne   .Lx467_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_46
.Lx467_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx467_51
.Lx467_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_47
                        cmp              eax, 99
                                                                                        je    .Lx467_47
                        cmp              eax, 13
                                                                                        jne   .Lx467_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_47
                                                                                        jmp   .Lx467_48
.Lx467_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx467_51
.Lx467_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx467_49
                        cmp              edx, 14
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_52
.Lx467_49:
                        cmp              edx, 14
                                                                                        je    .Lx467_52
                        cmp              ecx, 7
                                                                                        je    .Lx467_53
                        cmp              edx, 7
                                                                                        je    .Lx467_53
                        cmp              ecx, 6
                                                                                        jne   .Lx467_50
                        cmp              edx, 6
                                                                                        jne   .Lx467_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx467_51
                                                                                        jmp   .Lx467_52
.Lx467_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
.Lx467_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx467_54
.Lx467_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx467_54
.Lx467_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx467_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n449_op11_α
                                                                                        jmp   n452_var_ref_α
n451_op11_β:
                                                                                        jmp   n449_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n454_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n454_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx473_21
.Lx473_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx473_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx473_23
.Lx473_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx473_23:
                        mov              rdi, qword ptr [rip + .Lx473_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx473_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx473_3]
                        lea              rdx, [rip + .Lx473_4]
                                                                                        jmp   rax
.Lx473_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_1:
                        call             rt_faildescr@PLT
.Lx473_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n449_op11_α
                                                                                        jmp   n455_suspend_α
n454_call_proc_staged_β:
                                                                                        jmp   n449_op11_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "bb_put/2"
#-----------------------------------------------------------------------------------------------------------------------
n455_suspend_α:
                        lea              rax, [rip + n455_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_assign$2F2_γ
n455_suspend_β:
                                                                                        jmp   n454_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_g_assign$2F2_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_read$2F2_α
proc_g_read$2F2_α:
                        .global          proc_g_read$2F2_α
                        .global          proc_g_read$2F2_β
                        .global          proc_g_read$2F2_γ
                        .global          proc_g_read$2F2_ω
                        sub              rsp, 576
                        mov              [rsp + 552], rcx
                        mov              [rsp + 560], rdx
                        mov              [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_read$2F2_α_body:
                        lea              rax, [rip + n491_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n476_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx492_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx492_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx492_101
.Lx492_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx492_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_read$2F2_ω
                                                                                        jmp   n477_var_ref_α
n476_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n479_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n479_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx497_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx497_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_41
                        cmp              esi, 1
                                                                                        jne   .Lx497_55
                        mov              r8, rax
                                                                                        jmp   .Lx497_40
.Lx497_55:
                        cmp              esi, 2
                                                                                        jne   .Lx497_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx497_41
                        mov              r8, rax
                                                                                        jmp   .Lx497_40
.Lx497_56:
                        cmp              eax, 13
                                                                                        jne   .Lx497_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_41
                        cmp              rax, r8
                                                                                        je    .Lx497_41
                        mov              r8, rax
                                                                                        jmp   .Lx497_40
.Lx497_41:
                        lea              r9, [rbp + 432]
.Lx497_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx497_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_43
                        cmp              esi, 1
                                                                                        jne   .Lx497_57
                        mov              r9, rax
                                                                                        jmp   .Lx497_42
.Lx497_57:
                        cmp              esi, 2
                                                                                        jne   .Lx497_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx497_43
                        mov              r9, rax
                                                                                        jmp   .Lx497_42
.Lx497_58:
                        cmp              eax, 13
                                                                                        jne   .Lx497_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_43
                        cmp              rax, r9
                                                                                        je    .Lx497_43
                        mov              r9, rax
                                                                                        jmp   .Lx497_42
.Lx497_43:
                        cmp              r8, r9
                                                                                        je    .Lx497_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx497_44
                        cmp              eax, 99
                                                                                        je    .Lx497_44
                        cmp              eax, 13
                                                                                        jne   .Lx497_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx497_44
                                                                                        jmp   .Lx497_45
.Lx497_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx497_53
                        cmp              eax, 99
                                                                                        je    .Lx497_53
                        cmp              eax, 13
                                                                                        jne   .Lx497_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx497_53
                                                                                        jmp   .Lx497_46
.Lx497_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx497_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx497_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx497_51
.Lx497_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx497_47
                        cmp              eax, 99
                                                                                        je    .Lx497_47
                        cmp              eax, 13
                                                                                        jne   .Lx497_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx497_47
                                                                                        jmp   .Lx497_48
.Lx497_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx497_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx497_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx497_51
.Lx497_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx497_49
                        cmp              edx, 14
                                                                                        je    .Lx497_53
                                                                                        jmp   .Lx497_52
.Lx497_49:
                        cmp              edx, 14
                                                                                        je    .Lx497_52
                        cmp              ecx, 7
                                                                                        je    .Lx497_53
                        cmp              edx, 7
                                                                                        je    .Lx497_53
                        cmp              ecx, 6
                                                                                        jne   .Lx497_50
                        cmp              edx, 6
                                                                                        jne   .Lx497_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx497_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx497_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx497_51
                                                                                        jmp   .Lx497_52
.Lx497_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx497_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx497_53
.Lx497_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx497_54
.Lx497_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx497_54
.Lx497_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx497_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n481_op11_α
                                                                                        jmp   n480_var_ref_α
n479_op11_β:
                                                                                        jmp   n481_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n482_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n481_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_read$2F2_ω
                                                                                        jmp   proc_g_read$2F2_ω
n481_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n483_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n483_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx503_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx503_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx503_41
                        cmp              esi, 1
                                                                                        jne   .Lx503_55
                        mov              r8, rax
                                                                                        jmp   .Lx503_40
.Lx503_55:
                        cmp              esi, 2
                                                                                        jne   .Lx503_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx503_41
                        mov              r8, rax
                                                                                        jmp   .Lx503_40
.Lx503_56:
                        cmp              eax, 13
                                                                                        jne   .Lx503_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx503_41
                        cmp              rax, r8
                                                                                        je    .Lx503_41
                        mov              r8, rax
                                                                                        jmp   .Lx503_40
.Lx503_41:
                        lea              r9, [rbp + 352]
.Lx503_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx503_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx503_43
                        cmp              esi, 1
                                                                                        jne   .Lx503_57
                        mov              r9, rax
                                                                                        jmp   .Lx503_42
.Lx503_57:
                        cmp              esi, 2
                                                                                        jne   .Lx503_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx503_43
                        mov              r9, rax
                                                                                        jmp   .Lx503_42
.Lx503_58:
                        cmp              eax, 13
                                                                                        jne   .Lx503_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx503_43
                        cmp              rax, r9
                                                                                        je    .Lx503_43
                        mov              r9, rax
                                                                                        jmp   .Lx503_42
.Lx503_43:
                        cmp              r8, r9
                                                                                        je    .Lx503_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx503_44
                        cmp              eax, 99
                                                                                        je    .Lx503_44
                        cmp              eax, 13
                                                                                        jne   .Lx503_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx503_44
                                                                                        jmp   .Lx503_45
.Lx503_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx503_53
                        cmp              eax, 99
                                                                                        je    .Lx503_53
                        cmp              eax, 13
                                                                                        jne   .Lx503_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx503_53
                                                                                        jmp   .Lx503_46
.Lx503_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx503_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx503_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx503_51
.Lx503_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx503_47
                        cmp              eax, 99
                                                                                        je    .Lx503_47
                        cmp              eax, 13
                                                                                        jne   .Lx503_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx503_47
                                                                                        jmp   .Lx503_48
.Lx503_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx503_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx503_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx503_51
.Lx503_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx503_49
                        cmp              edx, 14
                                                                                        je    .Lx503_53
                                                                                        jmp   .Lx503_52
.Lx503_49:
                        cmp              edx, 14
                                                                                        je    .Lx503_52
                        cmp              ecx, 7
                                                                                        je    .Lx503_53
                        cmp              edx, 7
                                                                                        je    .Lx503_53
                        cmp              ecx, 6
                                                                                        jne   .Lx503_50
                        cmp              edx, 6
                                                                                        jne   .Lx503_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx503_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx503_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx503_51
                                                                                        jmp   .Lx503_52
.Lx503_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx503_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx503_53
.Lx503_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx503_54
.Lx503_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx503_54
.Lx503_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx503_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n481_op11_α
                                                                                        jmp   n484_var_ref_α
n483_op11_β:
                                                                                        jmp   n481_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n485_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n486_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n486_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx509_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx509_21
.Lx509_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx509_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx509_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx509_23
.Lx509_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx509_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx509_1
                        lea              rcx, [rip + .Lx509_3]
                        lea              rdx, [rip + .Lx509_4]
                                                                                        jmp   rax
.Lx509_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx509_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx509_2
.Lx509_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx509_2
.Lx509_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx509_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx509_2
.Lx509_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx509_2
.Lx509_1:
                        call             rt_faildescr@PLT
.Lx509_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n481_op11_α
                                                                                        jmp   n487_op19_α
n486_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "$disj0/2"
#-----------------------------------------------------------------------------------------------------------------------
n487_op19_α:
                                                                                        jmp   n488_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n489_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n490_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n490_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx515_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx515_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx515_41
                        cmp              esi, 1
                                                                                        jne   .Lx515_55
                        mov              r8, rax
                                                                                        jmp   .Lx515_40
.Lx515_55:
                        cmp              esi, 2
                                                                                        jne   .Lx515_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx515_41
                        mov              r8, rax
                                                                                        jmp   .Lx515_40
.Lx515_56:
                        cmp              eax, 13
                                                                                        jne   .Lx515_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx515_41
                        cmp              rax, r8
                                                                                        je    .Lx515_41
                        mov              r8, rax
                                                                                        jmp   .Lx515_40
.Lx515_41:
                        lea              r9, [rbp + 160]
.Lx515_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx515_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx515_43
                        cmp              esi, 1
                                                                                        jne   .Lx515_57
                        mov              r9, rax
                                                                                        jmp   .Lx515_42
.Lx515_57:
                        cmp              esi, 2
                                                                                        jne   .Lx515_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx515_43
                        mov              r9, rax
                                                                                        jmp   .Lx515_42
.Lx515_58:
                        cmp              eax, 13
                                                                                        jne   .Lx515_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx515_43
                        cmp              rax, r9
                                                                                        je    .Lx515_43
                        mov              r9, rax
                                                                                        jmp   .Lx515_42
.Lx515_43:
                        cmp              r8, r9
                                                                                        je    .Lx515_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx515_44
                        cmp              eax, 99
                                                                                        je    .Lx515_44
                        cmp              eax, 13
                                                                                        jne   .Lx515_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx515_44
                                                                                        jmp   .Lx515_45
.Lx515_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx515_53
                        cmp              eax, 99
                                                                                        je    .Lx515_53
                        cmp              eax, 13
                                                                                        jne   .Lx515_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx515_53
                                                                                        jmp   .Lx515_46
.Lx515_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx515_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx515_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx515_51
.Lx515_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx515_47
                        cmp              eax, 99
                                                                                        je    .Lx515_47
                        cmp              eax, 13
                                                                                        jne   .Lx515_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx515_47
                                                                                        jmp   .Lx515_48
.Lx515_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx515_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx515_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx515_51
.Lx515_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx515_49
                        cmp              edx, 14
                                                                                        je    .Lx515_53
                                                                                        jmp   .Lx515_52
.Lx515_49:
                        cmp              edx, 14
                                                                                        je    .Lx515_52
                        cmp              ecx, 7
                                                                                        je    .Lx515_53
                        cmp              edx, 7
                                                                                        je    .Lx515_53
                        cmp              ecx, 6
                                                                                        jne   .Lx515_50
                        cmp              edx, 6
                                                                                        jne   .Lx515_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx515_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx515_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx515_51
                                                                                        jmp   .Lx515_52
.Lx515_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx515_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx515_53
.Lx515_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx515_54
.Lx515_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx515_54
.Lx515_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx515_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n481_op11_α
                                                                                        jmp   n491_suspend_α
n490_op11_β:
                                                                                        jmp   n481_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n491_suspend_α:
                        lea              rax, [rip + n491_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_read$2F2_γ
n491_suspend_β:
                                                                                        jmp   n481_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_g_read$2F2_res]
                        push             rax
                        mov              rax, [rbp + 552]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_ω:
                        mov              rax, [rbp + 560]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_go_other1$2F1_α
proc_go_other1$2F1_α:
                        .global          proc_go_other1$2F1_α
                        .global          proc_go_other1$2F1_β
                        .global          proc_go_other1$2F1_γ
                        .global          proc_go_other1$2F1_ω
                        sub              rsp, 576
                        mov              [rsp + 552], rcx
                        mov              [rsp + 560], rdx
                        mov              [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
proc_go_other1$2F1_α_body:
                        lea              rax, [rip + n533_suspend_β]
                        mov              qword ptr [rbp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n518_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx537_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx537_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx537_101
.Lx537_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx537_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   n519_var_ref_α
n518_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n520_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n521_lit_string_α
.Lx540_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n522_op11_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n522_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx542_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx542_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx542_111
                        cmp              esi, 1
                                                                                        jne   .Lx542_112
                        mov              r8, rax
                                                                                        jmp   .Lx542_110
.Lx542_112:
                        cmp              esi, 2
                                                                                        jne   .Lx542_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx542_111
                        mov              r8, rax
                                                                                        jmp   .Lx542_110
.Lx542_113:
                        cmp              eax, 13
                                                                                        jne   .Lx542_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx542_111
                        cmp              rax, r8
                                                                                        je    .Lx542_111
                        mov              r8, rax
                                                                                        jmp   .Lx542_110
.Lx542_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx542_114
                        cmp              eax, 99
                                                                                        je    .Lx542_114
                        cmp              eax, 13
                                                                                        jne   .Lx542_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx542_114
                                                                                        jmp   .Lx542_118
.Lx542_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx542_115
                        cmp              eax, 6
                                                                                        je    .Lx542_114
                        cmp              eax, 1
                                                                                        jne   .Lx542_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx542_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx542_114
                                                                                        jmp   .Lx542_116
.Lx542_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx542_117
.Lx542_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx542_117
.Lx542_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx542_117:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n524_var_ref_α
                                                                                        jmp   n523_var_ref_α
n522_op11_β:
                                                                                        jmp   n524_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n525_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n526_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n527_op11_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n528_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx550_2]
                                                                                        jmp   .Lx550_3
.Lx550_2:
                        .quad            .Lx550_2_s
.Lx550_2_s:
                        .string          "[]"
.Lx550_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n530_op11_α
                                                                                        jmp   n529_op19_α
n527_op11_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n528_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx551_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx551_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx551_41
                        cmp              esi, 1
                                                                                        jne   .Lx551_55
                        mov              r8, rax
                                                                                        jmp   .Lx551_40
.Lx551_55:
                        cmp              esi, 2
                                                                                        jne   .Lx551_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx551_41
                        mov              r8, rax
                                                                                        jmp   .Lx551_40
.Lx551_56:
                        cmp              eax, 13
                                                                                        jne   .Lx551_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx551_41
                        cmp              rax, r8
                                                                                        je    .Lx551_41
                        mov              r8, rax
                                                                                        jmp   .Lx551_40
.Lx551_41:
                        lea              r9, [rbp + 224]
.Lx551_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx551_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx551_43
                        cmp              esi, 1
                                                                                        jne   .Lx551_57
                        mov              r9, rax
                                                                                        jmp   .Lx551_42
.Lx551_57:
                        cmp              esi, 2
                                                                                        jne   .Lx551_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx551_43
                        mov              r9, rax
                                                                                        jmp   .Lx551_42
.Lx551_58:
                        cmp              eax, 13
                                                                                        jne   .Lx551_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx551_43
                        cmp              rax, r9
                                                                                        je    .Lx551_43
                        mov              r9, rax
                                                                                        jmp   .Lx551_42
.Lx551_43:
                        cmp              r8, r9
                                                                                        je    .Lx551_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx551_44
                        cmp              eax, 99
                                                                                        je    .Lx551_44
                        cmp              eax, 13
                                                                                        jne   .Lx551_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx551_44
                                                                                        jmp   .Lx551_45
.Lx551_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx551_53
                        cmp              eax, 99
                                                                                        je    .Lx551_53
                        cmp              eax, 13
                                                                                        jne   .Lx551_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx551_53
                                                                                        jmp   .Lx551_46
.Lx551_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx551_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx551_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx551_51
.Lx551_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx551_47
                        cmp              eax, 99
                                                                                        je    .Lx551_47
                        cmp              eax, 13
                                                                                        jne   .Lx551_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx551_47
                                                                                        jmp   .Lx551_48
.Lx551_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx551_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx551_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx551_51
.Lx551_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx551_49
                        cmp              edx, 14
                                                                                        je    .Lx551_53
                                                                                        jmp   .Lx551_52
.Lx551_49:
                        cmp              edx, 14
                                                                                        je    .Lx551_52
                        cmp              ecx, 7
                                                                                        je    .Lx551_53
                        cmp              edx, 7
                                                                                        je    .Lx551_53
                        cmp              ecx, 6
                                                                                        jne   .Lx551_50
                        cmp              edx, 6
                                                                                        jne   .Lx551_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx551_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx551_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx551_51
                                                                                        jmp   .Lx551_52
.Lx551_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx551_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx551_53
.Lx551_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx551_54
.Lx551_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx551_54
.Lx551_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx551_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n532_op11_α
                                                                                        jmp   n531_var_ref_α
n528_op11_β:
                                                                                        jmp   n532_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n529_op19_α:
                                                                                        jmp   n533_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n530_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   n524_var_ref_α
n530_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n534_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n532_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   proc_go_other1$2F1_ω
n532_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n533_suspend_α:
                        lea              rax, [rip + n533_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n533_suspend_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n534_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx560_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx560_21
.Lx560_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx560_21:
                        mov              rdi, qword ptr [rip + .Lx560_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx560_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx560_3]
                        lea              rdx, [rip + .Lx560_4]
                                                                                        jmp   rax
.Lx560_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx560_2
.Lx560_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx560_2
.Lx560_1:
                        call             rt_faildescr@PLT
.Lx560_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n532_op11_α
                                                                                        jmp   n535_call_proc_staged_α
n534_call_proc_staged_β:
                                                                                        jmp   n532_op11_α
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "pl2wam/1"
#-----------------------------------------------------------------------------------------------------------------------
n535_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx562_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx562_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx562_3]
                        lea              rdx, [rip + .Lx562_4]
                                                                                        jmp   rax
.Lx562_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx562_2
.Lx562_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx562_2
.Lx562_1:
                        call             rt_faildescr@PLT
.Lx562_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n534_call_proc_staged_β
                                                                                        jmp   n536_suspend_α
n535_call_proc_staged_β:
                                                                                        jmp   n534_call_proc_staged_β
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n536_suspend_α:
                        lea              rax, [rip + n536_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n536_suspend_β:
                                                                                        jmp   n535_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_β:
                                                                                        jmp   qword ptr [rbp + 512]
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_go_other1$2F1_res]
                        push             rax
                        mov              rax, [rbp + 552]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_ω:
                        mov              rax, [rbp + 560]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "prolog_copyright/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_prolog_copyright$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_prolog_copyright$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "prolog_version/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_prolog_version$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_prolog_version$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "reverse/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_reverse$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "go_other/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_go_other$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "append/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_append$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$disj0/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_$disj0$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 704
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "argument_list/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_argument_list$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_argument_list$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "reverse1/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_reverse1$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "prolog_name/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_prolog_name$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_prolog_name$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "prolog_date/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_prolog_date$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_prolog_date$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "g_assign/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_g_assign$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "g_read/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_g_read$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "go_other1/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_go_other1$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 168
                        mov              rdi, rsp
                        mov              ecx, 168
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n566_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n566_call_proc_staged_α:
                        lea              rsi, [rsp + 128]
                        call             proc_argument_list$2F1_dcα
                                                                                        jmp   .Lx572_2
.Lx572_2:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n567_var_ref_α
n566_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n568_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n568_call_proc_staged_α:
                        mov              qword ptr [rsp + 32], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx576_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx576_21
.Lx576_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx576_21:
                        mov              edi, 12
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx576_1
                        lea              rcx, [rip + .Lx576_3]
                        lea              rdx, [rip + .Lx576_4]
                                                                                        jmp   rax
.Lx576_3:
                        mov              qword ptr [rsp + 40], rsp
                        mov              rax, qword ptr [rsp + 32]
                        test             rax, rax
                                                                                        jne   .Lx576_5
                        mov              qword ptr [rsp + 32], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx576_2
.Lx576_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx576_2
.Lx576_4:
                        mov              rax, qword ptr [rsp + 32]
                        test             rax, rax
                                                                                        jne   .Lx576_6
                        mov              qword ptr [rsp + 32], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx576_2
.Lx576_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx576_2
.Lx576_1:
                        call             rt_faildescr@PLT
.Lx576_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n566_call_proc_staged_β
                                                                                        jmp   main_γ
n568_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 40]
                                                                                        jmp   qword ptr [rsp]
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 168
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 168
                        ret
                        .section         .note.GNU-stack,"",@progbits
