                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__WON_α
proc_LBL__WON_α:
                        .global          proc_LBL__WON_α
                        .global          proc_LBL__WON_β
                        .global          proc_LBL__WON_γ
                        .global          proc_LBL__WON_ω
                        sub              rsp, 432
                        mov              [rsp + 408], rcx
                        mov              [rsp + 416], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__WON_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_lit_string_α
n0_goto_β:
                                                                                        jmp   proc_LBL__WON_ω
#=======================================================================================================================
# WON     OUTPUT = 'took WON via :S($T)'
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "took WON via :S($T)"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx12_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n3_lit_integer_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         GT(0,3)         :S($T)F($F)
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 368], 6
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n4_lit_integer_α
.Lx13_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rsp + 352], 6
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n5_op75_α
.Lx14_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n5_op75_α:
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 7
                                                                                        je    .Lx16_1
                        cmp              eax, 6
                                                                                        jne   .Lx16_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx16_0
.Lx16_1:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n6_op75_α
.Lx16_0:
                        lea              rdi, [rsp + 368]
                        lea              rsi, [rsp + 352]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n6_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op75_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx18_1
                        cmp              eax, 6
                                                                                        jne   .Lx18_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx18_0
.Lx18_1:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n8_op77_α
.Lx18_0:
                        lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 368]
                        lea              rdx, [rsp + 320]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n7_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx20_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx20_1
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "$F"
.Lx20_1:
                                                                                        jmp   proc_LBL__WON_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_op77_α:
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 320]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n7_goto_deferred_α
                                                                                        jmp   n9_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n9_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx24_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx24_1
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "$T"
.Lx24_1:
                                                                                        jmp   proc_LBL__WON_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__WON_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__WON_β:
                                                                                        jmp   proc_LBL__WON_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__WON_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 408]
                        add              rsp, 432
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__WON_ω:
                        mov              rax, [rsp + 416]
                        add              rsp, 432
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__LOST_α
proc_LBL__LOST_α:
                        .global          proc_LBL__LOST_α
                        .global          proc_LBL__LOST_β
                        .global          proc_LBL__LOST_γ
                        .global          proc_LBL__LOST_ω
                        sub              rsp, 432
                        mov              [rsp + 408], rcx
                        mov              [rsp + 416], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__LOST_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n25_goto_α:
                                                                                        jmp   n26_lit_string_α
n25_goto_β:
                                                                                        jmp   proc_LBL__LOST_ω
#=======================================================================================================================
# LOST    OUTPUT = 'took LOST via :F($F)'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "took LOST via :F($F)"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx30_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__LOST_γ
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__LOST_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__LOST_β:
                                                                                        jmp   proc_LBL__LOST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__LOST_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 408]
                        add              rsp, 432
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__LOST_ω:
                        mov              rax, [rsp + 416]
                        add              rsp, 432
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__WON"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__WON_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__LOST"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__LOST_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "T"
.Lgvan1:                .string          "F"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
                        sub              rsp, 408
                        mov              rdi, rsp
                        mov              ecx, 408
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n34_lit_integer_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:
                                                                                        jmp   n35_lit_string_α
n32_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_goto_α:
                                                                                        jmp   n36_lit_string_α
n33_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n37_call_α
.Lx61_0:
                        .quad            1
#=======================================================================================================================
# WON     OUTPUT = 'took WON via :S($T)'
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "took WON via :S($T)"
#=======================================================================================================================
# LOST    OUTPUT = 'took LOST via :F($F)'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "took LOST via :F($F)"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn65:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n40_lit_string_α
                                                                                        jmp   n40_lit_string_α
n37_call_β:
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n41_lit_integer_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx67_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         T = 'WON'
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "WON"
#=======================================================================================================================
#         GT(0,3)         :S($T)F($F)
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rsp + 368], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n43_lit_integer_α
.Lx69_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rsp + 352], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n45_op75_α
.Lx71_0:
                        .quad            3
#=======================================================================================================================
#         F = 'LOST'
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_assign_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "LOST"
#-----------------------------------------------------------------------------------------------------------------------
n45_op75_α:
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 7
                                                                                        je    .Lx74_1
                        cmp              eax, 6
                                                                                        jne   .Lx74_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx74_0
.Lx74_1:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n47_op75_α
.Lx74_0:
                        lea              rdi, [rsp + 368]
                        lea              rsi, [rsp + 352]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n47_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op75_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx77_1
                        cmp              eax, 6
                                                                                        jne   .Lx77_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx77_0
.Lx77_1:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n50_op77_α
.Lx77_0:
                        lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 368]
                        lea              rdx, [rsp + 320]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n50_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx79_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx79_1
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "$F"
.Lx79_1:
                                                                                        jmp   main_γ
#=======================================================================================================================
#         GT(7,3)         :S($T)F($F)
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n51_lit_integer_α
.Lx80_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n50_op77_α:
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 320]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n48_goto_deferred_α
                                                                                        jmp   n52_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rsp + 272], 6
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n53_op75_α
.Lx83_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx85_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx85_1
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "$T"
.Lx85_1:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n53_op75_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx87_1
                        cmp              eax, 6
                                                                                        jne   .Lx87_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx87_0
.Lx87_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n54_op75_α
.Lx87_0:
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n54_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op75_α:
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 7
                                                                                        je    .Lx89_1
                        cmp              eax, 6
                                                                                        jne   .Lx89_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx89_0
.Lx89_1:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n56_op77_α
.Lx89_0:
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n56_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx91_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx91_1
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "$F"
.Lx91_1:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n56_op77_α:
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 240]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n55_goto_deferred_α
                                                                                        jmp   n57_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n57_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx95_1
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "$T"
.Lx95_1:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 408
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 408
                        ret
                        .section         .note.GNU-stack,"",@progbits
