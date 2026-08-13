                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
#-----------------------------------------------------------------------------------------------------------------------
n0_save_restore_α:                                                            jmp   n1_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_deferred_α:     lea              rax, [rip + EMIT_body];              jmp   rax
                                                                              jmp   n2_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n2_save_restore_α:
EMIT_alpha:             mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx8_2
                        mov              eax, 0
.Lx8_2:                 sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 0]                        # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + EMIT_gamma]
                        lea              r11, [rip + EMIT_omega]
                        lea              rax, [rip + EMIT_body];              jmp   rax
EMIT_gamma:             mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx8_75
                        mov              eax, 0
.Lx8_75:                lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                              jbe   .Lx8_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx8_3:                 mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
EMIT_omega:             mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx8_145
                        mov              eax, 0
.Lx8_145:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                              jbe   .Lx8_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx8_4:                 mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
#-----------------------------------------------------------------------------------------------------------------------
n9_save_restore_α:                                                            jmp   n10_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n10_goto_deferred_α:    lea              rax, [rip + PSH_body];               jmp   rax
                                                                              jmp   n11_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n11_save_restore_α:
PSH_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx17_2
                        mov              eax, 0
.Lx17_2:                sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 16]                       # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + PSH_gamma]
                        lea              r11, [rip + PSH_omega]
                        lea              rax, [rip + PSH_body];               jmp   rax
PSH_gamma:              mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx17_75
                        mov              eax, 0
.Lx17_75:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                              jbe   .Lx17_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx17_3:                mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
PSH_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx17_145
                        mov              eax, 0
.Lx17_145:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                              jbe   .Lx17_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx17_4:                mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
#-----------------------------------------------------------------------------------------------------------------------
n18_save_restore_α:                                                           jmp   n19_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_deferred_α:    lea              rax, [rip + DRF_body];               jmp   rax
                                                                              jmp   n20_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
DRF_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx26_2
                        mov              eax, 16
.Lx26_2:                sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 32]                       # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                              jbe   .Lx26_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 48]                       # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx26_41
.Lx26_10:               mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx26_41:               lea              r10, [rip + DRF_gamma]
                        lea              r11, [rip + DRF_omega]
                        lea              rax, [rip + DRF_body];               jmp   rax
DRF_gamma:              mov              rdi, qword ptr [r9 + 32]                       # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx26_75
                        mov              eax, 16
.Lx26_75:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                              jbe   .Lx26_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # nm
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx26_110
.Lx26_80:               mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx26_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx26_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx26_3:                mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DRF_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx26_145
                        mov              eax, 16
.Lx26_145:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                              jbe   .Lx26_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # nm
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx26_180
.Lx26_150:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx26_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx26_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx26_4:                mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
#-----------------------------------------------------------------------------------------------------------------------
n27_save_restore_α:                                                           jmp   n28_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_deferred_α:    lea              rax, [rip + ADD_body];               jmp   rax
                                                                              jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n29_save_restore_α:
ADD_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx35_2
                        mov              eax, 16
.Lx35_2:                sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 64]                       # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                              jbe   .Lx35_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx35_41
.Lx35_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx35_41:               lea              r10, [rip + ADD_gamma]
                        lea              r11, [rip + ADD_omega]
                        lea              rax, [rip + ADD_body];               jmp   rax
ADD_gamma:              mov              rdi, qword ptr [r9 + 64]                       # ADD
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx35_75
                        mov              eax, 16
.Lx35_75:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0;                              jbe   .Lx35_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx35_110
.Lx35_80:               mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx35_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx35_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx35_3:                mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ADD_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx35_145
                        mov              eax, 16
.Lx35_145:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax                       # ADD
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0;                              jbe   .Lx35_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx35_180
.Lx35_150:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx35_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx35_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx35_4:                mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
#-----------------------------------------------------------------------------------------------------------------------
n36_save_restore_α:                                                           jmp   n37_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_deferred_α:    lea              rax, [rip + SUB_body];               jmp   rax
                                                                              jmp   n38_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n38_save_restore_α:
SUB_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx44_2
                        mov              eax, 16
.Lx44_2:                sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 96]                       # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                              jbe   .Lx44_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx44_41
.Lx44_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx44_41:               lea              r10, [rip + SUB_gamma]
                        lea              r11, [rip + SUB_omega]
                        lea              rax, [rip + SUB_body];               jmp   rax
SUB_gamma:              mov              rdi, qword ptr [r9 + 96]                       # SUB
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx44_75
                        mov              eax, 16
.Lx44_75:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0;                              jbe   .Lx44_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx44_110
.Lx44_80:               mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx44_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx44_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx44_3:                mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SUB_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx44_145
                        mov              eax, 16
.Lx44_145:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax                       # SUB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0;                              jbe   .Lx44_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx44_180
.Lx44_150:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx44_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx44_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx44_4:                mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
#-----------------------------------------------------------------------------------------------------------------------
n45_save_restore_α:                                                           jmp   n46_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_deferred_α:    lea              rax, [rip + MUL_body];               jmp   rax
                                                                              jmp   n47_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n47_save_restore_α:
MUL_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx53_2
                        mov              eax, 16
.Lx53_2:                sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 112]                      # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                              jbe   .Lx53_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx53_41
.Lx53_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx53_41:               lea              r10, [rip + MUL_gamma]
                        lea              r11, [rip + MUL_omega]
                        lea              rax, [rip + MUL_body];               jmp   rax
MUL_gamma:              mov              rdi, qword ptr [r9 + 112]                      # MUL
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx53_75
                        mov              eax, 16
.Lx53_75:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0;                              jbe   .Lx53_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx53_110
.Lx53_80:               mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx53_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx53_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx53_3:                mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
MUL_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx53_145
                        mov              eax, 16
.Lx53_145:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax                      # MUL
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0;                              jbe   .Lx53_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx53_180
.Lx53_150:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx53_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx53_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx53_4:                mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
#-----------------------------------------------------------------------------------------------------------------------
n54_save_restore_α:                                                           jmp   n55_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_deferred_α:    lea              rax, [rip + DIV_body];               jmp   rax
                                                                              jmp   n56_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n56_save_restore_α:
DIV_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx62_2
                        mov              eax, 16
.Lx62_2:                sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 128]                      # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                              jbe   .Lx62_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx62_41
.Lx62_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx62_41:               lea              r10, [rip + DIV_gamma]
                        lea              r11, [rip + DIV_omega]
                        lea              rax, [rip + DIV_body];               jmp   rax
DIV_gamma:              mov              rdi, qword ptr [r9 + 128]                      # DIV
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx62_75
                        mov              eax, 16
.Lx62_75:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rcx, 0;                              jbe   .Lx62_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx62_110
.Lx62_80:               mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx62_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx62_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx62_3:                mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DIV_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                              jbe   .Lx62_145
                        mov              eax, 16
.Lx62_145:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax                      # DIV
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rcx, 0;                              jbe   .Lx62_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx62_180
.Lx62_150:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx62_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                              jbe   .Lx62_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx62_4:                mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_NEG_α
proc_NEG_α:
#-----------------------------------------------------------------------------------------------------------------------
n63_save_restore_α:                                                           jmp   n64_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_deferred_α:    lea              rax, [rip + NEG_body];               jmp   rax
                                                                              jmp   n65_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n65_save_restore_α:
NEG_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx71_2
                        mov              eax, 0
.Lx71_2:                sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 144]                      # NEG
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + NEG_gamma]
                        lea              r11, [rip + NEG_omega]
                        lea              rax, [rip + NEG_body];               jmp   rax
NEG_gamma:              mov              rdi, qword ptr [r9 + 144]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx71_75
                        mov              eax, 0
.Lx71_75:               lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                              jbe   .Lx71_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx71_3:                mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
NEG_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                              jbe   .Lx71_145
                        mov              eax, 0
.Lx71_145:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                              jbe   .Lx71_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx71_4:                mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n72_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n73_match_any_α
n72_match_assign_save_β: add              rsp, 16;                            jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lx78_239
                        add              rsp, 16;                             jmp   proc_PAT$0_ω
.Lx78_239:              movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   .Lx78_240
                        add              rsp, 16;                             jmp   proc_PAT$0_ω
.Lx78_240:              add              r14d, 1;                             jmp   n74_match_assign_cond_α
n73_match_any_β:        sub              r14d, 1
                        add              rsp, 16;                             jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_match_assign_cond_α: mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   proc_PAT$0_γ
n74_match_assign_cond_β: sub              r12, 24;                            jmp   n73_match_any_β
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
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
proc_PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n81_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n82_match_span_α
n81_match_assign_save_β: add              rsp, 16;                            jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n82_match_span_α:       sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx87_0:                cmp              ecx, r15d;                           jge   .Lx87_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx87_1
                        add              ecx, 1;                              jmp   .Lx87_0
.Lx87_1:                cmp              ecx, r14d;                           jg    .Lx87_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$1_ω
.Lx87_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n83_match_assign_cond_α
n82_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n83_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   proc_PAT$1_γ
n83_match_assign_cond_β: sub              r12, 24;                            jmp   n82_match_span_β
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
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
proc_PAT$2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n90_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx98_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n96_match_defer_α
.Lx98_21:               lea              rax, [rip + .Lx98_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n95_match_defer_α
.Lx98_22:               lea              rax, [rip + .Lx98_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n92_match_lit_α
n90_match_alternate_s0: lea              rax, [rip + .Lx98_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_match_alternate_as
n90_match_alternate_s1: lea              rax, [rip + .Lx98_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_match_alternate_as
n90_match_alternate_s2: lea              rax, [rip + .Lx98_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_match_alternate_as
.Lx98_40:                                                                     jmp   n96_match_defer_β
.Lx98_41:                                                                     jmp   n95_match_defer_β
.Lx98_42:                                                                     jmp   n91_goto_β
n90_match_alternate_as:                                                       jmp   proc_PAT$2_γ
n90_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n90_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx98_19:               add              rsp, 32;                             jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_α:                                                                   jmp   n90_match_alternate_af
n91_goto_β:                                                                   jmp   n90_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n90_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n90_match_alternate_af
                        add              r14d, 1;                             jmp   n93_match_defer_α
n92_match_lit_β:        sub              r14d, 1;                             jmp   n90_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx102_11
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx102_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx102_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx102_10
.Lx102_9:               xor              eax, eax
.Lx102_10:              lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx102_11:              test             rax, rax;                            jz    .Lx102_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx102_4]
                        lea              r11, [rip + .Lx102_5];               jmp   rax
.Lx102_4:                                                                     jmp   n94_match_lit_α
.Lx102_5:                                                                     jmp   n92_match_lit_β
.Lx102_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
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
.Lx102_2:               test             rax, rax;                            je    .Lx102_3
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
                        lea              rcx, [rip + .Lx102_7]
                        lea              rdx, [rip + .Lx102_8];               jmp   rax
.Lx102_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx102_2
.Lx102_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx102_2
.Lx102_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n92_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx102_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n94_match_lit_α
.Lx102_6:               add              rsp, 16;                             jmp   n92_match_lit_β
n93_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n94_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n90_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n90_match_alternate_af
                        add              r14d, 1;                             jmp   n90_match_alternate_s2
n94_match_lit_β:        sub              r14d, 1;                             jmp   n90_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n95_match_defer_α:      mov              rax, qword ptr [r9 + 528]                      # PAT$2$V1
                        mov              rdx, qword ptr [r9 + 536]
                        cmp              eax, 8;                              jne   .Lx105_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx105_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx105_10
.Lx105_9:               xor              eax, eax
.Lx105_10:              test             rax, rax;                            jz    .Lx105_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx105_4]
                        lea              r11, [rip + .Lx105_5];               jmp   rax
.Lx105_4:                                                                     jmp   n90_match_alternate_s1
.Lx105_5:                                                                     jmp   n90_match_alternate_af
.Lx105_0:               push             r14
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
.Lx105_2:               test             rax, rax;                            je    .Lx105_3
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
                        lea              rcx, [rip + .Lx105_7]
                        lea              rdx, [rip + .Lx105_8];               jmp   rax
.Lx105_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx105_2
.Lx105_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx105_2
.Lx105_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n90_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx105_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n90_match_alternate_s1
.Lx105_6:               add              rsp, 16;                             jmp   n90_match_alternate_af
n95_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n96_match_defer_α:      mov              rax, qword ptr [r9 + 512]                      # PAT$2$V0
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              eax, 8;                              jne   .Lx106_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx106_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx106_10
.Lx106_9:               xor              eax, eax
.Lx106_10:              test             rax, rax;                            jz    .Lx106_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx106_4]
                        lea              r11, [rip + .Lx106_5];               jmp   rax
.Lx106_4:                                                                     jmp   n90_match_alternate_s0
.Lx106_5:                                                                     jmp   n90_match_alternate_af
.Lx106_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
.Lx106_2:               test             rax, rax;                            je    .Lx106_3
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
                        lea              rcx, [rip + .Lx106_7]
                        lea              rdx, [rip + .Lx106_8];               jmp   rax
.Lx106_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx106_2
.Lx106_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx106_2
.Lx106_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n90_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx106_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n90_match_alternate_s0
.Lx106_6:               add              rsp, 16;                             jmp   n90_match_alternate_af
n96_match_defer_β:                                                            jmp   qword ptr [rsp]
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
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
proc_PAT$3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n107_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx118_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n116_match_defer_α
.Lx118_21:              lea              rax, [rip + .Lx118_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n114_match_lit_α
.Lx118_22:              lea              rax, [rip + .Lx118_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n109_match_lit_α
n107_match_alternate_s0: lea              rax, [rip + .Lx118_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
n107_match_alternate_s1: lea              rax, [rip + .Lx118_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
n107_match_alternate_s2: lea              rax, [rip + .Lx118_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
.Lx118_40:                                                                    jmp   n116_match_defer_β
.Lx118_41:                                                                    jmp   n113_goto_β
.Lx118_42:                                                                    jmp   n108_goto_β
n107_match_alternate_as:                                                      jmp   proc_PAT$3_γ
n107_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n107_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx118_19:              add              rsp, 32;                             jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_goto_α:                                                                  jmp   n107_match_alternate_af
n108_goto_β:                                                                  jmp   n107_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n109_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n107_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n107_match_alternate_af
                        add              r14d, 1;                             jmp   n110_match_assign_save_α
n109_match_lit_β:       sub              r14d, 1;                             jmp   n107_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n110_match_assign_save_α: lea              rdi, [rsp + 128]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n111_match_defer_α
n110_match_assign_save_β: lea              rdi, [rsp + 128]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n109_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n111_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx124_11
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx124_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx124_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx124_10
.Lx124_9:               xor              eax, eax
.Lx124_10:              lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx124_11:              test             rax, rax;                            jz    .Lx124_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx124_4]
                        lea              r11, [rip + .Lx124_5];               jmp   rax
.Lx124_4:                                                                     jmp   n112_match_assign_cond_α
.Lx124_5:                                                                     jmp   n110_match_assign_save_β
.Lx124_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
.Lx124_2:               test             rax, rax;                            je    .Lx124_3
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
                        lea              rcx, [rip + .Lx124_7]
                        lea              rdx, [rip + .Lx124_8];               jmp   rax
.Lx124_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx124_2
.Lx124_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx124_2
.Lx124_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n110_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx124_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n112_match_assign_cond_α
.Lx124_6:               add              rsp, 16;                             jmp   n110_match_assign_save_β
n111_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n112_match_assign_cond_α: lea              rdi, [rsp + 128]
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
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n107_match_alternate_s2
n112_match_assign_cond_β: sub              r12, 24;                           jmp   n111_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n113_goto_α:                                                                  jmp   n107_match_alternate_af
n113_goto_β:                                                                  jmp   n107_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n114_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n107_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n107_match_alternate_af
                        add              r14d, 1;                             jmp   n115_match_defer_α
n114_match_lit_β:       sub              r14d, 1;                             jmp   n107_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx130_11
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx130_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx130_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx130_10
.Lx130_9:               xor              eax, eax
.Lx130_10:              lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx130_11:              test             rax, rax;                            jz    .Lx130_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx130_4]
                        lea              r11, [rip + .Lx130_5];               jmp   rax
.Lx130_4:                                                                     jmp   n107_match_alternate_s1
.Lx130_5:                                                                     jmp   n114_match_lit_β
.Lx130_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
.Lx130_2:               test             rax, rax;                            je    .Lx130_3
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
                        lea              rcx, [rip + .Lx130_7]
                        lea              rdx, [rip + .Lx130_8];               jmp   rax
.Lx130_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx130_2
.Lx130_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx130_2
.Lx130_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n114_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n107_match_alternate_s1
.Lx130_6:               add              rsp, 16;                             jmp   n114_match_lit_β
n115_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n116_match_defer_α:     mov              rax, qword ptr [r9 + 544]                      # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 552]
                        cmp              eax, 8;                              jne   .Lx131_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx131_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx131_10
.Lx131_9:               xor              eax, eax
.Lx131_10:              test             rax, rax;                            jz    .Lx131_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx131_4]
                        lea              r11, [rip + .Lx131_5];               jmp   rax
.Lx131_4:                                                                     jmp   n107_match_alternate_s0
.Lx131_5:                                                                     jmp   n107_match_alternate_af
.Lx131_0:               push             r14
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
.Lx131_2:               test             rax, rax;                            je    .Lx131_3
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
                        lea              rcx, [rip + .Lx131_7]
                        lea              rdx, [rip + .Lx131_8];               jmp   rax
.Lx131_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx131_2
.Lx131_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx131_2
.Lx131_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n107_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx131_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n107_match_alternate_s0
.Lx131_6:               add              rsp, 16;                             jmp   n107_match_alternate_af
n116_match_defer_β:                                                           jmp   qword ptr [rsp]
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
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
proc_PAT$4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n132_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]                      # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 568]
                        cmp              eax, 8;                              jne   .Lx145_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx145_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx145_10
.Lx145_9:               xor              eax, eax
.Lx145_10:              test             rax, rax;                            jz    .Lx145_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx145_4]
                        lea              r11, [rip + .Lx145_5];               jmp   rax
.Lx145_4:                                                                     jmp   n133_match_alternate_α
.Lx145_5:               add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx145_0:               push             r14
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
.Lx145_2:               test             rax, rax;                            je    .Lx145_3
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
                        lea              rcx, [rip + .Lx145_7]
                        lea              rdx, [rip + .Lx145_8];               jmp   rax
.Lx145_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx145_2
.Lx145_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx145_2
.Lx145_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx145_240
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx145_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx145_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n133_match_alternate_α
.Lx145_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
n132_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n133_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx147_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n141_match_lit_α
.Lx147_21:              lea              rax, [rip + .Lx147_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n136_match_lit_α
.Lx147_22:              lea              rax, [rip + .Lx147_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n134_match_lit_α
n133_match_alternate_s0: lea              rax, [rip + .Lx147_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
n133_match_alternate_s1: lea              rax, [rip + .Lx147_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
n133_match_alternate_s2: lea              rax, [rip + .Lx147_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
.Lx147_40:                                                                    jmp   n140_goto_β
.Lx147_41:                                                                    jmp   n135_goto_β
.Lx147_42:                                                                    jmp   n134_match_lit_β
n133_match_alternate_as:                                                      jmp   proc_PAT$4_γ
n133_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n133_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx147_19:              add              rsp, 32;                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_match_lit_α:                                                             jmp   n133_match_alternate_s2
n134_match_lit_β:                                                             jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n135_goto_α:                                                                  jmp   n133_match_alternate_af
n135_goto_β:                                                                  jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n136_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n133_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n133_match_alternate_af
                        add              r14d, 1;                             jmp   n137_match_assign_save_α
n136_match_lit_β:       sub              r14d, 1;                             jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n137_match_assign_save_α: lea              rdi, [rsp + 176]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n138_match_defer_α
n137_match_assign_save_β: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n136_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx155_11
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                              jne   .Lx155_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx155_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx155_10
.Lx155_9:               xor              eax, eax
.Lx155_10:              lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx155_11:              test             rax, rax;                            jz    .Lx155_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx155_4]
                        lea              r11, [rip + .Lx155_5];               jmp   rax
.Lx155_4:                                                                     jmp   n139_match_assign_cond_α
.Lx155_5:                                                                     jmp   n137_match_assign_save_β
.Lx155_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
.Lx155_2:               test             rax, rax;                            je    .Lx155_3
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
                        lea              rcx, [rip + .Lx155_7]
                        lea              rdx, [rip + .Lx155_8];               jmp   rax
.Lx155_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx155_2
.Lx155_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx155_2
.Lx155_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n137_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx155_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n139_match_assign_cond_α
.Lx155_6:               add              rsp, 16;                             jmp   n137_match_assign_save_β
n138_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n139_match_assign_cond_α: lea              rdi, [rsp + 176]
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
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n133_match_alternate_s1
n139_match_assign_cond_β: sub              r12, 24;                           jmp   n138_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n140_goto_α:                                                                  jmp   n133_match_alternate_af
n140_goto_β:                                                                  jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n141_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n133_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n133_match_alternate_af
                        add              r14d, 1;                             jmp   n142_match_assign_save_α
n141_match_lit_β:       sub              r14d, 1;                             jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n142_match_assign_save_α: lea              rdi, [rsp + 112]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n143_match_defer_α
n142_match_assign_save_β: lea              rdi, [rsp + 112]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n141_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx163_11
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                              jne   .Lx163_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx163_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx163_10
.Lx163_9:               xor              eax, eax
.Lx163_10:              lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx163_11:              test             rax, rax;                            jz    .Lx163_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx163_4]
                        lea              r11, [rip + .Lx163_5];               jmp   rax
.Lx163_4:                                                                     jmp   n144_match_assign_cond_α
.Lx163_5:                                                                     jmp   n142_match_assign_save_β
.Lx163_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
.Lx163_2:               test             rax, rax;                            je    .Lx163_3
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
                        lea              rcx, [rip + .Lx163_7]
                        lea              rdx, [rip + .Lx163_8];               jmp   rax
.Lx163_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx163_2
.Lx163_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx163_2
.Lx163_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n142_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx163_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n144_match_assign_cond_α
.Lx163_6:               add              rsp, 16;                             jmp   n142_match_assign_save_β
n143_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n144_match_assign_cond_α: lea              rdi, [rsp + 112]
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
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n133_match_alternate_s0
n144_match_assign_cond_β: sub              r12, 24;                           jmp   n143_match_defer_β
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
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
proc_PAT$5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n166_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]                      # PAT$5$V0
                        mov              rdx, qword ptr [r9 + 584]
                        cmp              eax, 8;                              jne   .Lx179_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx179_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx179_10
.Lx179_9:               xor              eax, eax
.Lx179_10:              test             rax, rax;                            jz    .Lx179_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx179_4]
                        lea              r11, [rip + .Lx179_5];               jmp   rax
.Lx179_4:                                                                     jmp   n167_match_alternate_α
.Lx179_5:               add              rsp, 16;                             jmp   proc_PAT$5_ω
.Lx179_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]
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
.Lx179_2:               test             rax, rax;                            je    .Lx179_3
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
                        lea              rcx, [rip + .Lx179_7]
                        lea              rdx, [rip + .Lx179_8];               jmp   rax
.Lx179_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx179_2
.Lx179_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx179_2
.Lx179_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx179_240
                        add              rsp, 16;                             jmp   proc_PAT$5_ω
.Lx179_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx179_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n167_match_alternate_α
.Lx179_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$5_ω
n166_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n167_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx181_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n175_match_lit_α
.Lx181_21:              lea              rax, [rip + .Lx181_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n170_match_lit_α
.Lx181_22:              lea              rax, [rip + .Lx181_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n168_match_lit_α
n167_match_alternate_s0: lea              rax, [rip + .Lx181_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
n167_match_alternate_s1: lea              rax, [rip + .Lx181_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
n167_match_alternate_s2: lea              rax, [rip + .Lx181_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
.Lx181_40:                                                                    jmp   n174_goto_β
.Lx181_41:                                                                    jmp   n169_goto_β
.Lx181_42:                                                                    jmp   n168_match_lit_β
n167_match_alternate_as:                                                      jmp   proc_PAT$5_γ
n167_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n167_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx181_19:              add              rsp, 32;                             jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n168_match_lit_α:                                                             jmp   n167_match_alternate_s2
n168_match_lit_β:                                                             jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n169_goto_α:                                                                  jmp   n167_match_alternate_af
n169_goto_β:                                                                  jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n170_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n167_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n167_match_alternate_af
                        add              r14d, 1;                             jmp   n171_match_assign_save_α
n170_match_lit_β:       sub              r14d, 1;                             jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n171_match_assign_save_α: lea              rdi, [rsp + 176]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n172_match_defer_α
n171_match_assign_save_β: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n170_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n172_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx189_11
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx189_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx189_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx189_10
.Lx189_9:               xor              eax, eax
.Lx189_10:              lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx189_11:              test             rax, rax;                            jz    .Lx189_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx189_4]
                        lea              r11, [rip + .Lx189_5];               jmp   rax
.Lx189_4:                                                                     jmp   n173_match_assign_cond_α
.Lx189_5:                                                                     jmp   n171_match_assign_save_β
.Lx189_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
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
.Lx189_2:               test             rax, rax;                            je    .Lx189_3
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
                        lea              rcx, [rip + .Lx189_7]
                        lea              rdx, [rip + .Lx189_8];               jmp   rax
.Lx189_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx189_2
.Lx189_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx189_2
.Lx189_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n171_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx189_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n173_match_assign_cond_α
.Lx189_6:               add              rsp, 16;                             jmp   n171_match_assign_save_β
n172_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n173_match_assign_cond_α: lea              rdi, [rsp + 176]
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
                        lea              rcx, [rip + .S12]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n167_match_alternate_s1
n173_match_assign_cond_β: sub              r12, 24;                           jmp   n172_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n174_goto_α:                                                                  jmp   n167_match_alternate_af
n174_goto_β:                                                                  jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n175_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n167_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n167_match_alternate_af
                        add              r14d, 1;                             jmp   n176_match_assign_save_α
n175_match_lit_β:       sub              r14d, 1;                             jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n176_match_assign_save_α: lea              rdi, [rsp + 112]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n177_match_defer_α
n176_match_assign_save_β: lea              rdi, [rsp + 112]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n175_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n177_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx197_11
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx197_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx197_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx197_10
.Lx197_9:               xor              eax, eax
.Lx197_10:              lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx197_11:              test             rax, rax;                            jz    .Lx197_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx197_4]
                        lea              r11, [rip + .Lx197_5];               jmp   rax
.Lx197_4:                                                                     jmp   n178_match_assign_cond_α
.Lx197_5:                                                                     jmp   n176_match_assign_save_β
.Lx197_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
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
.Lx197_2:               test             rax, rax;                            je    .Lx197_3
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
                        lea              rcx, [rip + .Lx197_7]
                        lea              rdx, [rip + .Lx197_8];               jmp   rax
.Lx197_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx197_2
.Lx197_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx197_2
.Lx197_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n176_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx197_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n178_match_assign_cond_α
.Lx197_6:               add              rsp, 16;                             jmp   n176_match_assign_save_β
n177_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n178_match_assign_cond_α: lea              rdi, [rsp + 112]
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
                        lea              rcx, [rip + .S13]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n167_match_alternate_s0
n178_match_assign_cond_β: sub              r12, 24;                           jmp   n177_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                              jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
proc_PAT$6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_call_α
.Lx204_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd75:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd75]
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
                        cmp              eax, 104;                            jne   .Lx205_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$6_ω
.Lx205_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_match_value_α
n201_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_match_value_α:     lea              rdi, [rsp + 0]
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
                        test             rax, rax;                            jz    .Lx206_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx206_4]
                        lea              rdx, [rip + .Lx206_5];               jmp   rax
.Lx206_4:                                                                     jmp   n203_match_fence1_α
.Lx206_5:                                                                     jmp   proc_PAT$6_ω
.Lx206_0:               lea              rdi, [rsp + 0]
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
                        test             eax, eax;                            js    proc_PAT$6_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx206_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n203_match_fence1_α
.Lx206_6:               add              rsp, 16;                             jmp   proc_PAT$6_ω
n202_match_value_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n203_match_fence1_α:                                                          jmp   proc_PAT$6_γ
n203_match_fence1_β:                                                          jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                              jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
proc_PAT$7_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n209_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   proc_PAT$7_ω
                                                                              jmp   n210_match_arbno_α
n209_match_pos_β:                                                             jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n210_match_arbno_α:     lea              rdi, [rip + .S15]
                        call             rt_bomb@PLT
                        ud2
n210_match_arbno_β:     lea              rdi, [rip + .S14]
                        call             rt_bomb@PLT
                        ud2
n210_match_arbno_as:
n210_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n211_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n210_match_arbno_β
                                                                              jmp   proc_PAT$7_γ
#-----------------------------------------------------------------------------------------------------------------------
n212_match_defer_α:     mov              rax, qword ptr [r9 + 592]                      # PAT$7$V0
                        mov              rdx, qword ptr [r9 + 600]
                        cmp              eax, 8;                              jne   .Lx221_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx221_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx221_10
.Lx221_9:               xor              eax, eax
.Lx221_10:              test             rax, rax;                            jz    .Lx221_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx221_4]
                        lea              r11, [rip + .Lx221_5];               jmp   rax
.Lx221_4:                                                                     jmp   n213_match_defer_α
.Lx221_5:                                                                     jmp   n210_match_arbno_af
.Lx221_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S16]
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
.Lx221_2:               test             rax, rax;                            je    .Lx221_3
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
                        lea              rcx, [rip + .Lx221_7]
                        lea              rdx, [rip + .Lx221_8];               jmp   rax
.Lx221_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx221_2
.Lx221_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx221_2
.Lx221_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n210_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx221_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n213_match_defer_α
.Lx221_6:               add              rsp, 16;                             jmp   n210_match_arbno_af
n212_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n213_match_defer_α:     mov              rax, qword ptr [r9 + 608]                      # PAT$7$V1
                        mov              rdx, qword ptr [r9 + 616]
                        cmp              eax, 8;                              jne   .Lx222_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx222_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx222_10
.Lx222_9:               xor              eax, eax
.Lx222_10:              test             rax, rax;                            jz    .Lx222_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx222_4]
                        lea              r11, [rip + .Lx222_5];               jmp   rax
.Lx222_4:                                                                     jmp   n214_match_assign_save_α
.Lx222_5:                                                                     jmp   n210_match_arbno_af
.Lx222_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S17]
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
.Lx222_2:               test             rax, rax;                            je    .Lx222_3
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
                        lea              rcx, [rip + .Lx222_7]
                        lea              rdx, [rip + .Lx222_8];               jmp   rax
.Lx222_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx222_2
.Lx222_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx222_2
.Lx222_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n210_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx222_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n214_match_assign_save_α
.Lx222_6:               add              rsp, 16;                             jmp   n210_match_arbno_af
n213_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n214_match_assign_save_α: lea              rdi, [rsp + 176]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n215_match_defer_α
n214_match_assign_save_β: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n210_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n215_match_defer_α:     mov              rax, qword ptr [r9 + 624]                      # PAT$7$V2
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                              jne   .Lx225_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx225_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx225_10
.Lx225_9:               xor              eax, eax
.Lx225_10:              test             rax, rax;                            jz    .Lx225_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx225_4]
                        lea              r11, [rip + .Lx225_5];               jmp   rax
.Lx225_4:                                                                     jmp   n216_match_assign_cond_α
.Lx225_5:                                                                     jmp   n214_match_assign_save_β
.Lx225_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]
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
.Lx225_2:               test             rax, rax;                            je    .Lx225_3
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
                        lea              rcx, [rip + .Lx225_7]
                        lea              rdx, [rip + .Lx225_8];               jmp   rax
.Lx225_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx225_2
.Lx225_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx225_2
.Lx225_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n214_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx225_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n216_match_assign_cond_α
.Lx225_6:               add              rsp, 16;                             jmp   n214_match_assign_save_β
n215_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n216_match_assign_cond_α: lea              rdi, [rsp + 176]
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
                        lea              rcx, [rip + .S19]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n210_match_arbno_as
n216_match_assign_cond_β: sub              r12, 24;                           jmp   n215_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                              jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                                                                              jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__EMIT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + EMIT_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__PSH"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + PSH_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__DRF"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + DRF_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + ADD_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__SUB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + SUB_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__MUL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + MUL_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "LBL__DIV"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + DIV_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__NEG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + NEG_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "PAT$7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname23]
                        lea              rsi, [rip + proc_PAT$7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "EMIT"
.Lgvan1:                .string          "PSH"
.Lgvan2:                .string          "DRF"
.Lgvan3:                .string          "nm"
.Lgvan4:                .string          "ADD"
.Lgvan5:                .string          "p1"
.Lgvan6:                .string          "SUB"
.Lgvan7:                .string          "MUL"
.Lgvan8:                .string          "DIV"
.Lgvan9:                .string          "NEG"
.Lgvan10:               .string          "S"
.Lgvan11:               .string          "sp"
.Lgvan12:               .string          "dm"
.Lgvan13:               .string          "vars"
.Lgvan14:               .string          "LCASE"
.Lgvan15:               .string          "DIGITS"
.Lgvan16:               .string          "V"
.Lgvan17:               .string          "I"
.Lgvan18:               .string          "A"
.Lgvan19:               .string          "F"
.Lgvan20:               .string          "T"
.Lgvan21:               .string          "X"
.Lgvan22:               .string          "eol"
.Lgvan23:               .string          "C"
.Lgvan24:               .string          "epsilon"
.Lgvan25:               .string          "nl"
.Lgvan26:               .string          "line"
.Lgvan27:               .string          "b1"
.Lgvan28:               .string          "b2"
.Lgvan29:               .string          "src"
.Lgvan30:               .string          "t0"
.Lgvan31:               .string          "t1"
.Lgvan32:               .string          "PAT$2$V0"
.Lgvan33:               .string          "PAT$2$V1"
.Lgvan34:               .string          "PAT$3$V0"
.Lgvan35:               .string          "PAT$4$V0"
.Lgvan36:               .string          "PAT$5$V0"
.Lgvan37:               .string          "PAT$7$V0"
.Lgvan38:               .string          "PAT$7$V1"
.Lgvan39:               .string          "PAT$7$V2"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 40
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 40
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
#         DEFINE('EMIT()')                        :(EMIT_x)
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_begin_α:                                                       jmp   n229_func_activate_α
n228_statement_begin_β:                                                       jmp   n248_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n229_func_activate_α:   mov              rdi, qword ptr [rip + .Lx668_0]
                        mov              rsi, qword ptr [rip + .Lx668_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_EMIT_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n230_statement_end_α
n229_func_activate_β:                                                         jmp   n228_statement_begin_β
.Lx668_0:               .quad            .Lx668_0_s
.Lx668_0_s:             .string          "EMIT"
.Lx668_1:               .quad            .Lx668_1_s
.Lx668_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:                                                         jmp   n248_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
EMIT_body:                                                                    jmp   n232_var_α
n231_statement_begin_β:                                                       jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n234_subscript_α
n233_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
.Lx674_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n234_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx675_240
                        add              rsp, 16;                             jmp   n233_lit_integer_β
.Lx675_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_deref_α
n234_subscript_β:       add              rsp, 16;                             jmp   n233_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n235_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx676_240
                        add              rsp, 16;                             jmp   n234_subscript_β
.Lx676_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_call_α
n235_deref_β:           add              rsp, 16;                             jmp   n234_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx678_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx678_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx678_240
                        add              rsp, 16;                             jmp   n235_deref_β
.Lx678_240:                                                                   jmp   n237_assign_α
n236_call_β:                                                                  jmp   n235_deref_β
.Lx678_0:               .quad            .Lx678_0_s
.Lx678_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx679_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n238_statement_end_α
.Lx679_0:               .quad            .Lx679_0_s
.Lx679_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   add              rsp, 80;                             jmp   n239_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α:                                                       jmp   n240_lit_integer_α
n239_statement_begin_β:                                                       jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_assign_α
.Lx684_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n242_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   add              rsp, 16;                             jmp   n243_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α:                                                       jmp   n244_lit_string_α
n243_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_call_α
.Lx690_0:               .quad            .Lx690_0_s
.Lx690_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd692:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd692]
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
                        cmp              eax, 104;                            jne   .Lx691_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n243_statement_begin_β
.Lx691_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_assign_α
n245_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n243_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n247_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:                                                         jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α:                                                       jmp   n249_statement_end_α
n248_statement_begin_β:                                                       jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:                                                         jmp   n250_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α:                                                       jmp   n251_func_activate_α
n250_statement_begin_β:                                                       jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n251_func_activate_α:   mov              rdi, qword ptr [rip + .Lx703_0]
                        mov              rsi, qword ptr [rip + .Lx703_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_PSH_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n252_statement_end_α
n251_func_activate_β:                                                         jmp   n250_statement_begin_β
.Lx703_0:               .quad            .Lx703_0_s
.Lx703_0_s:             .string          "PSH"
.Lx703_1:               .quad            .Lx703_1_s
.Lx703_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:                                                         jmp   n265_statement_begin_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
PSH_body:                                                                     jmp   n254_var_α
n253_statement_begin_β:                                                       jmp   n259_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_binop_α
n255_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n253_statement_begin_β
.Lx709_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n256_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx710_240
                        add              rsp, 16;                             jmp   n255_lit_integer_β
.Lx710_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n257_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n258_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   add              rsp, 48;                             jmp   n259_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α:                                                       jmp   n260_var_α
n259_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_subscript_α
n261_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n262_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx718_240
                        add              rsp, 16;                             jmp   n261_var_β
.Lx718_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:          mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n264_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:   add              rsp, 48;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α:                                                       jmp   n266_statement_end_α
n265_statement_begin_β:                                                       jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:                                                         jmp   n267_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α:                                                       jmp   n268_func_activate_α
n267_statement_begin_β:                                                       jmp   n289_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_func_activate_α:   mov              rdi, qword ptr [rip + .Lx729_0]
                        mov              rsi, qword ptr [rip + .Lx729_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_DRF_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n269_statement_end_α
n268_func_activate_β:                                                         jmp   n267_statement_begin_β
.Lx729_0:               .quad            .Lx729_0_s
.Lx729_0_s:             .string          "DRF"
.Lx729_1:               .quad            .Lx729_1_s
.Lx729_1_s:             .string          "nm"
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_end_α:                                                         jmp   n289_statement_begin_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
DRF_body:                                                                     jmp   n271_var_α
n270_statement_begin_β:                                                       jmp   n285_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n272_match_begin_α:     mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
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
.Lx736_0:               mov              r14d, dword ptr [rsp + 0];           jmp   n273_match_pos_α
n272_match_begin_β:     mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jg    .Lx736_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx736_1
                                                                              jmp   .Lx736_0
.Lx736_1:
n272_match_begin_af:    sub              r12, 24                                        # cas_mark
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
                        add              rsp, 16;                             jmp   n285_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   n272_match_begin_β
                                                                              jmp   n274_match_any_α
n273_match_pos_β:                                                             jmp   n272_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n274_match_any_α:       mov              eax, r14d
                        cmp              eax, r15d;                           jge   n272_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n272_match_begin_β
                        add              r14d, 1;                             jmp   n275_match_rpos_α
n274_match_any_β:       sub              r14d, 1;                             jmp   n272_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n275_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n274_match_any_β
                                                                              jmp   n276_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n276_match_end_α:       mov              r8, r12
.Lx742_9:               sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                            jne   .Lx742_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx742_5:               sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                            jne   .Lx742_5
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
.Lx742_1:               test             rax, rax;                            je    .Lx742_2
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
                        lea              rcx, [rip + .Lx742_3]
                        lea              rdx, [rip + .Lx742_4];               jmp   rax
.Lx742_3:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx742_1
.Lx742_4:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx742_1
.Lx742_2:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
.Lx742_10:              sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                            jne   .Lx742_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n277_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_end_α:   add              rsp, 80;                             jmp   n278_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_begin_α:                                                       jmp   n279_var_α
n278_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_var_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_subscript_α
n280_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n278_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n281_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx749_240
                        add              rsp, 16;                             jmp   n280_var_β
.Lx749_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_deref_α
n281_subscript_β:       add              rsp, 16;                             jmp   n280_var_β
#-----------------------------------------------------------------------------------------------------------------------
n282_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx750_240
                        add              rsp, 16;                             jmp   n281_subscript_β
.Lx750_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n284_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_begin_α:                                                       jmp   n286_var_α
n285_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n288_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_begin_α:                                                       jmp   n290_statement_end_α
n289_statement_begin_β:                                                       jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:                                                         jmp   n291_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_begin_α:                                                       jmp   n292_func_activate_α
n291_statement_begin_β:                                                       jmp   n326_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n292_func_activate_α:   mov              rdi, qword ptr [rip + .Lx767_0]
                        mov              rsi, qword ptr [rip + .Lx767_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_ADD_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n293_statement_end_α
n292_func_activate_β:                                                         jmp   n291_statement_begin_β
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "ADD"
.Lx767_1:               .quad            .Lx767_1_s
.Lx767_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_end_α:                                                         jmp   n326_statement_begin_α
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
ADD_body:                                                                     jmp   n295_var_α
n294_statement_begin_β:                                                       jmp   n302_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_subscript_α
n296_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n294_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx774_240
                        add              rsp, 16;                             jmp   n296_var_β
.Lx774_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_deref_α
n297_subscript_β:       add              rsp, 16;                             jmp   n296_var_β
#-----------------------------------------------------------------------------------------------------------------------
n298_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx775_240
                        add              rsp, 16;                             jmp   n297_subscript_β
.Lx775_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_call_α
n298_deref_β:           add              rsp, 16;                             jmp   n297_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx777_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx777_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx777_240
                        add              rsp, 16;                             jmp   n298_deref_β
.Lx777_240:                                                                   jmp   n300_assign_α
n299_call_β:                                                                  jmp   n298_deref_β
.Lx777_0:               .quad            .Lx777_0_s
.Lx777_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n301_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   add              rsp, 80;                             jmp   n302_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α:                                                       jmp   n303_var_α
n302_statement_begin_β:                                                       jmp   n308_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n305_binop_α
n304_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
.Lx784_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n305_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx785_240
                        add              rsp, 16;                             jmp   n304_lit_integer_β
.Lx785_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n306_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n307_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_end_α:   add              rsp, 48;                             jmp   n308_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_begin_α:                                                       jmp   n309_var_α
n308_statement_begin_β:                                                       jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_var_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_subscript_α
n310_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n308_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n311_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx793_240
                        add              rsp, 16;                             jmp   n310_var_β
.Lx793_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_var_α
n311_subscript_β:       add              rsp, 16;                             jmp   n310_var_β
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_var_α
n312_var_β:             add              rsp, 16;                             jmp   n311_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_subscript_α
n313_var_β:             add              rsp, 16;                             jmp   n312_var_β
#-----------------------------------------------------------------------------------------------------------------------
n314_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx796_240
                        add              rsp, 16;                             jmp   n313_var_β
.Lx796_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_deref_α
n314_subscript_β:       add              rsp, 16;                             jmp   n313_var_β
#-----------------------------------------------------------------------------------------------------------------------
n315_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx797_240
                        add              rsp, 16;                             jmp   n314_subscript_β
.Lx797_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_call_α
n315_deref_β:           add              rsp, 16;                             jmp   n314_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx799_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx799_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx799_240
                        add              rsp, 16;                             jmp   n315_deref_β
.Lx799_240:                                                                   jmp   n317_var_α
n316_call_β:                                                                  jmp   n315_deref_β
.Lx799_0:               .quad            .Lx799_0_s
.Lx799_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_binop_α
n317_var_β:             add              rsp, 32;                             jmp   n315_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n318_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx801_240
                        add              rsp, 16;                             jmp   n317_var_β
.Lx801_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n319_assign_var_α
n318_binop_β:           add              rsp, 16;                             jmp   n317_var_β
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
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
                        cmp              eax, 104;                            jne   .Lx802_240
                        add              rsp, 16;                             jmp   n318_binop_β
.Lx802_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 176;                            jmp   n321_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:                                                       jmp   n322_lit_string_α
n321_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_call_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd809:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd809]
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
                        cmp              eax, 104;                            jne   .Lx808_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
.Lx808_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_assign_α
n323_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n325_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_begin_α:                                                       jmp   n327_statement_end_α
n326_statement_begin_β:                                                       jmp   n328_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:                                                         jmp   n328_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α:                                                       jmp   n329_func_activate_α
n328_statement_begin_β:                                                       jmp   n363_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n329_func_activate_α:   mov              rdi, qword ptr [rip + .Lx820_0]
                        mov              rsi, qword ptr [rip + .Lx820_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_SUB_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n330_statement_end_α
n329_func_activate_β:                                                         jmp   n328_statement_begin_β
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "SUB"
.Lx820_1:               .quad            .Lx820_1_s
.Lx820_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:                                                         jmp   n363_statement_begin_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
SUB_body:                                                                     jmp   n332_var_α
n331_statement_begin_β:                                                       jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_subscript_α
n333_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n334_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx827_240
                        add              rsp, 16;                             jmp   n333_var_β
.Lx827_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_deref_α
n334_subscript_β:       add              rsp, 16;                             jmp   n333_var_β
#-----------------------------------------------------------------------------------------------------------------------
n335_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx828_240
                        add              rsp, 16;                             jmp   n334_subscript_β
.Lx828_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_call_α
n335_deref_β:           add              rsp, 16;                             jmp   n334_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx830_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx830_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx830_240
                        add              rsp, 16;                             jmp   n335_deref_β
.Lx830_240:                                                                   jmp   n337_assign_α
n336_call_β:                                                                  jmp   n335_deref_β
.Lx830_0:               .quad            .Lx830_0_s
.Lx830_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n338_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   add              rsp, 80;                             jmp   n339_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α:                                                       jmp   n340_var_α
n339_statement_begin_β:                                                       jmp   n345_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n342_binop_α
n341_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
.Lx837_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n342_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx838_240
                        add              rsp, 16;                             jmp   n341_lit_integer_β
.Lx838_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n343_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n344_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:   add              rsp, 48;                             jmp   n345_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_begin_α:                                                       jmp   n346_var_α
n345_statement_begin_β:                                                       jmp   n358_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_subscript_α
n347_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n345_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n348_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx846_240
                        add              rsp, 16;                             jmp   n347_var_β
.Lx846_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_var_α
n348_subscript_β:       add              rsp, 16;                             jmp   n347_var_β
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_var_α
n349_var_β:             add              rsp, 16;                             jmp   n348_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_subscript_α
n350_var_β:             add              rsp, 16;                             jmp   n349_var_β
#-----------------------------------------------------------------------------------------------------------------------
n351_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx849_240
                        add              rsp, 16;                             jmp   n350_var_β
.Lx849_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_deref_α
n351_subscript_β:       add              rsp, 16;                             jmp   n350_var_β
#-----------------------------------------------------------------------------------------------------------------------
n352_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx850_240
                        add              rsp, 16;                             jmp   n351_subscript_β
.Lx850_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_call_α
n352_deref_β:           add              rsp, 16;                             jmp   n351_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx852_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx852_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx852_240
                        add              rsp, 16;                             jmp   n352_deref_β
.Lx852_240:                                                                   jmp   n354_var_α
n353_call_β:                                                                  jmp   n352_deref_β
.Lx852_0:               .quad            .Lx852_0_s
.Lx852_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_binop_α
n354_var_β:             add              rsp, 32;                             jmp   n352_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n355_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx854_240
                        add              rsp, 16;                             jmp   n354_var_β
.Lx854_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n356_assign_var_α
n355_binop_β:           add              rsp, 16;                             jmp   n354_var_β
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
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
                        cmp              eax, 104;                            jne   .Lx855_240
                        add              rsp, 16;                             jmp   n355_binop_β
.Lx855_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   add              rsp, 176;                            jmp   n358_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_begin_α:                                                       jmp   n359_lit_string_α
n358_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_call_α
.Lx860_0:               .quad            .Lx860_0_s
.Lx860_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd862:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd862]
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
                        cmp              eax, 104;                            jne   .Lx861_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n358_statement_begin_β
.Lx861_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n361_assign_α
n360_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n358_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n361_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax                       # SUB
                        mov              qword ptr [r9 + 104], rdx;           jmp   n362_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_begin_α:                                                       jmp   n364_statement_end_α
n363_statement_begin_β:                                                       jmp   n365_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_end_α:                                                         jmp   n365_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_begin_α:                                                       jmp   n366_func_activate_α
n365_statement_begin_β:                                                       jmp   n400_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n366_func_activate_α:   mov              rdi, qword ptr [rip + .Lx873_0]
                        mov              rsi, qword ptr [rip + .Lx873_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_MUL_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n367_statement_end_α
n366_func_activate_β:                                                         jmp   n365_statement_begin_β
.Lx873_0:               .quad            .Lx873_0_s
.Lx873_0_s:             .string          "MUL"
.Lx873_1:               .quad            .Lx873_1_s
.Lx873_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_end_α:                                                         jmp   n400_statement_begin_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
MUL_body:                                                                     jmp   n369_var_α
n368_statement_begin_β:                                                       jmp   n376_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_var_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_subscript_α
n370_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n368_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n371_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx880_240
                        add              rsp, 16;                             jmp   n370_var_β
.Lx880_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_deref_α
n371_subscript_β:       add              rsp, 16;                             jmp   n370_var_β
#-----------------------------------------------------------------------------------------------------------------------
n372_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx881_240
                        add              rsp, 16;                             jmp   n371_subscript_β
.Lx881_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_call_α
n372_deref_β:           add              rsp, 16;                             jmp   n371_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx883_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx883_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx883_240
                        add              rsp, 16;                             jmp   n372_deref_β
.Lx883_240:                                                                   jmp   n374_assign_α
n373_call_β:                                                                  jmp   n372_deref_β
.Lx883_0:               .quad            .Lx883_0_s
.Lx883_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n375_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:   add              rsp, 80;                             jmp   n376_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_begin_α:                                                       jmp   n377_var_α
n376_statement_begin_β:                                                       jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n379_binop_α
n378_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
.Lx890_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n379_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx891_240
                        add              rsp, 16;                             jmp   n378_lit_integer_β
.Lx891_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n380_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n380_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n381_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_end_α:   add              rsp, 48;                             jmp   n382_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_begin_α:                                                       jmp   n383_var_α
n382_statement_begin_β:                                                       jmp   n395_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_subscript_α
n384_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n382_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx899_240
                        add              rsp, 16;                             jmp   n384_var_β
.Lx899_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_var_α
n385_subscript_β:       add              rsp, 16;                             jmp   n384_var_β
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_var_α
n386_var_β:             add              rsp, 16;                             jmp   n385_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_subscript_α
n387_var_β:             add              rsp, 16;                             jmp   n386_var_β
#-----------------------------------------------------------------------------------------------------------------------
n388_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx902_240
                        add              rsp, 16;                             jmp   n387_var_β
.Lx902_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_deref_α
n388_subscript_β:       add              rsp, 16;                             jmp   n387_var_β
#-----------------------------------------------------------------------------------------------------------------------
n389_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx903_240
                        add              rsp, 16;                             jmp   n388_subscript_β
.Lx903_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n390_call_α
n389_deref_β:           add              rsp, 16;                             jmp   n388_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx905_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx905_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx905_240
                        add              rsp, 16;                             jmp   n389_deref_β
.Lx905_240:                                                                   jmp   n391_var_α
n390_call_β:                                                                  jmp   n389_deref_β
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_binop_α
n391_var_β:             add              rsp, 32;                             jmp   n389_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n392_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx907_240
                        add              rsp, 16;                             jmp   n391_var_β
.Lx907_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n393_assign_var_α
n392_binop_β:           add              rsp, 16;                             jmp   n391_var_β
#-----------------------------------------------------------------------------------------------------------------------
n393_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
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
                        cmp              eax, 104;                            jne   .Lx908_240
                        add              rsp, 16;                             jmp   n392_binop_β
.Lx908_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:   add              rsp, 176;                            jmp   n395_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_begin_α:                                                       jmp   n396_lit_string_α
n395_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx913_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n397_call_α
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n397_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd915:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd915]
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
                        cmp              eax, 104;                            jne   .Lx914_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n395_statement_begin_β
.Lx914_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_assign_α
n397_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n395_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n398_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # MUL
                        mov              qword ptr [r9 + 120], rdx;           jmp   n399_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n399_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_begin_α:                                                       jmp   n401_statement_end_α
n400_statement_begin_β:                                                       jmp   n402_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_end_α:                                                         jmp   n402_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_begin_α:                                                       jmp   n403_func_activate_α
n402_statement_begin_β:                                                       jmp   n437_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n403_func_activate_α:   mov              rdi, qword ptr [rip + .Lx926_0]
                        mov              rsi, qword ptr [rip + .Lx926_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_DIV_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n404_statement_end_α
n403_func_activate_β:                                                         jmp   n402_statement_begin_β
.Lx926_0:               .quad            .Lx926_0_s
.Lx926_0_s:             .string          "DIV"
.Lx926_1:               .quad            .Lx926_1_s
.Lx926_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n404_statement_end_α:                                                         jmp   n437_statement_begin_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
DIV_body:                                                                     jmp   n406_var_α
n405_statement_begin_β:                                                       jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_subscript_α
n407_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n405_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n408_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx933_240
                        add              rsp, 16;                             jmp   n407_var_β
.Lx933_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_deref_α
n408_subscript_β:       add              rsp, 16;                             jmp   n407_var_β
#-----------------------------------------------------------------------------------------------------------------------
n409_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx934_240
                        add              rsp, 16;                             jmp   n408_subscript_β
.Lx934_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_call_α
n409_deref_β:           add              rsp, 16;                             jmp   n408_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n410_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx936_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx936_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx936_240
                        add              rsp, 16;                             jmp   n409_deref_β
.Lx936_240:                                                                   jmp   n411_assign_α
n410_call_β:                                                                  jmp   n409_deref_β
.Lx936_0:               .quad            .Lx936_0_s
.Lx936_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n412_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:   add              rsp, 80;                             jmp   n413_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α:                                                       jmp   n414_var_α
n413_statement_begin_β:                                                       jmp   n419_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n416_binop_α
n415_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n413_statement_begin_β
.Lx943_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx944_240
                        add              rsp, 16;                             jmp   n415_lit_integer_β
.Lx944_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n417_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n418_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_end_α:   add              rsp, 48;                             jmp   n419_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n419_statement_begin_α:                                                       jmp   n420_var_α
n419_statement_begin_β:                                                       jmp   n432_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_var_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_subscript_α
n421_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n419_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n422_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx952_240
                        add              rsp, 16;                             jmp   n421_var_β
.Lx952_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_var_α
n422_subscript_β:       add              rsp, 16;                             jmp   n421_var_β
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_var_α
n423_var_β:             add              rsp, 16;                             jmp   n422_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n425_subscript_α
n424_var_β:             add              rsp, 16;                             jmp   n423_var_β
#-----------------------------------------------------------------------------------------------------------------------
n425_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx955_240
                        add              rsp, 16;                             jmp   n424_var_β
.Lx955_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_deref_α
n425_subscript_β:       add              rsp, 16;                             jmp   n424_var_β
#-----------------------------------------------------------------------------------------------------------------------
n426_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx956_240
                        add              rsp, 16;                             jmp   n425_subscript_β
.Lx956_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n427_call_α
n426_deref_β:           add              rsp, 16;                             jmp   n425_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n427_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx958_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx958_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx958_240
                        add              rsp, 16;                             jmp   n426_deref_β
.Lx958_240:                                                                   jmp   n428_var_α
n427_call_β:                                                                  jmp   n426_deref_β
.Lx958_0:               .quad            .Lx958_0_s
.Lx958_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_binop_α
n428_var_β:             add              rsp, 32;                             jmp   n426_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n429_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx960_240
                        add              rsp, 16;                             jmp   n428_var_β
.Lx960_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n430_assign_var_α
n429_binop_β:           add              rsp, 16;                             jmp   n428_var_β
#-----------------------------------------------------------------------------------------------------------------------
n430_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
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
                        cmp              eax, 104;                            jne   .Lx961_240
                        add              rsp, 16;                             jmp   n429_binop_β
.Lx961_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_end_α:   add              rsp, 176;                            jmp   n432_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_begin_α:                                                       jmp   n433_lit_string_α
n432_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n434_call_α
.Lx966_0:               .quad            .Lx966_0_s
.Lx966_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd968:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd968]
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
                        cmp              eax, 104;                            jne   .Lx967_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n432_statement_begin_β
.Lx967_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n435_assign_α
n434_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n432_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n435_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax                      # DIV
                        mov              qword ptr [r9 + 136], rdx;           jmp   n436_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n436_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n437_statement_begin_α:                                                       jmp   n438_statement_end_α
n437_statement_begin_β:                                                       jmp   n439_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_end_α:                                                         jmp   n439_statement_begin_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(NEG_x)
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_begin_α:                                                       jmp   n440_func_activate_α
n439_statement_begin_β:                                                       jmp   n459_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n440_func_activate_α:   mov              rdi, qword ptr [rip + .Lx979_0]
                        mov              rsi, qword ptr [rip + .Lx979_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_NEG_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n441_statement_end_α
n440_func_activate_β:                                                         jmp   n439_statement_begin_β
.Lx979_0:               .quad            .Lx979_0_s
.Lx979_0_s:             .string          "NEG"
.Lx979_1:               .quad            .Lx979_1_s
.Lx979_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_end_α:                                                         jmp   n459_statement_begin_α
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
NEG_body:                                                                     jmp   n443_var_α
n442_statement_begin_β:                                                       jmp   n454_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_var_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_subscript_α
n444_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n442_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n445_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx986_240
                        add              rsp, 16;                             jmp   n444_var_β
.Lx986_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_var_α
n445_subscript_β:       add              rsp, 16;                             jmp   n444_var_β
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_var_α
n446_var_β:             add              rsp, 16;                             jmp   n445_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n448_subscript_α
n447_var_β:             add              rsp, 16;                             jmp   n446_var_β
#-----------------------------------------------------------------------------------------------------------------------
n448_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx989_240
                        add              rsp, 16;                             jmp   n447_var_β
.Lx989_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_deref_α
n448_subscript_β:       add              rsp, 16;                             jmp   n447_var_β
#-----------------------------------------------------------------------------------------------------------------------
n449_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx990_240
                        add              rsp, 16;                             jmp   n448_subscript_β
.Lx990_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_call_α
n449_deref_β:           add              rsp, 16;                             jmp   n448_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n450_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx992_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lx992_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx992_240
                        add              rsp, 16;                             jmp   n449_deref_β
.Lx992_240:                                                                   jmp   n451_unop_α
n450_call_β:                                                                  jmp   n449_deref_β
.Lx992_0:               .quad            .Lx992_0_s
.Lx992_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n451_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_num_neg@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_assign_var_α
n451_unop_β:            add              rsp, 32;                             jmp   n449_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n452_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]                      # unop
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
                        cmp              eax, 104;                            jne   .Lx994_240
                        add              rsp, 16;                             jmp   n451_unop_β
.Lx994_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n453_statement_end_α:   add              rsp, 160;                            jmp   n454_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n454_statement_begin_α:                                                       jmp   n455_lit_string_α
n454_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n456_call_α
.Lx999_0:               .quad            .Lx999_0_s
.Lx999_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n456_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1001:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1001]
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
                        cmp              eax, 104;                            jne   .Lx1000_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n454_statement_begin_β
.Lx1000_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n457_assign_α
n456_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n454_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n457_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax                      # NEG
                        mov              qword ptr [r9 + 152], rdx;           jmp   n458_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n458_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n459_statement_begin_α:                                                       jmp   n460_statement_end_α
n459_statement_begin_β:                                                       jmp   n461_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:                                                         jmp   n461_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_begin_α:                                                       jmp   n462_lit_integer_α
n461_statement_begin_β:                                                       jmp   n466_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1011_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_call_α
.Lx1011_0:              .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n463_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1013:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1013]
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
                        cmp              eax, 104;                            jne   .Lx1012_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n461_statement_begin_β
.Lx1012_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n464_assign_α
n463_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n461_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n464_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax                      # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n465_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n465_statement_end_α:   add              rsp, 32;                             jmp   n466_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_begin_α:                                                       jmp   n467_keyword_snobol4_α
n466_statement_begin_β:                                                       jmp   n470_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n467_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1019_0]
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n468_assign_α
.Lx1019_0:              .quad            .Lx1019_0_s
.Lx1019_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n468_assign_α:          mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax                      # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n469_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n469_statement_end_α:   add              rsp, 16;                             jmp   n470_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_begin_α:                                                       jmp   n471_lit_string_α
n470_statement_begin_β:                                                       jmp   n474_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n472_assign_α
.Lx1025_0:              .quad            .Lx1025_0_s
.Lx1025_0_s:            .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n472_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax                      # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n473_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_end_α:   add              rsp, 16;                             jmp   n474_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_begin_α:                                                       jmp   n475_lit_string_α
n474_statement_begin_β:                                                       jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1031_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n476_call_α
.Lx1031_0:              .quad            .Lx1031_0_s
.Lx1031_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n476_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1033:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1033]
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
                        cmp              eax, 104;                            jne   .Lx1032_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n474_statement_begin_β
.Lx1032_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n477_assign_α
n476_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n474_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n477_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax                      # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n478_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   add              rsp, 32;                             jmp   n479_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_begin_α:                                                       jmp   n480_lit_string_α
n479_statement_begin_β:                                                       jmp   n484_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_call_α
.Lx1039_0:              .quad            .Lx1039_0_s
.Lx1039_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n481_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1041:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1041]
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
                        cmp              eax, 104;                            jne   .Lx1040_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
.Lx1040_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_assign_α
n481_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n482_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax                      # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n483_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:   add              rsp, 32;                             jmp   n484_statement_begin_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_begin_α:                                                       jmp   n485_var_α
n484_statement_begin_β:                                                       jmp   n493_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]                      # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n486_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax                      # PAT$2$V1
                        mov              qword ptr [r9 + 536], rdx;           jmp   n487_var_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]                      # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_assign_α
n487_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n488_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax                      # PAT$2$V0
                        mov              qword ptr [r9 + 520], rdx;           jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1051_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n490_call_α
n489_lit_string_β:      add              rsp, 16;                             jmp   n487_var_β
.Lx1051_0:              .quad            .Lx1051_0_s
.Lx1051_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n490_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1053:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1053]
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
                        cmp              eax, 104;                            jne   .Lx1052_240
                        add              rsp, 16;                             jmp   n489_lit_string_β
.Lx1052_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_assign_α
n490_call_β:            add              rsp, 16;                             jmp   n489_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n491_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax                      # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n492_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:   add              rsp, 64;                             jmp   n493_statement_begin_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_begin_α:                                                       jmp   n494_var_α
n493_statement_begin_β:                                                       jmp   n500_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]                      # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n495_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n495_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax                      # PAT$3$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n496_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1061_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n497_call_α
n496_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n493_statement_begin_β
.Lx1061_0:              .quad            .Lx1061_0_s
.Lx1061_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n497_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1063:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1063]
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
                        cmp              eax, 104;                            jne   .Lx1062_240
                        add              rsp, 16;                             jmp   n496_lit_string_β
.Lx1062_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n498_assign_α
n497_call_β:            add              rsp, 16;                             jmp   n496_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n498_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax                      # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n499_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n499_statement_end_α:   add              rsp, 48;                             jmp   n500_statement_begin_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_begin_α:                                                       jmp   n501_var_α
n500_statement_begin_β:                                                       jmp   n507_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n502_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n502_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # PAT$4$V0
                        mov              qword ptr [r9 + 568], rdx;           jmp   n503_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n504_call_α
n503_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n500_statement_begin_β
.Lx1071_0:              .quad            .Lx1071_0_s
.Lx1071_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n504_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1073:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1073]
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
                        cmp              eax, 104;                            jne   .Lx1072_240
                        add              rsp, 16;                             jmp   n503_lit_string_β
.Lx1072_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n505_assign_α
n504_call_β:            add              rsp, 16;                             jmp   n503_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n505_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax                      # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n506_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_end_α:   add              rsp, 48;                             jmp   n507_statement_begin_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n507_statement_begin_α:                                                       jmp   n508_var_α
n507_statement_begin_β:                                                       jmp   n514_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n509_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n509_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax                      # PAT$5$V0
                        mov              qword ptr [r9 + 584], rdx;           jmp   n510_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n511_call_α
n510_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n507_statement_begin_β
.Lx1081_0:              .quad            .Lx1081_0_s
.Lx1081_0_s:            .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n511_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1083:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1083]
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
                        cmp              eax, 104;                            jne   .Lx1082_240
                        add              rsp, 16;                             jmp   n510_lit_string_β
.Lx1082_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n512_assign_α
n511_call_β:            add              rsp, 16;                             jmp   n510_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n512_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax                      # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n513_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n513_statement_end_α:   add              rsp, 48;                             jmp   n514_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n514_statement_begin_α:                                                       jmp   n515_lit_string_α
n514_statement_begin_β:                                                       jmp   n519_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n516_call_α
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1091:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1091]
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
                        cmp              eax, 104;                            jne   .Lx1090_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n514_statement_begin_β
.Lx1090_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n517_assign_α
n516_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n514_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n517_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax                      # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n518_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_end_α:   add              rsp, 32;                             jmp   n519_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n519_statement_begin_α:                                                       jmp   n520_var_α
n519_statement_begin_β:                                                       jmp   n530_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n521_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax                      # PAT$7$V2
                        mov              qword ptr [r9 + 632], rdx;           jmp   n522_var_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]                      # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n523_assign_α
n522_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n519_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n523_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax                      # PAT$7$V1
                        mov              qword ptr [r9 + 616], rdx;           jmp   n524_var_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n525_assign_α
n524_var_β:             add              rsp, 16;                             jmp   n522_var_β
#-----------------------------------------------------------------------------------------------------------------------
n525_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax                      # PAT$7$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n526_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n527_call_α
n526_lit_string_β:      add              rsp, 16;                             jmp   n524_var_β
.Lx1103_0:              .quad            .Lx1103_0_s
.Lx1103_0_s:            .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n527_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1105:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1105]
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
                        cmp              eax, 104;                            jne   .Lx1104_240
                        add              rsp, 16;                             jmp   n526_lit_string_β
.Lx1104_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n528_assign_α
n527_call_β:            add              rsp, 16;                             jmp   n526_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n528_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax                      # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n529_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n529_statement_end_α:   add              rsp, 80;                             jmp   n530_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n530_statement_begin_α:                                                       jmp   n531_lit_string_α
n530_statement_begin_β:                                                       jmp   n535_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1111_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n532_lit_integer_α
.Lx1111_0:              .quad            .Lx1111_0_s
.Lx1111_0_s:            .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n533_call_α
n532_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n530_statement_begin_β
.Lx1112_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n533_call_α:            sub              rsp, 16
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
.Lrkfnzd1114:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1114]
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
                        cmp              eax, 104;                            jne   .Lx1113_240
                        add              rsp, 16;                             jmp   n532_lit_integer_β
.Lx1113_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n534_statement_end_α
n533_call_β:            add              rsp, 16;                             jmp   n532_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n534_statement_end_α:   add              rsp, 48;                             jmp   n535_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n535_statement_begin_α:                                                       jmp   n536_lit_integer_α
n535_statement_begin_β:                                                       jmp   n540_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n537_call_α
.Lx1119_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd395:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd395]
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
                        cmp              eax, 104;                            jne   .Lx1120_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n535_statement_begin_β
.Lx1120_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n538_assign_α
n537_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n535_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n538_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # nl
                        mov              qword ptr [r9 + 408], rdx;           jmp   n539_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n539_statement_end_α:   add              rsp, 32;                             jmp   n540_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n540_statement_begin_α:                                                       jmp   n541_call_α
n540_statement_begin_β:                                                       jmp   n544_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1127:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1127]
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
                        cmp              eax, 104;                            jne   .Lx1126_240
                        add              rsp, 16;                             jmp   n540_statement_begin_β
.Lx1126_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n542_assign_α
n541_call_β:            add              rsp, 16;                             jmp   n540_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n542_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax                      # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n543_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n543_statement_end_α:   add              rsp, 16;                             jmp   n544_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_begin_α:                                                       jmp   n545_var_α
n544_statement_begin_β:                                                       jmp   n551_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n546_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n547_subscript_α
n546_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n544_statement_begin_β
.Lx1134_0:              .quad            .Lx1134_0_s
.Lx1134_0_s:            .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n547_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx1135_240
                        add              rsp, 16;                             jmp   n546_lit_string_β
.Lx1135_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n548_lit_integer_α
n547_subscript_β:       add              rsp, 16;                             jmp   n546_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1136_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n549_assign_var_α
n548_lit_integer_β:     add              rsp, 16;                             jmp   n547_subscript_β
.Lx1136_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n549_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
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
                        cmp              eax, 104;                            jne   .Lx1137_240
                        add              rsp, 16;                             jmp   n548_lit_integer_β
.Lx1137_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n550_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_end_α:   add              rsp, 80;                             jmp   n551_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n551_statement_begin_α:                                                       jmp   n552_var_α
n551_statement_begin_β:                                                       jmp   n558_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n553_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n554_subscript_α
n553_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n551_statement_begin_β
.Lx1143_0:              .quad            .Lx1143_0_s
.Lx1143_0_s:            .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n554_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx1144_240
                        add              rsp, 16;                             jmp   n553_lit_string_β
.Lx1144_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n555_lit_integer_α
n554_subscript_β:       add              rsp, 16;                             jmp   n553_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n556_assign_var_α
n555_lit_integer_β:     add              rsp, 16;                             jmp   n554_subscript_β
.Lx1145_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n556_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
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
                        cmp              eax, 104;                            jne   .Lx1146_240
                        add              rsp, 16;                             jmp   n555_lit_integer_β
.Lx1146_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n557_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_end_α:   add              rsp, 80;                             jmp   n558_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n558_statement_begin_α:                                                       jmp   n559_var_α
n558_statement_begin_β:                                                       jmp   n565_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n560_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n561_subscript_α
n560_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n558_statement_begin_β
.Lx1152_0:              .quad            .Lx1152_0_s
.Lx1152_0_s:            .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n561_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                            jne   .Lx1153_240
                        add              rsp, 16;                             jmp   n560_lit_string_β
.Lx1153_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n562_lit_integer_α
n561_subscript_β:       add              rsp, 16;                             jmp   n560_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1154_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n563_assign_var_α
n562_lit_integer_β:     add              rsp, 16;                             jmp   n561_subscript_β
.Lx1154_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n563_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
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
                        cmp              eax, 104;                            jne   .Lx1155_240
                        add              rsp, 16;                             jmp   n562_lit_integer_β
.Lx1155_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n564_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n564_statement_end_α:   add              rsp, 80;                             jmp   n565_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n565_statement_begin_α:                                                       jmp   n566_var_α
n565_statement_begin_β:                                                       jmp   n613_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1160_0]
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
                        cmp              eax, 104;                            jne   .Lx1160_240
                        add              rsp, 16;                             jmp   n565_statement_begin_β
.Lx1160_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n567_assign_α
.Lx1160_0:              .quad            .Lx1160_0_s
.Lx1160_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n567_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax                      # line
                        mov              qword ptr [r9 + 424], rdx;           jmp   n568_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n568_statement_end_α:   add              rsp, 16;                             jmp   n569_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n569_statement_begin_α:                                                       jmp   n570_var_α
n569_statement_begin_β:                                                       jmp   n577_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n571_var_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]                      # line
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n572_binop_α
n571_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n569_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n572_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n573_var_α
n572_binop_β:           add              rsp, 16;                             jmp   n571_var_β
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # nl
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n574_binop_α
n573_var_β:             add              rsp, 16;                             jmp   n572_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n574_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n575_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n575_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax                      # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n576_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n576_statement_end_α:   add              rsp, 80;                             jmp   n577_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_begin_α:                                                       jmp   n578_var_α
n577_statement_begin_β:                                                       jmp   n565_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_call_α
#-----------------------------------------------------------------------------------------------------------------------
n579_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1178:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1178]
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
                        cmp              eax, 104;                            jne   .Lx1177_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n577_statement_begin_β
.Lx1177_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n580_lit_integer_α
n579_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n577_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n581_coerce_numeric_α
n580_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n577_statement_begin_β
.Lx1179_0:              .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n581_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5;                              je    .Lx1181_1
                        cmp              eax, 3;                              jne   .Lx1181_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3;                              jne   .Lx1181_0
.Lx1181_1:              mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n582_coerce_numeric_α
.Lx1181_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                                # lit_integer
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n582_coerce_numeric_α
n581_coerce_numeric_β:  add              rsp, 16;                             jmp   n580_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n582_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5;                              je    .Lx1183_1
                        cmp              eax, 3;                              jne   .Lx1183_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3;                              jne   .Lx1183_0
.Lx1183_1:              mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n583_cmp_test_α
.Lx1183_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                                # call
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n583_cmp_test_α
n582_coerce_numeric_β:  add              rsp, 16;                             jmp   n581_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n583_cmp_test_α:        sub              rsp, 16
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
                        test             eax, eax;                            jg    .Lx1185_240
                        add              rsp, 16;                             jmp   n582_coerce_numeric_β
.Lx1185_240:                                                                  jmp   n584_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_end_α:   add              rsp, 96;                             jmp   n585_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_begin_α:                                                       jmp   n586_var_α
n585_statement_begin_β:                                                       jmp   n591_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n586_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n587_var_α
#-----------------------------------------------------------------------------------------------------------------------
n587_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n588_binop_α
n587_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n585_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n588_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n589_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n589_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax                      # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n590_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n590_statement_end_α:   add              rsp, 48;                             jmp   n591_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n591_statement_begin_α:                                                       jmp   n592_lit_string_α
n591_statement_begin_β:                                                       jmp   n595_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n593_assign_α
.Lx1198_0:              .quad            .Lx1198_0_s
.Lx1198_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n593_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax                      # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n594_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n594_statement_end_α:   add              rsp, 16;                             jmp   n595_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n595_statement_begin_α:                                                       jmp   n596_var_α
n595_statement_begin_β:                                                       jmp   n565_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n596_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n597_call_α
#-----------------------------------------------------------------------------------------------------------------------
n597_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1206:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1206]
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
                        cmp              eax, 104;                            jne   .Lx1205_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n595_statement_begin_β
.Lx1205_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n598_lit_integer_α
n597_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n595_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n599_coerce_numeric_α
n598_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n595_statement_begin_β
.Lx1207_0:              .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n599_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5;                              je    .Lx1209_1
                        cmp              eax, 3;                              jne   .Lx1209_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3;                              jne   .Lx1209_0
.Lx1209_1:              mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n600_coerce_numeric_α
.Lx1209_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                                # lit_integer
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n600_coerce_numeric_α
n599_coerce_numeric_β:  add              rsp, 16;                             jmp   n598_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n600_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5;                              je    .Lx1211_1
                        cmp              eax, 3;                              jne   .Lx1211_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3;                              jne   .Lx1211_0
.Lx1211_1:              mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n601_cmp_test_α
.Lx1211_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                                # call
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n601_cmp_test_α
n600_coerce_numeric_β:  add              rsp, 16;                             jmp   n599_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n601_cmp_test_α:        sub              rsp, 16
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
                        test             eax, eax;                            jg    .Lx1213_240
                        add              rsp, 16;                             jmp   n600_coerce_numeric_β
.Lx1213_240:                                                                  jmp   n602_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n602_statement_end_α:   add              rsp, 96;                             jmp   n603_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n603_statement_begin_α:                                                       jmp   n604_var_α
n603_statement_begin_β:                                                       jmp   n609_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n605_var_α
#-----------------------------------------------------------------------------------------------------------------------
n605_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n606_binop_α
n605_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n603_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n606_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n607_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n607_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax                      # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n608_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n608_statement_end_α:   add              rsp, 48;                             jmp   n609_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n609_statement_begin_α:                                                       jmp   n610_lit_string_α
n609_statement_begin_β:                                                       jmp   n565_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n611_assign_α
.Lx1226_0:              .quad            .Lx1226_0_s
.Lx1226_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n611_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax                      # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n612_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n612_statement_end_α:   add              rsp, 16;                             jmp   n565_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n613_statement_begin_α:                                                       jmp   n614_var_α
n613_statement_begin_β:                                                       jmp   n621_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n615_var_α
#-----------------------------------------------------------------------------------------------------------------------
n615_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n616_binop_α
n615_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n613_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n616_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n617_var_α
n616_binop_β:           add              rsp, 16;                             jmp   n615_var_β
#-----------------------------------------------------------------------------------------------------------------------
n617_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n618_binop_α
n617_var_β:             add              rsp, 16;                             jmp   n616_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n618_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n619_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n619_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax                      # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n620_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_end_α:   add              rsp, 80;                             jmp   n621_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n621_statement_begin_α:                                                       jmp   n622_call_α
n621_statement_begin_β:                                                       jmp   n625_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n622_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1243:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1243]
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
                        cmp              eax, 104;                            jne   .Lx1242_240
                        add              rsp, 16;                             jmp   n621_statement_begin_β
.Lx1242_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n623_assign_α
n622_call_β:            add              rsp, 16;                             jmp   n621_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n623_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax                      # t0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n624_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n624_statement_end_α:   add              rsp, 16;                             jmp   n625_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n625_statement_begin_α:                                                       jmp   n626_var_α
n625_statement_begin_β:                                                       jmp   n645_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n626_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n627_var_α
#-----------------------------------------------------------------------------------------------------------------------
n627_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n628_assign_α
n627_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n645_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n628_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1251_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n629_match_begin_α
n628_assign_β:                                                                jmp   n627_var_β
.Lx1251_0:              .quad            .Lx1251_0_s
.Lx1251_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n629_match_begin_α:     mov              rdi, qword ptr [rsp + 16]                      # var
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
.Lx1253_0:              mov              r14d, dword ptr [rsp + 0];           jmp   n630_match_defer_α
n629_match_begin_β:     add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jg    .Lx1253_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1253_1
                                                                              jmp   .Lx1253_0
.Lx1253_1:
n629_match_begin_af:    sub              r12, 24                                        # cas_mark
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
                        add              rsp, 64;                             jmp   n628_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n630_match_defer_α:     lea              rdi, [rip + .S20]
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
                        test             rax, rax;                            jz    .Lx1254_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1254_4]
                        lea              r11, [rip + .Lx1254_5];              jmp   rax
.Lx1254_4:                                                                    jmp   n631_match_end_α
.Lx1254_5:                                                                    jmp   n629_match_begin_β
.Lx1254_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S20]
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
.Lx1254_2:              test             rax, rax;                            je    .Lx1254_3
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
                        lea              rcx, [rip + .Lx1254_7]
                        lea              rdx, [rip + .Lx1254_8];              jmp   rax
.Lx1254_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx1254_2
.Lx1254_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx1254_2
.Lx1254_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n629_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1254_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n631_match_end_α
.Lx1254_6:              add              rsp, 16;                             jmp   n629_match_begin_β
n630_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n631_match_end_α:       mov              r8, r12
.Lx1256_9:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                            jne   .Lx1256_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx1256_5:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                            jne   .Lx1256_5
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
.Lx1256_1:              test             rax, rax;                            je    .Lx1256_2
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
                        lea              rcx, [rip + .Lx1256_3]
                        lea              rdx, [rip + .Lx1256_4];              jmp   rax
.Lx1256_3:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx1256_1
.Lx1256_4:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   .Lx1256_1
.Lx1256_2:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
.Lx1256_10:             sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                            jne   .Lx1256_10
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n632_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n632_statement_end_α:   add              rsp, 96;                             jmp   n633_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_begin_α:                                                       jmp   n634_call_α
n633_statement_begin_β:                                                       jmp   n637_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n634_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1262:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1262]
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
                        cmp              eax, 104;                            jne   .Lx1261_240
                        add              rsp, 16;                             jmp   n633_statement_begin_β
.Lx1261_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n635_assign_α
n634_call_β:            add              rsp, 16;                             jmp   n633_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n635_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n636_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n636_statement_end_α:   add              rsp, 16;                             jmp   n637_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n637_statement_begin_α:                                                       jmp   n638_lit_string_α
n637_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1268_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n639_var_α
.Lx1268_0:              .quad            .Lx1268_0_s
.Lx1268_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n639_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n640_var_α
n639_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n637_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n641_binop_α
n640_var_β:             add              rsp, 16;                             jmp   n639_var_β
#-----------------------------------------------------------------------------------------------------------------------
n641_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1271_240
                        add              rsp, 16;                             jmp   n640_var_β
.Lx1271_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n642_binop_α
n641_binop_β:           add              rsp, 16;                             jmp   n640_var_β
#-----------------------------------------------------------------------------------------------------------------------
n642_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n643_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n643_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1273_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n644_statement_end_α
.Lx1273_0:              .quad            .Lx1273_0_s
.Lx1273_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n644_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n645_statement_begin_α:                                                       jmp   n646_call_α
n645_statement_begin_β:                                                       jmp   n649_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n646_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1279:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1279]
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
                        cmp              eax, 104;                            jne   .Lx1278_240
                        add              rsp, 16;                             jmp   n645_statement_begin_β
.Lx1278_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n647_assign_α
n646_call_β:            add              rsp, 16;                             jmp   n645_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n647_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n648_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n648_statement_end_α:   add              rsp, 16;                             jmp   n649_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n649_statement_begin_α:                                                       jmp   n650_lit_string_α
n649_statement_begin_β:                                                       jmp   n653_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1285_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n651_assign_α
.Lx1285_0:              .quad            .Lx1285_0_s
.Lx1285_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n651_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1286_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n652_statement_end_α
.Lx1286_0:              .quad            .Lx1286_0_s
.Lx1286_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n652_statement_end_α:   add              rsp, 16;                             jmp   n653_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n653_statement_begin_α:                                                       jmp   n654_lit_string_α
n653_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n655_var_α
.Lx1291_0:              .quad            .Lx1291_0_s
.Lx1291_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n655_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n656_var_α
n655_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n653_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n656_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n657_binop_α
n656_var_β:             add              rsp, 16;                             jmp   n655_var_β
#-----------------------------------------------------------------------------------------------------------------------
n657_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1294_240
                        add              rsp, 16;                             jmp   n656_var_β
.Lx1294_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n658_binop_α
n657_binop_β:           add              rsp, 16;                             jmp   n656_var_β
#-----------------------------------------------------------------------------------------------------------------------
n658_binop_α:           sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64];          jmp   n659_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n659_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1296_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64];          jmp   n660_statement_end_α
.Lx1296_0:              .quad            .Lx1296_0_s
.Lx1296_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 lea              rdi, [rip + .S21]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                lea              rdi, [rip + .S22]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1303_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n664_call_α
.Lx1303_0:              .quad            .Lx1303_0_s
.Lx1303_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n664_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1305:           .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1305]
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
                        cmp              eax, 104;                            jne   .Lx1304_240
                        add              rsp, 16
                        add              rsp, 48;                             jmp   FRETURN
.Lx1304_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   RETURN
n664_call_β:            add              rsp, 16
                        add              rsp, 48;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "*NEG"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "T"
.S9:                    .string          "*DIV"
.S10:                   .string          "*MUL"
.S11:                   .string          "PAT$5$V0"
.S12:                   .string          "*SUB"
.S13:                   .string          "*ADD"
.S14:                   .string          "IR_MATCH_ARBNO: unreachable beta (defer-unsafe decline)"
.S15:                   .string          "IR_MATCH_ARBNO: body contains a suspend-capable DEFER (pat_static=0) -- anchor-relative slot not yet implemented (W-4)"
.S16:                   .string          "PAT$7$V0"
.S17:                   .string          "PAT$7$V1"
.S18:                   .string          "PAT$7$V2"
.S19:                   .string          "*EMIT"
.S20:                   .string          "PATV$0"
.S21:                   .string          "BOMB-RETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
.S22:                   .string          "BOMB-FRETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
