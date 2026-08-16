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
EMIT_alpha:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + EMIT_gamma]
                        lea              r11, [rip + EMIT_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + EMIT_body];              jmp   rax
EMIT_gamma:             mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
EMIT_omega:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
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
PSH_alpha:              sub              rsp, 48
                        mov              rax, qword ptr [r9 + 16]             # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + PSH_gamma]
                        lea              r11, [rip + PSH_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + PSH_body];               jmp   rax
PSH_gamma:              mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
PSH_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
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
DRF_alpha:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx26_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx26_41
.Lx26_10:               mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx26_41:               lea              r10, [rip + DRF_gamma]
                        lea              r11, [rip + DRF_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + DRF_body];               jmp   rax
DRF_gamma:              mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx26_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx26_110
.Lx26_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx26_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DRF_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx26_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx26_180
.Lx26_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx26_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
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
ADD_alpha:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 64]             # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx35_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx35_41
.Lx35_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx35_41:               lea              r10, [rip + ADD_gamma]
                        lea              r11, [rip + ADD_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + ADD_body];               jmp   rax
ADD_gamma:              mov              rdi, qword ptr [r9 + 64]             # ADD
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx35_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx35_110
.Lx35_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx35_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ADD_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx35_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx35_180
.Lx35_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx35_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
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
SUB_alpha:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 96]             # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx44_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx44_41
.Lx44_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx44_41:               lea              r10, [rip + SUB_gamma]
                        lea              r11, [rip + SUB_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + SUB_body];               jmp   rax
SUB_gamma:              mov              rdi, qword ptr [r9 + 96]             # SUB
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx44_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx44_110
.Lx44_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx44_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SUB_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax             # SUB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx44_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx44_180
.Lx44_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx44_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
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
MUL_alpha:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 112]            # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx53_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx53_41
.Lx53_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx53_41:               lea              r10, [rip + MUL_gamma]
                        lea              r11, [rip + MUL_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + MUL_body];               jmp   rax
MUL_gamma:              mov              rdi, qword ptr [r9 + 112]            # MUL
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rdx, 0;                              jbe   .Lx53_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx53_110
.Lx53_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx53_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
MUL_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax            # MUL
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rdx, 0;                              jbe   .Lx53_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx53_180
.Lx53_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx53_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
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
DIV_alpha:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 128]            # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx62_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx62_41
.Lx62_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx62_41:               lea              r10, [rip + DIV_gamma]
                        lea              r11, [rip + DIV_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + DIV_body];               jmp   rax
DIV_gamma:              mov              rdi, qword ptr [r9 + 128]            # DIV
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx62_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx62_110
.Lx62_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx62_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DIV_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # DIV
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx62_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx62_180
.Lx62_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx62_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
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
NEG_alpha:              sub              rsp, 48
                        mov              rax, qword ptr [r9 + 144]            # NEG
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + NEG_gamma]
                        lea              r11, [rip + NEG_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + NEG_body];               jmp   rax
NEG_gamma:              mov              rdi, qword ptr [r9 + 144]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
NEG_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n72_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n73_match_any_α
n72_match_assign_save_β:
                        add              rsp, 16;                             jmp   proc_PAT$0_ω
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
n74_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n74_match_assign_cond_β:
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
n81_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n82_match_span_α
n81_match_assign_save_β:
                        add              rsp, 16;                             jmp   proc_PAT$1_ω
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
n83_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n83_match_assign_cond_β:
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
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 24
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
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
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx102_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx102_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx102_10
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_2:               test             rax, rax;                            je    .Lx102_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx102_7]
                        lea              rdx, [rip + .Lx102_8];               jmp   rax
.Lx102_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx102_2
.Lx102_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx102_2
.Lx102_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
n95_match_defer_α:      mov              rax, qword ptr [r9 + 528]            # PAT$2$V1
                        mov              rdx, qword ptr [r9 + 536]
                        cmp              eax, 8;                              jne   .Lx105_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx105_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx105_10
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx105_2:               test             rax, rax;                            je    .Lx105_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx105_7]
                        lea              rdx, [rip + .Lx105_8];               jmp   rax
.Lx105_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx105_2
.Lx105_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx105_2
.Lx105_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n90_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx105_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n90_match_alternate_s1
.Lx105_6:               add              rsp, 16;                             jmp   n90_match_alternate_af
n95_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n96_match_defer_α:      mov              rax, qword ptr [r9 + 512]            # PAT$2$V0
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              eax, 8;                              jne   .Lx106_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx106_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx106_10
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx106_2:               test             rax, rax;                            je    .Lx106_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx106_7]
                        lea              rdx, [rip + .Lx106_8];               jmp   rax
.Lx106_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx106_2
.Lx106_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx106_2
.Lx106_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                              jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
proc_PAT$3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n107_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx118_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n116_match_defer_α
.Lx118_21:              lea              rax, [rip + .Lx118_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n114_match_lit_α
.Lx118_22:              lea              rax, [rip + .Lx118_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n109_match_lit_α
n107_match_alternate_s0:
                        lea              rax, [rip + .Lx118_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
n107_match_alternate_s1:
                        lea              rax, [rip + .Lx118_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
n107_match_alternate_s2:
                        lea              rax, [rip + .Lx118_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
.Lx118_40:                                                                    jmp   n116_match_defer_β
.Lx118_41:                                                                    jmp   n113_goto_β
.Lx118_42:                                                                    jmp   n108_goto_β
n107_match_alternate_as:
                                                                              jmp   proc_PAT$3_γ
n107_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n107_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
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
n110_match_assign_save_α:
                        mov              dword ptr [rbp + -32], r14d;         jmp   n111_match_defer_α
n110_match_assign_save_β:
                                                                              jmp   n109_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n111_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx124_11
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx124_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx124_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx124_10
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx124_2:               test             rax, rax;                            je    .Lx124_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx124_7]
                        lea              rdx, [rip + .Lx124_8];               jmp   rax
.Lx124_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx124_2
.Lx124_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx124_2
.Lx124_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n110_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx124_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n112_match_assign_cond_α
.Lx124_6:               add              rsp, 16;                             jmp   n110_match_assign_save_β
n111_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n112_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n112_match_assign_cond_β:
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
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx130_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx130_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx130_10
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx130_2:               test             rax, rax;                            je    .Lx130_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx130_7]
                        lea              rdx, [rip + .Lx130_8];               jmp   rax
.Lx130_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx130_2
.Lx130_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx130_2
.Lx130_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n114_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n107_match_alternate_s1
.Lx130_6:               add              rsp, 16;                             jmp   n114_match_lit_β
n115_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n116_match_defer_α:     mov              rax, qword ptr [r9 + 544]            # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 552]
                        cmp              eax, 8;                              jne   .Lx131_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx131_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx131_10
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
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx131_2:               test             rax, rax;                            je    .Lx131_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx131_7]
                        lea              rdx, [rip + .Lx131_8];               jmp   rax
.Lx131_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx131_2
.Lx131_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx131_2
.Lx131_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                              jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
proc_PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n132_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 568]
                        cmp              eax, 8;                              jne   .Lx145_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx145_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx145_10
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
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx145_2:               test             rax, rax;                            je    .Lx145_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx145_7]
                        lea              rdx, [rip + .Lx145_8];               jmp   rax
.Lx145_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx145_2
.Lx145_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx145_2
.Lx145_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
n133_match_alternate_s0:
                        lea              rax, [rip + .Lx147_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
n133_match_alternate_s1:
                        lea              rax, [rip + .Lx147_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
n133_match_alternate_s2:
                        lea              rax, [rip + .Lx147_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
.Lx147_40:                                                                    jmp   n140_goto_β
.Lx147_41:                                                                    jmp   n135_goto_β
.Lx147_42:                                                                    jmp   n134_match_lit_β
n133_match_alternate_as:
                                                                              jmp   proc_PAT$4_γ
n133_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n133_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
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
n137_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n138_match_defer_α
n137_match_assign_save_β:
                                                                              jmp   n136_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx155_11
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                              jne   .Lx155_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx155_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx155_10
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
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx155_2:               test             rax, rax;                            je    .Lx155_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx155_7]
                        lea              rdx, [rip + .Lx155_8];               jmp   rax
.Lx155_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx155_2
.Lx155_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx155_2
.Lx155_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n137_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx155_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n139_match_assign_cond_α
.Lx155_6:               add              rsp, 16;                             jmp   n137_match_assign_save_β
n138_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n139_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n139_match_assign_cond_β:
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
n142_match_assign_save_α:
                        mov              dword ptr [rbp + -32], r14d;         jmp   n143_match_defer_α
n142_match_assign_save_β:
                                                                              jmp   n141_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx163_11
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                              jne   .Lx163_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx163_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx163_10
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
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx163_2:               test             rax, rax;                            je    .Lx163_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx163_7]
                        lea              rdx, [rip + .Lx163_8];               jmp   rax
.Lx163_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx163_2
.Lx163_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx163_2
.Lx163_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n142_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx163_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n144_match_assign_cond_α
.Lx163_6:               add              rsp, 16;                             jmp   n142_match_assign_save_β
n143_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n144_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n144_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                              jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
proc_PAT$5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n166_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # PAT$5$V0
                        mov              rdx, qword ptr [r9 + 584]
                        cmp              eax, 8;                              jne   .Lx179_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx179_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx179_10
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
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx179_2:               test             rax, rax;                            je    .Lx179_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx179_7]
                        lea              rdx, [rip + .Lx179_8];               jmp   rax
.Lx179_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx179_2
.Lx179_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx179_2
.Lx179_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
n167_match_alternate_s0:
                        lea              rax, [rip + .Lx181_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
n167_match_alternate_s1:
                        lea              rax, [rip + .Lx181_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
n167_match_alternate_s2:
                        lea              rax, [rip + .Lx181_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
.Lx181_40:                                                                    jmp   n174_goto_β
.Lx181_41:                                                                    jmp   n169_goto_β
.Lx181_42:                                                                    jmp   n168_match_lit_β
n167_match_alternate_as:
                                                                              jmp   proc_PAT$5_γ
n167_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n167_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
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
n171_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n172_match_defer_α
n171_match_assign_save_β:
                                                                              jmp   n170_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n172_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx189_11
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx189_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx189_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx189_10
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_2:               test             rax, rax;                            je    .Lx189_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx189_7]
                        lea              rdx, [rip + .Lx189_8];               jmp   rax
.Lx189_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx189_2
.Lx189_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx189_2
.Lx189_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n171_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx189_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n173_match_assign_cond_α
.Lx189_6:               add              rsp, 16;                             jmp   n171_match_assign_save_β
n172_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n173_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n173_match_assign_cond_β:
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
n176_match_assign_save_α:
                        mov              dword ptr [rbp + -32], r14d;         jmp   n177_match_defer_α
n176_match_assign_save_β:
                                                                              jmp   n175_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n177_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                            jne   .Lx197_11
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx197_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx197_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx197_10
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx197_2:               test             rax, rax;                            je    .Lx197_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx197_7]
                        lea              rdx, [rip + .Lx197_8];               jmp   rax
.Lx197_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx197_2
.Lx197_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx197_2
.Lx197_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n176_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx197_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n178_match_assign_cond_α
.Lx197_6:               add              rsp, 16;                             jmp   n176_match_assign_save_β
n177_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n178_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n178_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                              jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
proc_PAT$6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 24
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n200_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # PAT$6$V0
                        mov              rdx, qword ptr [r9 + 600]
                        cmp              eax, 8;                              jne   .Lx202_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx202_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx202_10
.Lx202_9:               xor              eax, eax
.Lx202_10:              test             rax, rax;                            jz    .Lx202_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx202_4]
                        lea              r11, [rip + .Lx202_5];               jmp   rax
.Lx202_4:                                                                     jmp   n201_match_fence1_α
.Lx202_5:               add              rsp, 16;                             jmp   proc_PAT$6_ω
.Lx202_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx202_2:               test             rax, rax;                            je    .Lx202_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx202_7]
                        lea              rdx, [rip + .Lx202_8];               jmp   rax
.Lx202_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx202_2
.Lx202_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx202_2
.Lx202_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx202_240
                        add              rsp, 16;                             jmp   proc_PAT$6_ω
.Lx202_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx202_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n201_match_fence1_α
.Lx202_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$6_ω
n200_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n201_match_fence1_α:                                                          jmp   proc_PAT$6_γ
n201_match_fence1_β:                                                          jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                              jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
proc_PAT$7_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n205_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   proc_PAT$7_ω
                                                                              jmp   n206_match_arbno_α
n205_match_pos_β:                                                             jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n207_match_rpos_α
n206_match_arbno_β:                                                           jmp   n208_match_defer_α
n206_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n208_match_defer_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   n207_match_rpos_α
n206_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jne   n208_match_defer_β
                                                                              jmp   n205_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n207_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n206_match_arbno_β
                                                                              jmp   proc_PAT$7_γ
#-----------------------------------------------------------------------------------------------------------------------
n208_match_defer_α:     mov              rax, qword ptr [r9 + 608]            # PAT$7$V0
                        mov              rdx, qword ptr [r9 + 616]
                        cmp              eax, 8;                              jne   .Lx217_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx217_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx217_10
.Lx217_9:               xor              eax, eax
.Lx217_10:              test             rax, rax;                            jz    .Lx217_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx217_4]
                        lea              r11, [rip + .Lx217_5];               jmp   rax
.Lx217_4:                                                                     jmp   n209_match_defer_α
.Lx217_5:                                                                     jmp   n206_match_arbno_af
.Lx217_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx217_2:               test             rax, rax;                            je    .Lx217_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx217_7]
                        lea              rdx, [rip + .Lx217_8];               jmp   rax
.Lx217_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx217_2
.Lx217_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx217_2
.Lx217_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n206_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx217_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n209_match_defer_α
.Lx217_6:               add              rsp, 16;                             jmp   n206_match_arbno_af
n208_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n209_match_defer_α:     mov              rax, qword ptr [r9 + 624]            # PAT$7$V1
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                              jne   .Lx218_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx218_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx218_10
.Lx218_9:               xor              eax, eax
.Lx218_10:              test             rax, rax;                            jz    .Lx218_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx218_4]
                        lea              r11, [rip + .Lx218_5];               jmp   rax
.Lx218_4:                                                                     jmp   n210_match_assign_save_α
.Lx218_5:                                                                     jmp   n206_match_arbno_af
.Lx218_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx218_2:               test             rax, rax;                            je    .Lx218_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx218_7]
                        lea              rdx, [rip + .Lx218_8];               jmp   rax
.Lx218_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx218_2
.Lx218_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx218_2
.Lx218_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n206_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx218_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n210_match_assign_save_α
.Lx218_6:               add              rsp, 16;                             jmp   n206_match_arbno_af
n209_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n210_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n211_match_defer_α
n210_match_assign_save_β:
                                                                              jmp   n206_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n211_match_defer_α:     mov              rax, qword ptr [r9 + 640]            # PAT$7$V2
                        mov              rdx, qword ptr [r9 + 648]
                        cmp              eax, 8;                              jne   .Lx221_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx221_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx221_10
.Lx221_9:               xor              eax, eax
.Lx221_10:              test             rax, rax;                            jz    .Lx221_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx221_4]
                        lea              r11, [rip + .Lx221_5];               jmp   rax
.Lx221_4:                                                                     jmp   n212_match_assign_cond_α
.Lx221_5:                                                                     jmp   n210_match_assign_save_β
.Lx221_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx221_2:               test             rax, rax;                            je    .Lx221_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx221_7]
                        lea              rdx, [rip + .Lx221_8];               jmp   rax
.Lx221_7:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx221_2
.Lx221_8:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx221_2
.Lx221_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n210_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx221_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n212_match_assign_cond_α
.Lx221_6:               add              rsp, 16;                             jmp   n210_match_assign_save_β
n211_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n212_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n212_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                              jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
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
                        mov              esi, 64
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
.Lgvan37:               .string          "PAT$6$V0"
.Lgvan38:               .string          "PAT$7$V0"
.Lgvan39:               .string          "PAT$7$V1"
.Lgvan40:               .string          "PAT$7$V2"
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
                        .quad            .Lgvan40
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 41
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 41
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
n224_statement_begin_α:                                                       jmp   n225_func_activate_α
n224_statement_begin_β:                                                       jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_func_activate_α:   mov              rdi, qword ptr [rip + .Lx666_0]
                        mov              rsi, qword ptr [rip + .Lx666_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_statement_end_α
n225_func_activate_β:                                                         jmp   n224_statement_begin_β
.Lx666_0:               .quad            .Lx666_0_s
.Lx666_0_s:             .string          "EMIT"
.Lx666_1:               .quad            .Lx666_1_s
.Lx666_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:                                                         jmp   n244_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
EMIT_body:                                                                    jmp   n228_var_α
n227_statement_begin_β:                                                       jmp   n235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_subscript_α
n229_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n227_statement_begin_β
.Lx672_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n230_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx673_240
                        add              rsp, 16;                             jmp   n229_lit_integer_β
.Lx673_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_deref_α
n230_subscript_β:       add              rsp, 16;                             jmp   n229_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n231_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx674_240
                        add              rsp, 16;                             jmp   n230_subscript_β
.Lx674_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_call_α
n231_deref_β:           add              rsp, 16;                             jmp   n230_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig676z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig676z:              .quad            1
                        .quad            .Lx676_2
                        .quad            .Lx676_2
                        .quad            16
.Lx676_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx676_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx676_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx676_240
                        add              rsp, 16;                             jmp   n231_deref_β
.Lx676_240:                                                                   jmp   n233_assign_α
n232_call_β:                                                                  jmp   n231_deref_β
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_statement_end_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   add              rsp, 80;                             jmp   n235_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α:                                                       jmp   n236_lit_integer_α
n235_statement_begin_β:                                                       jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_assign_α
.Lx682_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n238_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   add              rsp, 16;                             jmp   n239_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α:                                                       jmp   n240_lit_string_α
n239_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_call_α
.Lx688_0:               .quad            .Lx688_0_s
.Lx688_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd690:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd690]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx689_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
.Lx689_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_assign_α
n241_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n243_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# EMIT_x  <stmt 5, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α:                                                       jmp   n245_statement_end_α
n244_statement_begin_β:                                                       jmp   n246_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:                                                         jmp   n246_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α:                                                       jmp   n247_func_activate_α
n246_statement_begin_β:                                                       jmp   n261_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n247_func_activate_α:   mov              rdi, qword ptr [rip + .Lx701_0]
                        mov              rsi, qword ptr [rip + .Lx701_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n248_statement_end_α
n247_func_activate_β:                                                         jmp   n246_statement_begin_β
.Lx701_0:               .quad            .Lx701_0_s
.Lx701_0_s:             .string          "PSH"
.Lx701_1:               .quad            .Lx701_1_s
.Lx701_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:                                                         jmp   n261_statement_begin_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
PSH_body:                                                                     jmp   n250_var_α
n249_statement_begin_β:                                                       jmp   n255_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_binop_α
n251_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
.Lx707_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx708_240
                        add              rsp, 16;                             jmp   n251_lit_integer_β
.Lx708_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n254_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_end_α:   add              rsp, 48;                             jmp   n255_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_begin_α:                                                       jmp   n256_var_α
n255_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_var_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_subscript_α
n257_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n255_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n258_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx716_240
                        add              rsp, 16;                             jmp   n257_var_β
.Lx716_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:          mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n260_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_end_α:   add              rsp, 48;                             jmp   NRETURN
#=======================================================================================================================
# PSH_x  <stmt 9, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_begin_α:                                                       jmp   n262_statement_end_α
n261_statement_begin_β:                                                       jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:                                                         jmp   n263_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α:                                                       jmp   n264_func_activate_α
n263_statement_begin_β:                                                       jmp   n285_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_func_activate_α:   mov              rdi, qword ptr [rip + .Lx727_0]
                        mov              rsi, qword ptr [rip + .Lx727_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_statement_end_α
n264_func_activate_β:                                                         jmp   n263_statement_begin_β
.Lx727_0:               .quad            .Lx727_0_s
.Lx727_0_s:             .string          "DRF"
.Lx727_1:               .quad            .Lx727_1_s
.Lx727_1_s:             .string          "nm"
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:                                                         jmp   n285_statement_begin_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
DRF_body:                                                                     jmp   n267_var_α
n266_statement_begin_β:                                                       jmp   n281_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx734_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n269_match_pos_α
n268_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx734_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx734_1
                                                                              jmp   .Lx734_0
.Lx734_1:
n268_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n281_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n269_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   n268_match_begin_β
                                                                              jmp   n270_match_any_α
n269_match_pos_β:                                                             jmp   n268_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n270_match_any_α:       mov              eax, r14d
                        cmp              eax, r15d;                           jge   n268_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n268_match_begin_β
                        add              r14d, 1;                             jmp   n271_match_rpos_α
n270_match_any_β:       sub              r14d, 1;                             jmp   n268_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n271_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n270_match_any_β
                                                                              jmp   n272_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n272_match_end_α:       push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx740_1:               test             rax, rax;                            je    .Lx740_2
                        lea              rcx, [rip + .Lx740_3]
                        lea              rdx, [rip + .Lx740_4];               jmp   rax
.Lx740_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx740_1
.Lx740_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx740_1
.Lx740_2:               call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n273_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:   add              rsp, 16;                             jmp   n274_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_begin_α:                                                       jmp   n275_var_α
n274_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_var_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_subscript_α
n276_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n274_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n277_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx747_240
                        add              rsp, 16;                             jmp   n276_var_β
.Lx747_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_deref_α
n277_subscript_β:       add              rsp, 16;                             jmp   n276_var_β
#-----------------------------------------------------------------------------------------------------------------------
n278_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx748_240
                        add              rsp, 16;                             jmp   n277_subscript_β
.Lx748_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n280_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_begin_α:                                                       jmp   n282_var_α
n281_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n284_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# DRF_x  <stmt 14, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_begin_α:                                                       jmp   n286_statement_end_α
n285_statement_begin_β:                                                       jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:                                                         jmp   n287_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α:                                                       jmp   n288_func_activate_α
n287_statement_begin_β:                                                       jmp   n322_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n288_func_activate_α:   mov              rdi, qword ptr [rip + .Lx765_0]
                        mov              rsi, qword ptr [rip + .Lx765_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_statement_end_α
n288_func_activate_β:                                                         jmp   n287_statement_begin_β
.Lx765_0:               .quad            .Lx765_0_s
.Lx765_0_s:             .string          "ADD"
.Lx765_1:               .quad            .Lx765_1_s
.Lx765_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:                                                         jmp   n322_statement_begin_α
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
ADD_body:                                                                     jmp   n291_var_α
n290_statement_begin_β:                                                       jmp   n298_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_subscript_α
n292_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n290_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n293_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx772_240
                        add              rsp, 16;                             jmp   n292_var_β
.Lx772_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_deref_α
n293_subscript_β:       add              rsp, 16;                             jmp   n292_var_β
#-----------------------------------------------------------------------------------------------------------------------
n294_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx773_240
                        add              rsp, 16;                             jmp   n293_subscript_β
.Lx773_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_call_α
n294_deref_β:           add              rsp, 16;                             jmp   n293_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig775z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig775z:              .quad            1
                        .quad            .Lx775_2
                        .quad            .Lx775_2
                        .quad            16
.Lx775_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx775_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx775_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx775_240
                        add              rsp, 16;                             jmp   n294_deref_β
.Lx775_240:                                                                   jmp   n296_assign_α
n295_call_β:                                                                  jmp   n294_deref_β
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n297_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_end_α:   add              rsp, 80;                             jmp   n298_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_begin_α:                                                       jmp   n299_var_α
n298_statement_begin_β:                                                       jmp   n304_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n301_binop_α
n300_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n298_statement_begin_β
.Lx782_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n301_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx783_240
                        add              rsp, 16;                             jmp   n300_lit_integer_β
.Lx783_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n302_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n303_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:   add              rsp, 48;                             jmp   n304_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_begin_α:                                                       jmp   n305_var_α
n304_statement_begin_β:                                                       jmp   n317_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_subscript_α
n306_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n304_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n307_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx791_240
                        add              rsp, 16;                             jmp   n306_var_β
.Lx791_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_var_α
n307_subscript_β:       add              rsp, 16;                             jmp   n306_var_β
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
n308_var_β:             add              rsp, 16;                             jmp   n307_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_subscript_α
n309_var_β:             add              rsp, 16;                             jmp   n308_var_β
#-----------------------------------------------------------------------------------------------------------------------
n310_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx794_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lx794_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_deref_α
n310_subscript_β:       add              rsp, 16;                             jmp   n309_var_β
#-----------------------------------------------------------------------------------------------------------------------
n311_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx795_240
                        add              rsp, 16;                             jmp   n310_subscript_β
.Lx795_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_call_α
n311_deref_β:           add              rsp, 16;                             jmp   n310_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig797z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig797z:              .quad            1
                        .quad            .Lx797_2
                        .quad            .Lx797_2
                        .quad            16
.Lx797_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx797_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx797_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx797_240
                        add              rsp, 16;                             jmp   n311_deref_β
.Lx797_240:                                                                   jmp   n313_var_α
n312_call_β:                                                                  jmp   n311_deref_β
.Lx797_0:               .quad            .Lx797_0_s
.Lx797_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_binop_α
n313_var_β:             add              rsp, 32;                             jmp   n311_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n314_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx799_240
                        add              rsp, 16;                             jmp   n313_var_β
.Lx799_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n315_assign_var_α
n314_binop_β:           add              rsp, 16;                             jmp   n313_var_β
#-----------------------------------------------------------------------------------------------------------------------
n315_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx800_240
                        add              rsp, 16;                             jmp   n314_binop_β
.Lx800_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_end_α:   add              rsp, 176;                            jmp   n317_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n317_statement_begin_α:                                                       jmp   n318_lit_string_α
n317_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n319_call_α
.Lx805_0:               .quad            .Lx805_0_s
.Lx805_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd807:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd807]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx806_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n317_statement_begin_β
.Lx806_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_assign_α
n319_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n317_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n321_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# ADD_x  <stmt 20, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_begin_α:                                                       jmp   n323_statement_end_α
n322_statement_begin_β:                                                       jmp   n324_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_end_α:                                                         jmp   n324_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α:                                                       jmp   n325_func_activate_α
n324_statement_begin_β:                                                       jmp   n359_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n325_func_activate_α:   mov              rdi, qword ptr [rip + .Lx818_0]
                        mov              rsi, qword ptr [rip + .Lx818_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n326_statement_end_α
n325_func_activate_β:                                                         jmp   n324_statement_begin_β
.Lx818_0:               .quad            .Lx818_0_s
.Lx818_0_s:             .string          "SUB"
.Lx818_1:               .quad            .Lx818_1_s
.Lx818_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:                                                         jmp   n359_statement_begin_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
SUB_body:                                                                     jmp   n328_var_α
n327_statement_begin_β:                                                       jmp   n335_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_subscript_α
n329_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n327_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n330_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx825_240
                        add              rsp, 16;                             jmp   n329_var_β
.Lx825_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_deref_α
n330_subscript_β:       add              rsp, 16;                             jmp   n329_var_β
#-----------------------------------------------------------------------------------------------------------------------
n331_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx826_240
                        add              rsp, 16;                             jmp   n330_subscript_β
.Lx826_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_call_α
n331_deref_β:           add              rsp, 16;                             jmp   n330_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig828z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig828z:              .quad            1
                        .quad            .Lx828_2
                        .quad            .Lx828_2
                        .quad            16
.Lx828_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx828_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx828_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx828_240
                        add              rsp, 16;                             jmp   n331_deref_β
.Lx828_240:                                                                   jmp   n333_assign_α
n332_call_β:                                                                  jmp   n331_deref_β
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n334_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_end_α:   add              rsp, 80;                             jmp   n335_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_begin_α:                                                       jmp   n336_var_α
n335_statement_begin_β:                                                       jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n338_binop_α
n337_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n335_statement_begin_β
.Lx835_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n338_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx836_240
                        add              rsp, 16;                             jmp   n337_lit_integer_β
.Lx836_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n339_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n340_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:   add              rsp, 48;                             jmp   n341_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α:                                                       jmp   n342_var_α
n341_statement_begin_β:                                                       jmp   n354_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_var_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_subscript_α
n343_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n344_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx844_240
                        add              rsp, 16;                             jmp   n343_var_β
.Lx844_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_var_α
n344_subscript_β:       add              rsp, 16;                             jmp   n343_var_β
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_var_α
n345_var_β:             add              rsp, 16;                             jmp   n344_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_subscript_α
n346_var_β:             add              rsp, 16;                             jmp   n345_var_β
#-----------------------------------------------------------------------------------------------------------------------
n347_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx847_240
                        add              rsp, 16;                             jmp   n346_var_β
.Lx847_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_deref_α
n347_subscript_β:       add              rsp, 16;                             jmp   n346_var_β
#-----------------------------------------------------------------------------------------------------------------------
n348_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx848_240
                        add              rsp, 16;                             jmp   n347_subscript_β
.Lx848_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_call_α
n348_deref_β:           add              rsp, 16;                             jmp   n347_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig850z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig850z:              .quad            1
                        .quad            .Lx850_2
                        .quad            .Lx850_2
                        .quad            16
.Lx850_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx850_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx850_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx850_240
                        add              rsp, 16;                             jmp   n348_deref_β
.Lx850_240:                                                                   jmp   n350_var_α
n349_call_β:                                                                  jmp   n348_deref_β
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_binop_α
n350_var_β:             add              rsp, 32;                             jmp   n348_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n351_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx852_240
                        add              rsp, 16;                             jmp   n350_var_β
.Lx852_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n352_assign_var_α
n351_binop_β:           add              rsp, 16;                             jmp   n350_var_β
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx853_240
                        add              rsp, 16;                             jmp   n351_binop_β
.Lx853_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_end_α:   add              rsp, 176;                            jmp   n354_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n354_statement_begin_α:                                                       jmp   n355_lit_string_α
n354_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n356_call_α
.Lx858_0:               .quad            .Lx858_0_s
.Lx858_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n356_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd860:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd860]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx859_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
.Lx859_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_assign_α
n356_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # SUB
                        mov              qword ptr [r9 + 104], rdx;           jmp   n358_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SUB_x  <stmt 26, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_begin_α:                                                       jmp   n360_statement_end_α
n359_statement_begin_β:                                                       jmp   n361_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_end_α:                                                         jmp   n361_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n361_statement_begin_α:                                                       jmp   n362_func_activate_α
n361_statement_begin_β:                                                       jmp   n396_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n362_func_activate_α:   mov              rdi, qword ptr [rip + .Lx871_0]
                        mov              rsi, qword ptr [rip + .Lx871_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n363_statement_end_α
n362_func_activate_β:                                                         jmp   n361_statement_begin_β
.Lx871_0:               .quad            .Lx871_0_s
.Lx871_0_s:             .string          "MUL"
.Lx871_1:               .quad            .Lx871_1_s
.Lx871_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:                                                         jmp   n396_statement_begin_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
MUL_body:                                                                     jmp   n365_var_α
n364_statement_begin_β:                                                       jmp   n372_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_subscript_α
n366_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n364_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n367_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx878_240
                        add              rsp, 16;                             jmp   n366_var_β
.Lx878_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_deref_α
n367_subscript_β:       add              rsp, 16;                             jmp   n366_var_β
#-----------------------------------------------------------------------------------------------------------------------
n368_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx879_240
                        add              rsp, 16;                             jmp   n367_subscript_β
.Lx879_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_call_α
n368_deref_β:           add              rsp, 16;                             jmp   n367_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig881z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig881z:              .quad            1
                        .quad            .Lx881_2
                        .quad            .Lx881_2
                        .quad            16
.Lx881_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx881_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx881_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx881_240
                        add              rsp, 16;                             jmp   n368_deref_β
.Lx881_240:                                                                   jmp   n370_assign_α
n369_call_β:                                                                  jmp   n368_deref_β
.Lx881_0:               .quad            .Lx881_0_s
.Lx881_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n371_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_end_α:   add              rsp, 80;                             jmp   n372_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_begin_α:                                                       jmp   n373_var_α
n372_statement_begin_β:                                                       jmp   n378_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n375_binop_α
n374_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n372_statement_begin_β
.Lx888_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n375_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx889_240
                        add              rsp, 16;                             jmp   n374_lit_integer_β
.Lx889_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n376_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n377_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_end_α:   add              rsp, 48;                             jmp   n378_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n378_statement_begin_α:                                                       jmp   n379_var_α
n378_statement_begin_β:                                                       jmp   n391_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_subscript_α
n380_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n378_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n381_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx897_240
                        add              rsp, 16;                             jmp   n380_var_β
.Lx897_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n382_var_α
n381_subscript_β:       add              rsp, 16;                             jmp   n380_var_β
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_var_α
n382_var_β:             add              rsp, 16;                             jmp   n381_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_subscript_α
n383_var_β:             add              rsp, 16;                             jmp   n382_var_β
#-----------------------------------------------------------------------------------------------------------------------
n384_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx900_240
                        add              rsp, 16;                             jmp   n383_var_β
.Lx900_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_deref_α
n384_subscript_β:       add              rsp, 16;                             jmp   n383_var_β
#-----------------------------------------------------------------------------------------------------------------------
n385_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx901_240
                        add              rsp, 16;                             jmp   n384_subscript_β
.Lx901_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_call_α
n385_deref_β:           add              rsp, 16;                             jmp   n384_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig903z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig903z:              .quad            1
                        .quad            .Lx903_2
                        .quad            .Lx903_2
                        .quad            16
.Lx903_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx903_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx903_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx903_240
                        add              rsp, 16;                             jmp   n385_deref_β
.Lx903_240:                                                                   jmp   n387_var_α
n386_call_β:                                                                  jmp   n385_deref_β
.Lx903_0:               .quad            .Lx903_0_s
.Lx903_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_binop_α
n387_var_β:             add              rsp, 32;                             jmp   n385_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n388_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx905_240
                        add              rsp, 16;                             jmp   n387_var_β
.Lx905_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n389_assign_var_α
n388_binop_β:           add              rsp, 16;                             jmp   n387_var_β
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx906_240
                        add              rsp, 16;                             jmp   n388_binop_β
.Lx906_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n390_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n390_statement_end_α:   add              rsp, 176;                            jmp   n391_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n391_statement_begin_α:                                                       jmp   n392_lit_string_α
n391_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n393_call_α
.Lx911_0:               .quad            .Lx911_0_s
.Lx911_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd913:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd913]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx912_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n391_statement_begin_β
.Lx912_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_assign_α
n393_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n391_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n394_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # MUL
                        mov              qword ptr [r9 + 120], rdx;           jmp   n395_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# MUL_x  <stmt 32, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n396_statement_begin_α:                                                       jmp   n397_statement_end_α
n396_statement_begin_β:                                                       jmp   n398_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n397_statement_end_α:                                                         jmp   n398_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_begin_α:                                                       jmp   n399_func_activate_α
n398_statement_begin_β:                                                       jmp   n433_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n399_func_activate_α:   mov              rdi, qword ptr [rip + .Lx924_0]
                        mov              rsi, qword ptr [rip + .Lx924_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n400_statement_end_α
n399_func_activate_β:                                                         jmp   n398_statement_begin_β
.Lx924_0:               .quad            .Lx924_0_s
.Lx924_0_s:             .string          "DIV"
.Lx924_1:               .quad            .Lx924_1_s
.Lx924_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_end_α:                                                         jmp   n433_statement_begin_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
DIV_body:                                                                     jmp   n402_var_α
n401_statement_begin_β:                                                       jmp   n409_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_var_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_subscript_α
n403_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n404_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx931_240
                        add              rsp, 16;                             jmp   n403_var_β
.Lx931_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_deref_α
n404_subscript_β:       add              rsp, 16;                             jmp   n403_var_β
#-----------------------------------------------------------------------------------------------------------------------
n405_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx932_240
                        add              rsp, 16;                             jmp   n404_subscript_β
.Lx932_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_call_α
n405_deref_β:           add              rsp, 16;                             jmp   n404_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n406_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig934z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig934z:              .quad            1
                        .quad            .Lx934_2
                        .quad            .Lx934_2
                        .quad            16
.Lx934_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx934_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx934_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx934_240
                        add              rsp, 16;                             jmp   n405_deref_β
.Lx934_240:                                                                   jmp   n407_assign_α
n406_call_β:                                                                  jmp   n405_deref_β
.Lx934_0:               .quad            .Lx934_0_s
.Lx934_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n408_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_end_α:   add              rsp, 80;                             jmp   n409_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n409_statement_begin_α:                                                       jmp   n410_var_α
n409_statement_begin_β:                                                       jmp   n415_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n412_binop_α
n411_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n409_statement_begin_β
.Lx941_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n412_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx942_240
                        add              rsp, 16;                             jmp   n411_lit_integer_β
.Lx942_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n413_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n414_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_end_α:   add              rsp, 48;                             jmp   n415_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n415_statement_begin_α:                                                       jmp   n416_var_α
n415_statement_begin_β:                                                       jmp   n428_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_var_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n418_subscript_α
n417_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n415_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n418_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx950_240
                        add              rsp, 16;                             jmp   n417_var_β
.Lx950_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_var_α
n418_subscript_β:       add              rsp, 16;                             jmp   n417_var_β
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_var_α
n419_var_β:             add              rsp, 16;                             jmp   n418_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_subscript_α
n420_var_β:             add              rsp, 16;                             jmp   n419_var_β
#-----------------------------------------------------------------------------------------------------------------------
n421_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx953_240
                        add              rsp, 16;                             jmp   n420_var_β
.Lx953_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_deref_α
n421_subscript_β:       add              rsp, 16;                             jmp   n420_var_β
#-----------------------------------------------------------------------------------------------------------------------
n422_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx954_240
                        add              rsp, 16;                             jmp   n421_subscript_β
.Lx954_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_call_α
n422_deref_β:           add              rsp, 16;                             jmp   n421_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig956z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig956z:              .quad            1
                        .quad            .Lx956_2
                        .quad            .Lx956_2
                        .quad            16
.Lx956_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx956_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx956_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx956_240
                        add              rsp, 16;                             jmp   n422_deref_β
.Lx956_240:                                                                   jmp   n424_var_α
n423_call_β:                                                                  jmp   n422_deref_β
.Lx956_0:               .quad            .Lx956_0_s
.Lx956_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n425_binop_α
n424_var_β:             add              rsp, 32;                             jmp   n422_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n425_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx958_240
                        add              rsp, 16;                             jmp   n424_var_β
.Lx958_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_assign_var_α
n425_binop_β:           add              rsp, 16;                             jmp   n424_var_β
#-----------------------------------------------------------------------------------------------------------------------
n426_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx959_240
                        add              rsp, 16;                             jmp   n425_binop_β
.Lx959_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n427_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n427_statement_end_α:   add              rsp, 176;                            jmp   n428_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n428_statement_begin_α:                                                       jmp   n429_lit_string_α
n428_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n430_call_α
.Lx964_0:               .quad            .Lx964_0_s
.Lx964_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n430_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd966:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd966]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx965_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n428_statement_begin_β
.Lx965_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_assign_α
n430_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n428_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # DIV
                        mov              qword ptr [r9 + 136], rdx;           jmp   n432_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# DIV_x  <stmt 38, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_begin_α:                                                       jmp   n434_statement_end_α
n433_statement_begin_β:                                                       jmp   n435_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_end_α:                                                         jmp   n435_statement_begin_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(NEG_x)
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_begin_α:                                                       jmp   n436_func_activate_α
n435_statement_begin_β:                                                       jmp   n455_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n436_func_activate_α:   mov              rdi, qword ptr [rip + .Lx977_0]
                        mov              rsi, qword ptr [rip + .Lx977_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_NEG_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n437_statement_end_α
n436_func_activate_β:                                                         jmp   n435_statement_begin_β
.Lx977_0:               .quad            .Lx977_0_s
.Lx977_0_s:             .string          "NEG"
.Lx977_1:               .quad            .Lx977_1_s
.Lx977_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n437_statement_end_α:                                                         jmp   n455_statement_begin_α
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
NEG_body:                                                                     jmp   n439_var_α
n438_statement_begin_β:                                                       jmp   n450_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_var_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_subscript_α
n440_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n438_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n441_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx984_240
                        add              rsp, 16;                             jmp   n440_var_β
.Lx984_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_var_α
n441_subscript_β:       add              rsp, 16;                             jmp   n440_var_β
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_var_α
n442_var_β:             add              rsp, 16;                             jmp   n441_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_subscript_α
n443_var_β:             add              rsp, 16;                             jmp   n442_var_β
#-----------------------------------------------------------------------------------------------------------------------
n444_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx987_240
                        add              rsp, 16;                             jmp   n443_var_β
.Lx987_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_deref_α
n444_subscript_β:       add              rsp, 16;                             jmp   n443_var_β
#-----------------------------------------------------------------------------------------------------------------------
n445_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx988_240
                        add              rsp, 16;                             jmp   n444_subscript_β
.Lx988_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_call_α
n445_deref_β:           add              rsp, 16;                             jmp   n444_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n446_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig990z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig990z:              .quad            1
                        .quad            .Lx990_2
                        .quad            .Lx990_2
                        .quad            16
.Lx990_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx990_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx990_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx990_240
                        add              rsp, 16;                             jmp   n445_deref_β
.Lx990_240:                                                                   jmp   n447_unop_α
n446_call_β:                                                                  jmp   n445_deref_β
.Lx990_0:               .quad            .Lx990_0_s
.Lx990_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n447_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n448_assign_var_α
n447_unop_β:            add              rsp, 32;                             jmp   n445_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n448_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # unop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx992_240
                        add              rsp, 16;                             jmp   n447_unop_β
.Lx992_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_end_α:   add              rsp, 160;                            jmp   n450_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_begin_α:                                                       jmp   n451_lit_string_α
n450_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx997_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n452_call_α
.Lx997_0:               .quad            .Lx997_0_s
.Lx997_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n452_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd999:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd999]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx998_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n450_statement_begin_β
.Lx998_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_assign_α
n452_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n450_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n453_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # NEG
                        mov              qword ptr [r9 + 152], rdx;           jmp   n454_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n454_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# NEG_x  <stmt 42, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_begin_α:                                                       jmp   n456_statement_end_α
n455_statement_begin_β:                                                       jmp   n457_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:                                                         jmp   n457_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n457_statement_begin_α:                                                       jmp   n458_lit_integer_α
n457_statement_begin_β:                                                       jmp   n462_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1009_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_call_α
.Lx1009_0:              .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1011:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1011]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1010_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
.Lx1010_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_assign_α
n459_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n460_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n461_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_end_α:   add              rsp, 32;                             jmp   n462_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_begin_α:                                                       jmp   n463_keyword_snobol4_α
n462_statement_begin_β:                                                       jmp   n466_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n463_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n464_assign_α
.Lx1017_0:              .quad            .Lx1017_0_s
.Lx1017_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n464_assign_α:          mov              rax, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n465_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n465_statement_end_α:   add              rsp, 16;                             jmp   n466_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_begin_α:                                                       jmp   n467_lit_string_α
n466_statement_begin_β:                                                       jmp   n470_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n468_assign_α
.Lx1023_0:              .quad            .Lx1023_0_s
.Lx1023_0_s:            .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n468_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n469_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n469_statement_end_α:   add              rsp, 16;                             jmp   n470_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_begin_α:                                                       jmp   n471_lit_string_α
n470_statement_begin_β:                                                       jmp   n475_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n472_call_α
.Lx1029_0:              .quad            .Lx1029_0_s
.Lx1029_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n472_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1031:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1031]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1030_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n470_statement_begin_β
.Lx1030_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n473_assign_α
n472_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n470_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n473_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n474_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:   add              rsp, 32;                             jmp   n475_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_begin_α:                                                       jmp   n476_lit_string_α
n475_statement_begin_β:                                                       jmp   n480_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n477_call_α
.Lx1037_0:              .quad            .Lx1037_0_s
.Lx1037_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n477_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1039:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1039]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1038_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n475_statement_begin_β
.Lx1038_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n478_assign_α
n477_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n475_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n478_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n479_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_end_α:   add              rsp, 32;                             jmp   n480_statement_begin_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n480_statement_begin_α:                                                       jmp   n481_var_α
n480_statement_begin_β:                                                       jmp   n489_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n482_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 536], rdx;           jmp   n483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_assign_α
n483_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n480_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 520], rdx;           jmp   n485_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n486_call_α
n485_lit_string_β:      add              rsp, 16;                             jmp   n483_var_β
.Lx1049_0:              .quad            .Lx1049_0_s
.Lx1049_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n486_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1051:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1051]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1050_240
                        add              rsp, 16;                             jmp   n485_lit_string_β
.Lx1050_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n487_assign_α
n486_call_β:            add              rsp, 16;                             jmp   n485_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n487_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n488_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_end_α:   add              rsp, 64;                             jmp   n489_statement_begin_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n489_statement_begin_α:                                                       jmp   n490_var_α
n489_statement_begin_β:                                                       jmp   n496_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n491_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n493_call_α
n492_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n489_statement_begin_β
.Lx1059_0:              .quad            .Lx1059_0_s
.Lx1059_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1061:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1061]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1060_240
                        add              rsp, 16;                             jmp   n492_lit_string_β
.Lx1060_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n494_assign_α
n493_call_β:            add              rsp, 16;                             jmp   n492_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n494_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n495_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n495_statement_end_α:   add              rsp, 48;                             jmp   n496_statement_begin_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_begin_α:                                                       jmp   n497_var_α
n496_statement_begin_β:                                                       jmp   n503_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n498_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n498_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 568], rdx;           jmp   n499_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1069_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n500_call_α
n499_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n496_statement_begin_β
.Lx1069_0:              .quad            .Lx1069_0_s
.Lx1069_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n500_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1071:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1071]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1070_240
                        add              rsp, 16;                             jmp   n499_lit_string_β
.Lx1070_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n501_assign_α
n500_call_β:            add              rsp, 16;                             jmp   n499_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n501_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n502_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_end_α:   add              rsp, 48;                             jmp   n503_statement_begin_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n503_statement_begin_α:                                                       jmp   n504_var_α
n503_statement_begin_β:                                                       jmp   n510_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n505_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n505_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 584], rdx;           jmp   n506_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_call_α
n506_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n503_statement_begin_β
.Lx1079_0:              .quad            .Lx1079_0_s
.Lx1079_0_s:            .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1081:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1081]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1080_240
                        add              rsp, 16;                             jmp   n506_lit_string_β
.Lx1080_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_assign_α
n507_call_β:            add              rsp, 16;                             jmp   n506_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n508_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n509_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_end_α:   add              rsp, 48;                             jmp   n510_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_begin_α:                                                       jmp   n511_lit_integer_α
n510_statement_begin_β:                                                       jmp   n518_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1087_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n512_call_α
.Lx1087_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n512_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd372:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd372]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1088_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n510_statement_begin_β
.Lx1088_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_assign_α
n512_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n510_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n513_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n514_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1090_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n515_call_α
n514_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n510_statement_begin_β
.Lx1090_0:              .quad            .Lx1090_0_s
.Lx1090_0_s:            .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n515_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1092:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1092]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1091_240
                        add              rsp, 16;                             jmp   n514_lit_string_β
.Lx1091_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n516_assign_α
n515_call_β:            add              rsp, 16;                             jmp   n514_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n516_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n517_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n517_statement_end_α:   add              rsp, 64;                             jmp   n518_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_begin_α:                                                       jmp   n519_var_α
n518_statement_begin_β:                                                       jmp   n529_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n520_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n520_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n522_assign_α
n521_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n518_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n522_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n523_var_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n524_assign_α
n523_var_β:             add              rsp, 16;                             jmp   n521_var_β
#-----------------------------------------------------------------------------------------------------------------------
n524_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n525_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n526_call_α
n525_lit_string_β:      add              rsp, 16;                             jmp   n523_var_β
.Lx1104_0:              .quad            .Lx1104_0_s
.Lx1104_0_s:            .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1106:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1106]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1105_240
                        add              rsp, 16;                             jmp   n525_lit_string_β
.Lx1105_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n527_assign_α
n526_call_β:            add              rsp, 16;                             jmp   n525_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n527_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n528_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_end_α:   add              rsp, 80;                             jmp   n529_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n529_statement_begin_α:                                                       jmp   n530_lit_string_α
n529_statement_begin_β:                                                       jmp   n534_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n531_lit_integer_α
.Lx1112_0:              .quad            .Lx1112_0_s
.Lx1112_0_s:            .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n532_call_α
n531_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n529_statement_begin_β
.Lx1113_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n532_call_α:            sub              rsp, 16
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
.Lrkfnzd1115:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1115]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1114_240
                        add              rsp, 16;                             jmp   n531_lit_integer_β
.Lx1114_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n533_statement_end_α
n532_call_β:            add              rsp, 16;                             jmp   n531_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n533_statement_end_α:   add              rsp, 48;                             jmp   n534_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n534_statement_begin_α:                                                       jmp   n535_lit_integer_α
n534_statement_begin_β:                                                       jmp   n539_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n536_call_α
.Lx1120_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n536_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd396:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd396]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1121_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n534_statement_begin_β
.Lx1121_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n537_assign_α
n536_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n534_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n537_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # nl
                        mov              qword ptr [r9 + 408], rdx;           jmp   n538_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n538_statement_end_α:   add              rsp, 32;                             jmp   n539_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n539_statement_begin_α:                                                       jmp   n540_call_α
n539_statement_begin_β:                                                       jmp   n543_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1128:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1128]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1127_240
                        add              rsp, 16;                             jmp   n539_statement_begin_β
.Lx1127_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n541_assign_α
n540_call_β:            add              rsp, 16;                             jmp   n539_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n541_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n542_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n542_statement_end_α:   add              rsp, 16;                             jmp   n543_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n543_statement_begin_α:                                                       jmp   n544_var_α
n543_statement_begin_β:                                                       jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n545_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1135_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n546_subscript_α
n545_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n543_statement_begin_β
.Lx1135_0:              .quad            .Lx1135_0_s
.Lx1135_0_s:            .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n546_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1136_240
                        add              rsp, 16;                             jmp   n545_lit_string_β
.Lx1136_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n547_lit_integer_α
n546_subscript_β:       add              rsp, 16;                             jmp   n545_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1137_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n548_assign_var_α
n547_lit_integer_β:     add              rsp, 16;                             jmp   n546_subscript_β
.Lx1137_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n548_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1138_240
                        add              rsp, 16;                             jmp   n547_lit_integer_β
.Lx1138_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n549_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_end_α:   add              rsp, 80;                             jmp   n550_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_begin_α:                                                       jmp   n551_var_α
n550_statement_begin_β:                                                       jmp   n557_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n551_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n552_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n553_subscript_α
n552_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n550_statement_begin_β
.Lx1144_0:              .quad            .Lx1144_0_s
.Lx1144_0_s:            .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n553_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1145_240
                        add              rsp, 16;                             jmp   n552_lit_string_β
.Lx1145_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n554_lit_integer_α
n553_subscript_β:       add              rsp, 16;                             jmp   n552_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n555_assign_var_α
n554_lit_integer_β:     add              rsp, 16;                             jmp   n553_subscript_β
.Lx1146_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n555_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1147_240
                        add              rsp, 16;                             jmp   n554_lit_integer_β
.Lx1147_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n556_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_end_α:   add              rsp, 80;                             jmp   n557_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_begin_α:                                                       jmp   n558_var_α
n557_statement_begin_β:                                                       jmp   n564_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n559_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1153_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n560_subscript_α
n559_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n557_statement_begin_β
.Lx1153_0:              .quad            .Lx1153_0_s
.Lx1153_0_s:            .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n560_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1154_240
                        add              rsp, 16;                             jmp   n559_lit_string_β
.Lx1154_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n561_lit_integer_α
n560_subscript_β:       add              rsp, 16;                             jmp   n559_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n562_assign_var_α
n561_lit_integer_β:     add              rsp, 16;                             jmp   n560_subscript_β
.Lx1155_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n562_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1156_240
                        add              rsp, 16;                             jmp   n561_lit_integer_β
.Lx1156_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n563_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n563_statement_end_α:   add              rsp, 80;                             jmp   n564_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n564_statement_begin_α:                                                       jmp   n565_var_α
n564_statement_begin_β:                                                       jmp   n612_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n565_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1161_240
                        add              rsp, 16;                             jmp   n564_statement_begin_β
.Lx1161_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n566_assign_α
.Lx1161_0:              .quad            .Lx1161_0_s
.Lx1161_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n566_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # line
                        mov              qword ptr [r9 + 424], rdx;           jmp   n567_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n567_statement_end_α:   add              rsp, 16;                             jmp   n568_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n568_statement_begin_α:                                                       jmp   n569_var_α
n568_statement_begin_β:                                                       jmp   n576_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n570_var_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # line
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n571_binop_α
n570_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n568_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n571_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n572_var_α
n571_binop_β:           add              rsp, 16;                             jmp   n570_var_β
#-----------------------------------------------------------------------------------------------------------------------
n572_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # nl
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n573_binop_α
n572_var_β:             add              rsp, 16;                             jmp   n571_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n573_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n574_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n574_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n575_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n575_statement_end_α:   add              rsp, 80;                             jmp   n576_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n576_statement_begin_α:                                                       jmp   n577_var_α
n576_statement_begin_β:                                                       jmp   n564_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n578_call_α
#-----------------------------------------------------------------------------------------------------------------------
n578_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1179:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1179]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1178_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
.Lx1178_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_lit_integer_α
n578_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n580_coerce_numeric_α
n579_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n576_statement_begin_β
.Lx1180_0:              .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n580_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1182_1
                        cmp              eax, 3;                              jne   .Lx1182_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1182_0
.Lx1182_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n581_coerce_numeric_α
.Lx1182_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n581_coerce_numeric_α
n580_coerce_numeric_β:  add              rsp, 16;                             jmp   n579_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n581_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1184_1
                        cmp              eax, 3;                              jne   .Lx1184_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1184_0
.Lx1184_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n582_cmp_test_α
.Lx1184_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n582_cmp_test_α
n581_coerce_numeric_β:  add              rsp, 16;                             jmp   n580_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n582_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1186_240
                        add              rsp, 16;                             jmp   n581_coerce_numeric_β
.Lx1186_240:                                                                  jmp   n583_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_end_α:   add              rsp, 96;                             jmp   n584_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_begin_α:                                                       jmp   n585_var_α
n584_statement_begin_β:                                                       jmp   n590_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n586_var_α
#-----------------------------------------------------------------------------------------------------------------------
n586_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n587_binop_α
n586_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n584_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n587_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n588_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n588_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n589_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n589_statement_end_α:   add              rsp, 48;                             jmp   n590_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n590_statement_begin_α:                                                       jmp   n591_lit_string_α
n590_statement_begin_β:                                                       jmp   n594_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n592_assign_α
.Lx1199_0:              .quad            .Lx1199_0_s
.Lx1199_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n592_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n593_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_end_α:   add              rsp, 16;                             jmp   n594_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n594_statement_begin_α:                                                       jmp   n595_var_α
n594_statement_begin_β:                                                       jmp   n564_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n596_call_α
#-----------------------------------------------------------------------------------------------------------------------
n596_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1207:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1207]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1206_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n594_statement_begin_β
.Lx1206_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n597_lit_integer_α
n596_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n594_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n598_coerce_numeric_α
n597_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n594_statement_begin_β
.Lx1208_0:              .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n598_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1210_1
                        cmp              eax, 3;                              jne   .Lx1210_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1210_0
.Lx1210_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n599_coerce_numeric_α
.Lx1210_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n599_coerce_numeric_α
n598_coerce_numeric_β:  add              rsp, 16;                             jmp   n597_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n599_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1212_1
                        cmp              eax, 3;                              jne   .Lx1212_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1212_0
.Lx1212_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n600_cmp_test_α
.Lx1212_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n600_cmp_test_α
n599_coerce_numeric_β:  add              rsp, 16;                             jmp   n598_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n600_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1214_240
                        add              rsp, 16;                             jmp   n599_coerce_numeric_β
.Lx1214_240:                                                                  jmp   n601_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n601_statement_end_α:   add              rsp, 96;                             jmp   n602_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n602_statement_begin_α:                                                       jmp   n603_var_α
n602_statement_begin_β:                                                       jmp   n608_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n603_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n604_var_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n605_binop_α
n604_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n602_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n605_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n606_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n606_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n607_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n607_statement_end_α:   add              rsp, 48;                             jmp   n608_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n608_statement_begin_α:                                                       jmp   n609_lit_string_α
n608_statement_begin_β:                                                       jmp   n564_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1227_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n610_assign_α
.Lx1227_0:              .quad            .Lx1227_0_s
.Lx1227_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n610_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n611_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n611_statement_end_α:   add              rsp, 16;                             jmp   n564_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n612_statement_begin_α:                                                       jmp   n613_var_α
n612_statement_begin_β:                                                       jmp   n620_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n614_var_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n615_binop_α
n614_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n612_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n615_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n616_var_α
n615_binop_β:           add              rsp, 16;                             jmp   n614_var_β
#-----------------------------------------------------------------------------------------------------------------------
n616_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n617_binop_α
n616_var_β:             add              rsp, 16;                             jmp   n615_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n617_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n618_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n618_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n619_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n619_statement_end_α:   add              rsp, 80;                             jmp   n620_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_begin_α:                                                       jmp   n621_call_α
n620_statement_begin_β:                                                       jmp   n624_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n621_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1244:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1244]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1243_240
                        add              rsp, 16;                             jmp   n620_statement_begin_β
.Lx1243_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n622_assign_α
n621_call_β:            add              rsp, 16;                             jmp   n620_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n622_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # t0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n623_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n623_statement_end_α:   add              rsp, 16;                             jmp   n624_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n624_statement_begin_α:                                                       jmp   n625_var_α
n624_statement_begin_β:                                                       jmp   n644_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n625_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n626_var_α
#-----------------------------------------------------------------------------------------------------------------------
n626_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n627_assign_α
n626_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n644_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n627_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1252_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_match_begin_α
n627_assign_β:                                                                jmp   n626_var_β
.Lx1252_0:              .quad            .Lx1252_0_s
.Lx1252_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n628_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx1254_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n629_match_defer_α
n628_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1254_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1254_1
                                                                              jmp   .Lx1254_0
.Lx1254_1:
n628_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n627_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n629_match_defer_α:     lea              rdi, [rip + .S13]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx1255_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1255_4]
                        lea              r11, [rip + .Lx1255_5];              jmp   rax
.Lx1255_4:                                                                    jmp   n630_match_end_α
.Lx1255_5:                                                                    jmp   n628_match_begin_β
.Lx1255_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1255_2:              test             rax, rax;                            je    .Lx1255_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1255_7]
                        lea              rdx, [rip + .Lx1255_8];              jmp   rax
.Lx1255_7:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1255_2
.Lx1255_8:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1255_2
.Lx1255_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n628_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1255_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n630_match_end_α
.Lx1255_6:              add              rsp, 16;                             jmp   n628_match_begin_β
n629_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n630_match_end_α:       push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1257_1:              test             rax, rax;                            je    .Lx1257_2
                        lea              rcx, [rip + .Lx1257_3]
                        lea              rdx, [rip + .Lx1257_4];              jmp   rax
.Lx1257_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1257_1
.Lx1257_4:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1257_1
.Lx1257_2:              call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n631_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n631_statement_end_α:   add              rsp, 32;                             jmp   n632_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n632_statement_begin_α:                                                       jmp   n633_call_α
n632_statement_begin_β:                                                       jmp   n636_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n633_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1263:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1263]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1262_240
                        add              rsp, 16;                             jmp   n632_statement_begin_β
.Lx1262_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n634_assign_α
n633_call_β:            add              rsp, 16;                             jmp   n632_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n634_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n635_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n635_statement_end_α:   add              rsp, 16;                             jmp   n636_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n636_statement_begin_α:                                                       jmp   n637_lit_string_α
n636_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n638_var_α
.Lx1269_0:              .quad            .Lx1269_0_s
.Lx1269_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n638_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n639_var_α
n638_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n636_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n639_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n640_binop_α
n639_var_β:             add              rsp, 16;                             jmp   n638_var_β
#-----------------------------------------------------------------------------------------------------------------------
n640_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1272_240
                        add              rsp, 16;                             jmp   n639_var_β
.Lx1272_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n641_binop_α
n640_binop_β:           add              rsp, 16;                             jmp   n639_var_β
#-----------------------------------------------------------------------------------------------------------------------
n641_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n642_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n642_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1274_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n643_statement_end_α
.Lx1274_0:              .quad            .Lx1274_0_s
.Lx1274_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n643_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n644_statement_begin_α:                                                       jmp   n645_call_α
n644_statement_begin_β:                                                       jmp   n648_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n645_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1280:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1280]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1279_240
                        add              rsp, 16;                             jmp   n644_statement_begin_β
.Lx1279_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n646_assign_α
n645_call_β:            add              rsp, 16;                             jmp   n644_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n646_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n647_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n647_statement_end_α:   add              rsp, 16;                             jmp   n648_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n648_statement_begin_α:                                                       jmp   n649_lit_string_α
n648_statement_begin_β:                                                       jmp   n652_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n649_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n650_assign_α
.Lx1286_0:              .quad            .Lx1286_0_s
.Lx1286_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1287_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n651_statement_end_α
.Lx1287_0:              .quad            .Lx1287_0_s
.Lx1287_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n651_statement_end_α:   add              rsp, 16;                             jmp   n652_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n652_statement_begin_α:                                                       jmp   n653_lit_string_α
n652_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n654_var_α
.Lx1292_0:              .quad            .Lx1292_0_s
.Lx1292_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n654_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n655_var_α
n654_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n652_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n655_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n656_binop_α
n655_var_β:             add              rsp, 16;                             jmp   n654_var_β
#-----------------------------------------------------------------------------------------------------------------------
n656_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1295_240
                        add              rsp, 16;                             jmp   n655_var_β
.Lx1295_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n657_binop_α
n656_binop_β:           add              rsp, 16;                             jmp   n655_var_β
#-----------------------------------------------------------------------------------------------------------------------
n657_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n658_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n658_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1297_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n659_statement_end_α
.Lx1297_0:              .quad            .Lx1297_0_s
.Lx1297_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n659_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1;              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "IR_MATCH_CAPTURE_COND: computed-name (*VAR/NRETURN) target not yet rebuilt -- blocked on the :(NRETURN) lowering bug (s82), see this file's header comment"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "PAT$3$V0"
.S6:                    .string          "PAT$4$V0"
.S7:                    .string          "T"
.S8:                    .string          "PAT$5$V0"
.S9:                    .string          "PAT$6$V0"
.S10:                   .string          "PAT$7$V0"
.S11:                   .string          "PAT$7$V1"
.S12:                   .string          "PAT$7$V2"
.S13:                   .string          "PATV$0"
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
