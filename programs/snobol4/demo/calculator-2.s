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
                        .globl           proc_SGN_α
proc_SGN_α:
#-----------------------------------------------------------------------------------------------------------------------
n63_save_restore_α:                                                           jmp   n64_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_deferred_α:    lea              rax, [rip + SGN_body];               jmp   rax
                                                                              jmp   n65_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n65_save_restore_α:
SGN_alpha:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 144]            # SGN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx71_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx71_41
.Lx71_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx71_41:               lea              r10, [rip + SGN_gamma]
                        lea              r11, [rip + SGN_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + SGN_body];               jmp   rax
SGN_gamma:              mov              rdi, qword ptr [r9 + 144]            # SGN
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx71_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx71_110
.Lx71_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx71_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SGN_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax            # SGN
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx71_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx71_180
.Lx71_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx71_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
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
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n107_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx117_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n115_match_defer_α
.Lx117_21:              lea              rax, [rip + .Lx117_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n109_match_assign_save_α
n107_match_alternate_s0:
                        lea              rax, [rip + .Lx117_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
n107_match_alternate_s1:
                        lea              rax, [rip + .Lx117_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_match_alternate_as
.Lx117_40:                                                                    jmp   n115_match_defer_β
.Lx117_41:                                                                    jmp   n108_goto_β
n107_match_alternate_as:
                                                                              jmp   proc_PAT$3_γ
n107_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n107_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx117_19:              add              rsp, 32;                             jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_goto_α:                                                                  jmp   n107_match_alternate_af
n108_goto_β:                                                                  jmp   n107_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n109_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -32], r14d;         jmp   n110_match_any_α
n109_match_assign_save_β:
                        add              rsp, 16;                             jmp   n107_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n110_match_any_α:       mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lx122_240
                        add              rsp, 16;                             jmp   n107_match_alternate_af
.Lx122_240:             movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lx122_0
                        cmp              esi, 45;                             je    .Lx122_0
                        add              rsp, 16;                             jmp   n107_match_alternate_af
.Lx122_0:               add              r14d, 1;                             jmp   n111_match_assign_cond_α
n110_match_any_β:       sub              r14d, 1
                        add              rsp, 16;                             jmp   n107_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n111_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n111_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
n112_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n113_match_defer_α
n112_match_assign_save_β:
                                                                              jmp   n111_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n113_match_defer_α:     push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx127_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx127_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx127_10
.Lx127_9:               xor              eax, eax
.Lx127_10:              test             rax, rax;                            jz    .Lx127_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx127_4]
                        lea              r11, [rip + .Lx127_5];               jmp   rax
.Lx127_4:               mov              rsp, rbp
                        pop              rbp;                                 jmp   n114_match_assign_cond_α
.Lx127_5:               mov              rsp, rbp
                        pop              rbp;                                 jmp   n112_match_assign_save_β
.Lx127_0:               push             r14
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
.Lx127_2:               test             rax, rax;                            je    .Lx127_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx127_7]
                        lea              rdx, [rip + .Lx127_8];               jmp   rax
.Lx127_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx127_2
.Lx127_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx127_2
.Lx127_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n112_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx127_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n114_match_assign_cond_α
.Lx127_6:               add              rsp, 16;                             jmp   n112_match_assign_save_β
n113_match_defer_β:     mov              rsp, rbp
                        pop              rbp;                                 jmp   n112_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n114_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n114_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:     mov              rax, qword ptr [r9 + 544]            # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 552]
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
.Lx130_10:              test             rax, rax;                            jz    .Lx130_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx130_4]
                        lea              r11, [rip + .Lx130_5];               jmp   rax
.Lx130_4:                                                                     jmp   n107_match_alternate_s0
.Lx130_5:                                                                     jmp   n107_match_alternate_af
.Lx130_0:               push             r14
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
                        test             eax, eax;                            js    n107_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n107_match_alternate_s0
.Lx130_6:               add              rsp, 16;                             jmp   n107_match_alternate_af
n115_match_defer_β:                                                           jmp   qword ptr [rsp]
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
                        sub              rsp, 72
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n131_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 568]
                        cmp              eax, 8;                              jne   .Lx144_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx144_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx144_10
.Lx144_9:               xor              eax, eax
.Lx144_10:              test             rax, rax;                            jz    .Lx144_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx144_4]
                        lea              r11, [rip + .Lx144_5];               jmp   rax
.Lx144_4:                                                                     jmp   n132_match_arbno_α
.Lx144_5:               add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx144_0:               push             r14
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
.Lx144_2:               test             rax, rax;                            je    .Lx144_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx144_7]
                        lea              rdx, [rip + .Lx144_8];               jmp   rax
.Lx144_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx144_2
.Lx144_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx144_2
.Lx144_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx144_240
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx144_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx144_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n132_match_arbno_α
.Lx144_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
n131_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n132_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   proc_PAT$4_γ
n132_match_arbno_β:                                                           jmp   n133_match_alternate_α
n132_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n133_match_alternate_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   proc_PAT$4_γ
n132_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jne   n133_match_alternate_β
                                                                              jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx148_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n140_match_lit_α
.Lx148_21:              lea              rax, [rip + .Lx148_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n135_match_lit_α
n133_match_alternate_s0:
                        lea              rax, [rip + .Lx148_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
n133_match_alternate_s1:
                        lea              rax, [rip + .Lx148_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_match_alternate_as
.Lx148_40:                                                                    jmp   n139_goto_β
.Lx148_41:                                                                    jmp   n134_goto_β
n133_match_alternate_as:
                                                                              jmp   n132_match_arbno_as
n133_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n133_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx148_19:              add              rsp, 32;                             jmp   n132_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n134_goto_α:                                                                  jmp   n133_match_alternate_af
n134_goto_β:                                                                  jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n135_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n133_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n133_match_alternate_af
                        add              r14d, 1;                             jmp   n136_match_assign_save_α
n135_match_lit_β:       sub              r14d, 1;                             jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n136_match_assign_save_α:
                        mov              dword ptr [rbp + -64], r14d;         jmp   n137_match_defer_α
n136_match_assign_save_β:
                                                                              jmp   n135_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n137_match_defer_α:     mov              rax, qword ptr [r9 + 592]            # PAT$4$V2
                        mov              rdx, qword ptr [r9 + 600]
                        cmp              eax, 8;                              jne   .Lx154_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx154_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx154_10
.Lx154_9:               xor              eax, eax
.Lx154_10:              test             rax, rax;                            jz    .Lx154_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx154_4]
                        lea              r11, [rip + .Lx154_5];               jmp   rax
.Lx154_4:                                                                     jmp   n138_match_assign_cond_α
.Lx154_5:                                                                     jmp   n136_match_assign_save_β
.Lx154_0:               push             r14
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
.Lx154_2:               test             rax, rax;                            je    .Lx154_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx154_7]
                        lea              rdx, [rip + .Lx154_8];               jmp   rax
.Lx154_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx154_2
.Lx154_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx154_2
.Lx154_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n136_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx154_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n138_match_assign_cond_α
.Lx154_6:               add              rsp, 16;                             jmp   n136_match_assign_save_β
n137_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n138_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n138_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
n139_goto_α:                                                                  jmp   n133_match_alternate_af
n139_goto_β:                                                                  jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n140_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n133_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n133_match_alternate_af
                        add              r14d, 1;                             jmp   n141_match_assign_save_α
n140_match_lit_β:       sub              r14d, 1;                             jmp   n133_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n141_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n142_match_defer_α
n141_match_assign_save_β:
                                                                              jmp   n140_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n142_match_defer_α:     mov              rax, qword ptr [r9 + 576]            # PAT$4$V1
                        mov              rdx, qword ptr [r9 + 584]
                        cmp              eax, 8;                              jne   .Lx162_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx162_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx162_10
.Lx162_9:               xor              eax, eax
.Lx162_10:              test             rax, rax;                            jz    .Lx162_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx162_4]
                        lea              r11, [rip + .Lx162_5];               jmp   rax
.Lx162_4:                                                                     jmp   n143_match_assign_cond_α
.Lx162_5:                                                                     jmp   n141_match_assign_save_β
.Lx162_0:               push             r14
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
.Lx162_2:               test             rax, rax;                            je    .Lx162_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx162_7]
                        lea              rdx, [rip + .Lx162_8];               jmp   rax
.Lx162_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx162_2
.Lx162_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx162_2
.Lx162_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n141_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx162_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n143_match_assign_cond_α
.Lx162_6:               add              rsp, 16;                             jmp   n141_match_assign_save_β
n142_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n143_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n143_match_assign_cond_β:
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
                        sub              rsp, 72
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n165_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # PAT$5$V0
                        mov              rdx, qword ptr [r9 + 616]
                        cmp              eax, 8;                              jne   .Lx178_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx178_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx178_10
.Lx178_9:               xor              eax, eax
.Lx178_10:              test             rax, rax;                            jz    .Lx178_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx178_4]
                        lea              r11, [rip + .Lx178_5];               jmp   rax
.Lx178_4:                                                                     jmp   n166_match_arbno_α
.Lx178_5:               add              rsp, 16;                             jmp   proc_PAT$5_ω
.Lx178_0:               push             r14
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
.Lx178_2:               test             rax, rax;                            je    .Lx178_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx178_7]
                        lea              rdx, [rip + .Lx178_8];               jmp   rax
.Lx178_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx178_2
.Lx178_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx178_2
.Lx178_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx178_240
                        add              rsp, 16;                             jmp   proc_PAT$5_ω
.Lx178_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx178_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n166_match_arbno_α
.Lx178_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$5_ω
n165_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n166_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   proc_PAT$5_γ
n166_match_arbno_β:                                                           jmp   n167_match_alternate_α
n166_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n167_match_alternate_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   proc_PAT$5_γ
n166_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jne   n167_match_alternate_β
                                                                              jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n167_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx182_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n174_match_lit_α
.Lx182_21:              lea              rax, [rip + .Lx182_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n169_match_lit_α
n167_match_alternate_s0:
                        lea              rax, [rip + .Lx182_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
n167_match_alternate_s1:
                        lea              rax, [rip + .Lx182_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_match_alternate_as
.Lx182_40:                                                                    jmp   n173_goto_β
.Lx182_41:                                                                    jmp   n168_goto_β
n167_match_alternate_as:
                                                                              jmp   n166_match_arbno_as
n167_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n167_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx182_19:              add              rsp, 32;                             jmp   n166_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n168_goto_α:                                                                  jmp   n167_match_alternate_af
n168_goto_β:                                                                  jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n169_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n167_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n167_match_alternate_af
                        add              r14d, 1;                             jmp   n170_match_assign_save_α
n169_match_lit_β:       sub              r14d, 1;                             jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n170_match_assign_save_α:
                        mov              dword ptr [rbp + -64], r14d;         jmp   n171_match_defer_α
n170_match_assign_save_β:
                                                                              jmp   n169_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n171_match_defer_α:     mov              rax, qword ptr [r9 + 640]            # PAT$5$V2
                        mov              rdx, qword ptr [r9 + 648]
                        cmp              eax, 8;                              jne   .Lx188_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx188_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx188_10
.Lx188_9:               xor              eax, eax
.Lx188_10:              test             rax, rax;                            jz    .Lx188_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx188_4]
                        lea              r11, [rip + .Lx188_5];               jmp   rax
.Lx188_4:                                                                     jmp   n172_match_assign_cond_α
.Lx188_5:                                                                     jmp   n170_match_assign_save_β
.Lx188_0:               push             r14
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
.Lx188_2:               test             rax, rax;                            je    .Lx188_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx188_7]
                        lea              rdx, [rip + .Lx188_8];               jmp   rax
.Lx188_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx188_2
.Lx188_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx188_2
.Lx188_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n170_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx188_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n172_match_assign_cond_α
.Lx188_6:               add              rsp, 16;                             jmp   n170_match_assign_save_β
n171_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n172_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n172_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
n173_goto_α:                                                                  jmp   n167_match_alternate_af
n173_goto_β:                                                                  jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n174_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n167_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n167_match_alternate_af
                        add              r14d, 1;                             jmp   n175_match_assign_save_α
n174_match_lit_β:       sub              r14d, 1;                             jmp   n167_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n175_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n176_match_defer_α
n175_match_assign_save_β:
                                                                              jmp   n174_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n176_match_defer_α:     mov              rax, qword ptr [r9 + 624]            # PAT$5$V1
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                              jne   .Lx196_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx196_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx196_10
.Lx196_9:               xor              eax, eax
.Lx196_10:              test             rax, rax;                            jz    .Lx196_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx196_4]
                        lea              r11, [rip + .Lx196_5];               jmp   rax
.Lx196_4:                                                                     jmp   n177_match_assign_cond_α
.Lx196_5:                                                                     jmp   n175_match_assign_save_β
.Lx196_0:               push             r14
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
.Lx196_2:               test             rax, rax;                            je    .Lx196_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx196_7]
                        lea              rdx, [rip + .Lx196_8];               jmp   rax
.Lx196_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx196_2
.Lx196_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx196_2
.Lx196_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n175_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx196_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n177_match_assign_cond_α
.Lx196_6:               add              rsp, 16;                             jmp   n175_match_assign_save_β
n176_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n177_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n177_match_assign_cond_β:
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
n199_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 656]            # PAT$6$V0
                        mov              rdx, qword ptr [r9 + 664]
                        cmp              eax, 8;                              jne   .Lx201_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx201_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx201_10
.Lx201_9:               xor              eax, eax
.Lx201_10:              test             rax, rax;                            jz    .Lx201_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx201_4]
                        lea              r11, [rip + .Lx201_5];               jmp   rax
.Lx201_4:                                                                     jmp   n200_match_fence1_α
.Lx201_5:               add              rsp, 16;                             jmp   proc_PAT$6_ω
.Lx201_0:               push             r14
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
.Lx201_2:               test             rax, rax;                            je    .Lx201_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx201_7]
                        lea              rdx, [rip + .Lx201_8];               jmp   rax
.Lx201_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx201_2
.Lx201_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx201_2
.Lx201_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx201_240
                        add              rsp, 16;                             jmp   proc_PAT$6_ω
.Lx201_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx201_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n200_match_fence1_α
.Lx201_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   proc_PAT$6_ω
n199_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n200_match_fence1_α:                                                          jmp   proc_PAT$6_γ
n200_match_fence1_β:                                                          jmp   proc_PAT$6_ω
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
n204_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   proc_PAT$7_ω
                                                                              jmp   n205_match_arbno_α
n204_match_pos_β:                                                             jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n205_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n206_match_rpos_α
n205_match_arbno_β:                                                           jmp   n207_match_defer_α
n205_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n207_match_defer_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   n206_match_rpos_α
n205_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jne   n207_match_defer_β
                                                                              jmp   n204_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n206_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n205_match_arbno_β
                                                                              jmp   proc_PAT$7_γ
#-----------------------------------------------------------------------------------------------------------------------
n207_match_defer_α:     mov              rax, qword ptr [r9 + 672]            # PAT$7$V0
                        mov              rdx, qword ptr [r9 + 680]
                        cmp              eax, 8;                              jne   .Lx216_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx216_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx216_10
.Lx216_9:               xor              eax, eax
.Lx216_10:              test             rax, rax;                            jz    .Lx216_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx216_4]
                        lea              r11, [rip + .Lx216_5];               jmp   rax
.Lx216_4:                                                                     jmp   n208_match_defer_α
.Lx216_5:                                                                     jmp   n205_match_arbno_af
.Lx216_0:               push             r14
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
.Lx216_2:               test             rax, rax;                            je    .Lx216_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx216_7]
                        lea              rdx, [rip + .Lx216_8];               jmp   rax
.Lx216_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx216_2
.Lx216_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx216_2
.Lx216_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n205_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx216_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n208_match_defer_α
.Lx216_6:               add              rsp, 16;                             jmp   n205_match_arbno_af
n207_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n208_match_defer_α:     mov              rax, qword ptr [r9 + 688]            # PAT$7$V1
                        mov              rdx, qword ptr [r9 + 696]
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
.Lx217_4:                                                                     jmp   n209_match_assign_save_α
.Lx217_5:                                                                     jmp   n205_match_arbno_af
.Lx217_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]
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
                        test             eax, eax;                            js    n205_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx217_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n209_match_assign_save_α
.Lx217_6:               add              rsp, 16;                             jmp   n205_match_arbno_af
n208_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n209_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n210_match_defer_α
n209_match_assign_save_β:
                                                                              jmp   n205_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n210_match_defer_α:     mov              rax, qword ptr [r9 + 704]            # PAT$7$V2
                        mov              rdx, qword ptr [r9 + 712]
                        cmp              eax, 8;                              jne   .Lx220_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx220_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx220_10
.Lx220_9:               xor              eax, eax
.Lx220_10:              test             rax, rax;                            jz    .Lx220_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx220_4]
                        lea              r11, [rip + .Lx220_5];               jmp   rax
.Lx220_4:                                                                     jmp   n211_match_assign_cond_α
.Lx220_5:                                                                     jmp   n209_match_assign_save_β
.Lx220_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx220_2:               test             rax, rax;                            je    .Lx220_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx220_7]
                        lea              rdx, [rip + .Lx220_8];               jmp   rax
.Lx220_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx220_2
.Lx220_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx220_2
.Lx220_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n209_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx220_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n211_match_assign_cond_α
.Lx220_6:               add              rsp, 16;                             jmp   n209_match_assign_save_β
n210_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n211_match_assign_cond_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
n211_match_assign_cond_β:
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
.Lstartup_pname7:       .string          "LBL__SGN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + SGN_body]
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
                        mov              esi, 208
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
                        mov              esi, 320
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
                        mov              esi, 320
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
.Lgvan9:                .string          "SGN"
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
.Lgvan36:               .string          "PAT$4$V1"
.Lgvan37:               .string          "PAT$4$V2"
.Lgvan38:               .string          "PAT$5$V0"
.Lgvan39:               .string          "PAT$5$V1"
.Lgvan40:               .string          "PAT$5$V2"
.Lgvan41:               .string          "PAT$6$V0"
.Lgvan42:               .string          "PAT$7$V0"
.Lgvan43:               .string          "PAT$7$V1"
.Lgvan44:               .string          "PAT$7$V2"
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
                        .quad            .Lgvan41
                        .quad            .Lgvan42
                        .quad            .Lgvan43
                        .quad            .Lgvan44
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 45
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 45
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
n223_statement_begin_α:                                                       jmp   n224_func_activate_α
n223_statement_begin_β:                                                       jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n224_func_activate_α:   mov              rdi, qword ptr [rip + .Lx695_0]
                        mov              rsi, qword ptr [rip + .Lx695_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_statement_end_α
n224_func_activate_β:                                                         jmp   n223_statement_begin_β
.Lx695_0:               .quad            .Lx695_0_s
.Lx695_0_s:             .string          "EMIT"
.Lx695_1:               .quad            .Lx695_1_s
.Lx695_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:                                                         jmp   n243_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
EMIT_body:                                                                    jmp   n227_var_α
n226_statement_begin_β:                                                       jmp   n234_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_subscript_α
n228_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n226_statement_begin_β
.Lx701_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n229_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx702_240
                        add              rsp, 16;                             jmp   n228_lit_integer_β
.Lx702_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_deref_α
n229_subscript_β:       add              rsp, 16;                             jmp   n228_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n230_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx703_240
                        add              rsp, 16;                             jmp   n229_subscript_β
.Lx703_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_call_α
n230_deref_β:           add              rsp, 16;                             jmp   n229_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig705z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig705z:              .quad            1
                        .quad            .Lx705_2
                        .quad            .Lx705_2
                        .quad            16
.Lx705_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx705_29
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
.Lx705_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx705_240
                        add              rsp, 16;                             jmp   n230_deref_β
.Lx705_240:                                                                   jmp   n232_assign_α
n231_call_β:                                                                  jmp   n230_deref_β
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:          mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_statement_end_α
.Lx706_0:               .quad            .Lx706_0_s
.Lx706_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_end_α:   add              rsp, 80;                             jmp   n234_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_begin_α:                                                       jmp   n235_lit_integer_α
n234_statement_begin_β:                                                       jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_assign_α
.Lx711_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n237_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   add              rsp, 16;                             jmp   n238_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α:                                                       jmp   n239_lit_string_α
n238_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_call_α
.Lx717_0:               .quad            .Lx717_0_s
.Lx717_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd719:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd719]
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
                        cmp              eax, 104;                            jne   .Lx718_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n238_statement_begin_β
.Lx718_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_assign_α
n240_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n238_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n242_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# EMIT_x  <stmt 5, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α:                                                       jmp   n244_statement_end_α
n243_statement_begin_β:                                                       jmp   n245_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:                                                         jmp   n245_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_begin_α:                                                       jmp   n246_func_activate_α
n245_statement_begin_β:                                                       jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_func_activate_α:   mov              rdi, qword ptr [rip + .Lx730_0]
                        mov              rsi, qword ptr [rip + .Lx730_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_statement_end_α
n246_func_activate_β:                                                         jmp   n245_statement_begin_β
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "PSH"
.Lx730_1:               .quad            .Lx730_1_s
.Lx730_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:                                                         jmp   n260_statement_begin_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
PSH_body:                                                                     jmp   n249_var_α
n248_statement_begin_β:                                                       jmp   n254_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx736_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n251_binop_α
n250_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n248_statement_begin_β
.Lx736_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n251_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx737_240
                        add              rsp, 16;                             jmp   n250_lit_integer_β
.Lx737_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n252_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n253_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:   add              rsp, 48;                             jmp   n254_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_begin_α:                                                       jmp   n255_var_α
n254_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_var_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_subscript_α
n256_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n254_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n257_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx745_240
                        add              rsp, 16;                             jmp   n256_var_β
.Lx745_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n259_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   add              rsp, 48;                             jmp   NRETURN
#=======================================================================================================================
# PSH_x  <stmt 9, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α:                                                       jmp   n261_statement_end_α
n260_statement_begin_β:                                                       jmp   n262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:                                                         jmp   n262_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α:                                                       jmp   n263_func_activate_α
n262_statement_begin_β:                                                       jmp   n284_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n263_func_activate_α:   mov              rdi, qword ptr [rip + .Lx756_0]
                        mov              rsi, qword ptr [rip + .Lx756_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_statement_end_α
n263_func_activate_β:                                                         jmp   n262_statement_begin_β
.Lx756_0:               .quad            .Lx756_0_s
.Lx756_0_s:             .string          "DRF"
.Lx756_1:               .quad            .Lx756_1_s
.Lx756_1_s:             .string          "nm"
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:                                                         jmp   n284_statement_begin_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
DRF_body:                                                                     jmp   n266_var_α
n265_statement_begin_β:                                                       jmp   n280_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx763_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n268_match_pos_α
n267_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx763_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx763_1
                                                                              jmp   .Lx763_0
.Lx763_1:
n267_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n280_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   n267_match_begin_β
                                                                              jmp   n269_match_any_α
n268_match_pos_β:                                                             jmp   n267_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n269_match_any_α:       mov              eax, r14d
                        cmp              eax, r15d;                           jge   n267_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n267_match_begin_β
                        add              r14d, 1;                             jmp   n270_match_rpos_α
n269_match_any_β:       sub              r14d, 1;                             jmp   n267_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n270_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n269_match_any_β
                                                                              jmp   n271_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n271_match_end_α:       push             r14
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
.Lx769_1:               test             rax, rax;                            je    .Lx769_2
                        lea              rcx, [rip + .Lx769_3]
                        lea              rdx, [rip + .Lx769_4];               jmp   rax
.Lx769_3:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx769_1
.Lx769_4:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx769_1
.Lx769_2:               call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n272_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   add              rsp, 16;                             jmp   n273_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_begin_α:                                                       jmp   n274_var_α
n273_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_var_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_subscript_α
n275_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n273_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n276_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx776_240
                        add              rsp, 16;                             jmp   n275_var_β
.Lx776_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_deref_α
n276_subscript_β:       add              rsp, 16;                             jmp   n275_var_β
#-----------------------------------------------------------------------------------------------------------------------
n277_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx777_240
                        add              rsp, 16;                             jmp   n276_subscript_β
.Lx777_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n279_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α:                                                       jmp   n281_var_α
n280_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n283_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# DRF_x  <stmt 14, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_begin_α:                                                       jmp   n285_statement_end_α
n284_statement_begin_β:                                                       jmp   n286_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_end_α:                                                         jmp   n286_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_begin_α:                                                       jmp   n287_func_activate_α
n286_statement_begin_β:                                                       jmp   n321_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n287_func_activate_α:   mov              rdi, qword ptr [rip + .Lx794_0]
                        mov              rsi, qword ptr [rip + .Lx794_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n288_statement_end_α
n287_func_activate_β:                                                         jmp   n286_statement_begin_β
.Lx794_0:               .quad            .Lx794_0_s
.Lx794_0_s:             .string          "ADD"
.Lx794_1:               .quad            .Lx794_1_s
.Lx794_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_end_α:                                                         jmp   n321_statement_begin_α
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
ADD_body:                                                                     jmp   n290_var_α
n289_statement_begin_β:                                                       jmp   n297_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_var_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_subscript_α
n291_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n289_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n292_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx801_240
                        add              rsp, 16;                             jmp   n291_var_β
.Lx801_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_deref_α
n292_subscript_β:       add              rsp, 16;                             jmp   n291_var_β
#-----------------------------------------------------------------------------------------------------------------------
n293_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx802_240
                        add              rsp, 16;                             jmp   n292_subscript_β
.Lx802_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_call_α
n293_deref_β:           add              rsp, 16;                             jmp   n292_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig804z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig804z:              .quad            1
                        .quad            .Lx804_2
                        .quad            .Lx804_2
                        .quad            16
.Lx804_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx804_29
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
.Lx804_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx804_240
                        add              rsp, 16;                             jmp   n293_deref_β
.Lx804_240:                                                                   jmp   n295_assign_α
n294_call_β:                                                                  jmp   n293_deref_β
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n296_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:   add              rsp, 80;                             jmp   n297_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_begin_α:                                                       jmp   n298_var_α
n297_statement_begin_β:                                                       jmp   n303_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_binop_α
n299_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n297_statement_begin_β
.Lx811_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx812_240
                        add              rsp, 16;                             jmp   n299_lit_integer_β
.Lx812_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n302_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_end_α:   add              rsp, 48;                             jmp   n303_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_begin_α:                                                       jmp   n304_var_α
n303_statement_begin_β:                                                       jmp   n316_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_subscript_α
n305_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n303_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n306_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx820_240
                        add              rsp, 16;                             jmp   n305_var_β
.Lx820_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_var_α
n306_subscript_β:       add              rsp, 16;                             jmp   n305_var_β
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_var_α
n307_var_β:             add              rsp, 16;                             jmp   n306_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_subscript_α
n308_var_β:             add              rsp, 16;                             jmp   n307_var_β
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx823_240
                        add              rsp, 16;                             jmp   n308_var_β
.Lx823_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_deref_α
n309_subscript_β:       add              rsp, 16;                             jmp   n308_var_β
#-----------------------------------------------------------------------------------------------------------------------
n310_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx824_240
                        add              rsp, 16;                             jmp   n309_subscript_β
.Lx824_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_call_α
n310_deref_β:           add              rsp, 16;                             jmp   n309_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig826z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig826z:              .quad            1
                        .quad            .Lx826_2
                        .quad            .Lx826_2
                        .quad            16
.Lx826_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx826_29
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
.Lx826_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx826_240
                        add              rsp, 16;                             jmp   n310_deref_β
.Lx826_240:                                                                   jmp   n312_var_α
n311_call_β:                                                                  jmp   n310_deref_β
.Lx826_0:               .quad            .Lx826_0_s
.Lx826_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_binop_α
n312_var_β:             add              rsp, 32;                             jmp   n310_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n313_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx828_240
                        add              rsp, 16;                             jmp   n312_var_β
.Lx828_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n314_assign_var_α
n313_binop_β:           add              rsp, 16;                             jmp   n312_var_β
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx829_240
                        add              rsp, 16;                             jmp   n313_binop_β
.Lx829_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_end_α:   add              rsp, 176;                            jmp   n316_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_begin_α:                                                       jmp   n317_lit_string_α
n316_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n318_call_α
.Lx834_0:               .quad            .Lx834_0_s
.Lx834_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd836:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd836]
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
                        cmp              eax, 104;                            jne   .Lx835_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n316_statement_begin_β
.Lx835_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_assign_α
n318_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n316_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# ADD_x  <stmt 20, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:                                                       jmp   n322_statement_end_α
n321_statement_begin_β:                                                       jmp   n323_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_end_α:                                                         jmp   n323_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_begin_α:                                                       jmp   n324_func_activate_α
n323_statement_begin_β:                                                       jmp   n358_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n324_func_activate_α:   mov              rdi, qword ptr [rip + .Lx847_0]
                        mov              rsi, qword ptr [rip + .Lx847_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_statement_end_α
n324_func_activate_β:                                                         jmp   n323_statement_begin_β
.Lx847_0:               .quad            .Lx847_0_s
.Lx847_0_s:             .string          "SUB"
.Lx847_1:               .quad            .Lx847_1_s
.Lx847_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_end_α:                                                         jmp   n358_statement_begin_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
SUB_body:                                                                     jmp   n327_var_α
n326_statement_begin_β:                                                       jmp   n334_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_subscript_α
n328_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n326_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n329_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx854_240
                        add              rsp, 16;                             jmp   n328_var_β
.Lx854_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_deref_α
n329_subscript_β:       add              rsp, 16;                             jmp   n328_var_β
#-----------------------------------------------------------------------------------------------------------------------
n330_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx855_240
                        add              rsp, 16;                             jmp   n329_subscript_β
.Lx855_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_call_α
n330_deref_β:           add              rsp, 16;                             jmp   n329_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig857z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig857z:              .quad            1
                        .quad            .Lx857_2
                        .quad            .Lx857_2
                        .quad            16
.Lx857_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx857_29
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
.Lx857_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx857_240
                        add              rsp, 16;                             jmp   n330_deref_β
.Lx857_240:                                                                   jmp   n332_assign_α
n331_call_β:                                                                  jmp   n330_deref_β
.Lx857_0:               .quad            .Lx857_0_s
.Lx857_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n332_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n333_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_end_α:   add              rsp, 80;                             jmp   n334_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_begin_α:                                                       jmp   n335_var_α
n334_statement_begin_β:                                                       jmp   n340_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n337_binop_α
n336_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n334_statement_begin_β
.Lx864_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n337_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx865_240
                        add              rsp, 16;                             jmp   n336_lit_integer_β
.Lx865_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n339_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_end_α:   add              rsp, 48;                             jmp   n340_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_begin_α:                                                       jmp   n341_var_α
n340_statement_begin_β:                                                       jmp   n353_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_subscript_α
n342_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n340_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n343_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx873_240
                        add              rsp, 16;                             jmp   n342_var_β
.Lx873_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_var_α
n343_subscript_β:       add              rsp, 16;                             jmp   n342_var_β
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_var_α
n344_var_β:             add              rsp, 16;                             jmp   n343_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_subscript_α
n345_var_β:             add              rsp, 16;                             jmp   n344_var_β
#-----------------------------------------------------------------------------------------------------------------------
n346_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx876_240
                        add              rsp, 16;                             jmp   n345_var_β
.Lx876_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_deref_α
n346_subscript_β:       add              rsp, 16;                             jmp   n345_var_β
#-----------------------------------------------------------------------------------------------------------------------
n347_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx877_240
                        add              rsp, 16;                             jmp   n346_subscript_β
.Lx877_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_call_α
n347_deref_β:           add              rsp, 16;                             jmp   n346_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig879z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig879z:              .quad            1
                        .quad            .Lx879_2
                        .quad            .Lx879_2
                        .quad            16
.Lx879_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx879_29
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
.Lx879_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx879_240
                        add              rsp, 16;                             jmp   n347_deref_β
.Lx879_240:                                                                   jmp   n349_var_α
n348_call_β:                                                                  jmp   n347_deref_β
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_binop_α
n349_var_β:             add              rsp, 32;                             jmp   n347_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n350_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx881_240
                        add              rsp, 16;                             jmp   n349_var_β
.Lx881_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n351_assign_var_α
n350_binop_β:           add              rsp, 16;                             jmp   n349_var_β
#-----------------------------------------------------------------------------------------------------------------------
n351_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx882_240
                        add              rsp, 16;                             jmp   n350_binop_β
.Lx882_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_end_α:   add              rsp, 176;                            jmp   n353_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α:                                                       jmp   n354_lit_string_α
n353_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_call_α
.Lx887_0:               .quad            .Lx887_0_s
.Lx887_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd889:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd889]
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
                        cmp              eax, 104;                            jne   .Lx888_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
.Lx888_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_assign_α
n355_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # SUB
                        mov              qword ptr [r9 + 104], rdx;           jmp   n357_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SUB_x  <stmt 26, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_begin_α:                                                       jmp   n359_statement_end_α
n358_statement_begin_β:                                                       jmp   n360_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:                                                         jmp   n360_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_begin_α:                                                       jmp   n361_func_activate_α
n360_statement_begin_β:                                                       jmp   n395_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n361_func_activate_α:   mov              rdi, qword ptr [rip + .Lx900_0]
                        mov              rsi, qword ptr [rip + .Lx900_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n362_statement_end_α
n361_func_activate_β:                                                         jmp   n360_statement_begin_β
.Lx900_0:               .quad            .Lx900_0_s
.Lx900_0_s:             .string          "MUL"
.Lx900_1:               .quad            .Lx900_1_s
.Lx900_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:                                                         jmp   n395_statement_begin_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
MUL_body:                                                                     jmp   n364_var_α
n363_statement_begin_β:                                                       jmp   n371_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_subscript_α
n365_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n363_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n366_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx907_240
                        add              rsp, 16;                             jmp   n365_var_β
.Lx907_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_deref_α
n366_subscript_β:       add              rsp, 16;                             jmp   n365_var_β
#-----------------------------------------------------------------------------------------------------------------------
n367_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx908_240
                        add              rsp, 16;                             jmp   n366_subscript_β
.Lx908_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_call_α
n367_deref_β:           add              rsp, 16;                             jmp   n366_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig910z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig910z:              .quad            1
                        .quad            .Lx910_2
                        .quad            .Lx910_2
                        .quad            16
.Lx910_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx910_29
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
.Lx910_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx910_240
                        add              rsp, 16;                             jmp   n367_deref_β
.Lx910_240:                                                                   jmp   n369_assign_α
n368_call_β:                                                                  jmp   n367_deref_β
.Lx910_0:               .quad            .Lx910_0_s
.Lx910_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n370_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n370_statement_end_α:   add              rsp, 80;                             jmp   n371_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_begin_α:                                                       jmp   n372_var_α
n371_statement_begin_β:                                                       jmp   n377_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n374_binop_α
n373_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n371_statement_begin_β
.Lx917_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n374_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx918_240
                        add              rsp, 16;                             jmp   n373_lit_integer_β
.Lx918_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n375_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n376_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_end_α:   add              rsp, 48;                             jmp   n377_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_begin_α:                                                       jmp   n378_var_α
n377_statement_begin_β:                                                       jmp   n390_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_var_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_subscript_α
n379_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n377_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n380_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx926_240
                        add              rsp, 16;                             jmp   n379_var_β
.Lx926_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_var_α
n380_subscript_β:       add              rsp, 16;                             jmp   n379_var_β
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n382_var_α
n381_var_β:             add              rsp, 16;                             jmp   n380_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_subscript_α
n382_var_β:             add              rsp, 16;                             jmp   n381_var_β
#-----------------------------------------------------------------------------------------------------------------------
n383_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx929_240
                        add              rsp, 16;                             jmp   n382_var_β
.Lx929_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_deref_α
n383_subscript_β:       add              rsp, 16;                             jmp   n382_var_β
#-----------------------------------------------------------------------------------------------------------------------
n384_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx930_240
                        add              rsp, 16;                             jmp   n383_subscript_β
.Lx930_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_call_α
n384_deref_β:           add              rsp, 16;                             jmp   n383_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n385_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig932z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig932z:              .quad            1
                        .quad            .Lx932_2
                        .quad            .Lx932_2
                        .quad            16
.Lx932_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx932_29
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
.Lx932_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx932_240
                        add              rsp, 16;                             jmp   n384_deref_β
.Lx932_240:                                                                   jmp   n386_var_α
n385_call_β:                                                                  jmp   n384_deref_β
.Lx932_0:               .quad            .Lx932_0_s
.Lx932_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_binop_α
n386_var_β:             add              rsp, 32;                             jmp   n384_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n387_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx934_240
                        add              rsp, 16;                             jmp   n386_var_β
.Lx934_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_assign_var_α
n387_binop_β:           add              rsp, 16;                             jmp   n386_var_β
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx935_240
                        add              rsp, 16;                             jmp   n387_binop_β
.Lx935_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_end_α:   add              rsp, 176;                            jmp   n390_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n390_statement_begin_α:                                                       jmp   n391_lit_string_α
n390_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n392_call_α
.Lx940_0:               .quad            .Lx940_0_s
.Lx940_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd942:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd942]
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
                        cmp              eax, 104;                            jne   .Lx941_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n390_statement_begin_β
.Lx941_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n393_assign_α
n392_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n390_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n393_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # MUL
                        mov              qword ptr [r9 + 120], rdx;           jmp   n394_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# MUL_x  <stmt 32, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_begin_α:                                                       jmp   n396_statement_end_α
n395_statement_begin_β:                                                       jmp   n397_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n396_statement_end_α:                                                         jmp   n397_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n397_statement_begin_α:                                                       jmp   n398_func_activate_α
n397_statement_begin_β:                                                       jmp   n432_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n398_func_activate_α:   mov              rdi, qword ptr [rip + .Lx953_0]
                        mov              rsi, qword ptr [rip + .Lx953_1]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n399_statement_end_α
n398_func_activate_β:                                                         jmp   n397_statement_begin_β
.Lx953_0:               .quad            .Lx953_0_s
.Lx953_0_s:             .string          "DIV"
.Lx953_1:               .quad            .Lx953_1_s
.Lx953_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n399_statement_end_α:                                                         jmp   n432_statement_begin_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
DIV_body:                                                                     jmp   n401_var_α
n400_statement_begin_β:                                                       jmp   n408_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_subscript_α
n402_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n400_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n403_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx960_240
                        add              rsp, 16;                             jmp   n402_var_β
.Lx960_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_deref_α
n403_subscript_β:       add              rsp, 16;                             jmp   n402_var_β
#-----------------------------------------------------------------------------------------------------------------------
n404_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx961_240
                        add              rsp, 16;                             jmp   n403_subscript_β
.Lx961_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_call_α
n404_deref_β:           add              rsp, 16;                             jmp   n403_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig963z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig963z:              .quad            1
                        .quad            .Lx963_2
                        .quad            .Lx963_2
                        .quad            16
.Lx963_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx963_29
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
.Lx963_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx963_240
                        add              rsp, 16;                             jmp   n404_deref_β
.Lx963_240:                                                                   jmp   n406_assign_α
n405_call_β:                                                                  jmp   n404_deref_β
.Lx963_0:               .quad            .Lx963_0_s
.Lx963_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n406_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n407_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_end_α:   add              rsp, 80;                             jmp   n408_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_begin_α:                                                       jmp   n409_var_α
n408_statement_begin_β:                                                       jmp   n414_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n411_binop_α
n410_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n408_statement_begin_β
.Lx970_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n411_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx971_240
                        add              rsp, 16;                             jmp   n410_lit_integer_β
.Lx971_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n412_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n413_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_end_α:   add              rsp, 48;                             jmp   n414_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_begin_α:                                                       jmp   n415_var_α
n414_statement_begin_β:                                                       jmp   n427_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_subscript_α
n416_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n414_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n417_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx979_240
                        add              rsp, 16;                             jmp   n416_var_β
.Lx979_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n418_var_α
n417_subscript_β:       add              rsp, 16;                             jmp   n416_var_β
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_var_α
n418_var_β:             add              rsp, 16;                             jmp   n417_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_subscript_α
n419_var_β:             add              rsp, 16;                             jmp   n418_var_β
#-----------------------------------------------------------------------------------------------------------------------
n420_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx982_240
                        add              rsp, 16;                             jmp   n419_var_β
.Lx982_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_deref_α
n420_subscript_β:       add              rsp, 16;                             jmp   n419_var_β
#-----------------------------------------------------------------------------------------------------------------------
n421_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx983_240
                        add              rsp, 16;                             jmp   n420_subscript_β
.Lx983_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_call_α
n421_deref_β:           add              rsp, 16;                             jmp   n420_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n422_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig985z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig985z:              .quad            1
                        .quad            .Lx985_2
                        .quad            .Lx985_2
                        .quad            16
.Lx985_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx985_29
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
.Lx985_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx985_240
                        add              rsp, 16;                             jmp   n421_deref_β
.Lx985_240:                                                                   jmp   n423_var_α
n422_call_β:                                                                  jmp   n421_deref_β
.Lx985_0:               .quad            .Lx985_0_s
.Lx985_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_binop_α
n423_var_β:             add              rsp, 32;                             jmp   n421_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n424_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx987_240
                        add              rsp, 16;                             jmp   n423_var_β
.Lx987_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n425_assign_var_α
n424_binop_β:           add              rsp, 16;                             jmp   n423_var_β
#-----------------------------------------------------------------------------------------------------------------------
n425_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx988_240
                        add              rsp, 16;                             jmp   n424_binop_β
.Lx988_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_end_α:   add              rsp, 176;                            jmp   n427_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n427_statement_begin_α:                                                       jmp   n428_lit_string_α
n427_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_call_α
.Lx993_0:               .quad            .Lx993_0_s
.Lx993_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd995:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd995]
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
                        cmp              eax, 104;                            jne   .Lx994_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n427_statement_begin_β
.Lx994_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_assign_α
n429_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n427_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n430_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # DIV
                        mov              qword ptr [r9 + 136], rdx;           jmp   n431_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# DIV_x  <stmt 38, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_begin_α:                                                       jmp   n433_statement_end_α
n432_statement_begin_β:                                                       jmp   n434_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_end_α:                                                         jmp   n434_statement_begin_α
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(SGN_x)
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α:                                                       jmp   n435_func_activate_α
n434_statement_begin_β:                                                       jmp   n476_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n435_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1006_0]
                        mov              rsi, qword ptr [rip + .Lx1006_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n436_statement_end_α
n435_func_activate_β:                                                         jmp   n434_statement_begin_β
.Lx1006_0:              .quad            .Lx1006_0_s
.Lx1006_0_s:            .string          "SGN"
.Lx1006_1:              .quad            .Lx1006_1_s
.Lx1006_1_s:            .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n436_statement_end_α:                                                         jmp   n476_statement_begin_α
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
SGN_body:                                                                     jmp   n438_var_α
n437_statement_begin_β:                                                       jmp   n445_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_var_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_subscript_α
n439_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n437_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n440_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1013_240
                        add              rsp, 16;                             jmp   n439_var_β
.Lx1013_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_deref_α
n440_subscript_β:       add              rsp, 16;                             jmp   n439_var_β
#-----------------------------------------------------------------------------------------------------------------------
n441_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1014_240
                        add              rsp, 16;                             jmp   n440_subscript_β
.Lx1014_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_call_α
n441_deref_β:           add              rsp, 16;                             jmp   n440_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n442_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1016z]
                        lea              rax, [rip + DRF_alpha];              jmp   rax
.Lsig1016z:             .quad            1
                        .quad            .Lx1016_2
                        .quad            .Lx1016_2
                        .quad            16
.Lx1016_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1016_29
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
.Lx1016_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1016_240
                        add              rsp, 16;                             jmp   n441_deref_β
.Lx1016_240:                                                                  jmp   n443_assign_α
n442_call_β:                                                                  jmp   n441_deref_β
.Lx1016_0:              .quad            .Lx1016_0_s
.Lx1016_0_s:            .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n444_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_end_α:   add              rsp, 80;                             jmp   n445_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n445_statement_begin_α:                                                       jmp   n446_var_α
n445_statement_begin_β:                                                       jmp   n451_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n448_binop_α
n447_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n445_statement_begin_β
.Lx1023_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n448_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1024_240
                        add              rsp, 16;                             jmp   n447_lit_integer_β
.Lx1024_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n449_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n449_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n450_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_end_α:   add              rsp, 48;                             jmp   n451_statement_begin_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_begin_α:                                                       jmp   n452_var_α
n451_statement_begin_β:                                                       jmp   n464_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_var_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n454_subscript_α
n453_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n451_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n454_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1032_240
                        add              rsp, 16;                             jmp   n453_var_β
.Lx1032_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n455_deref_α
n454_subscript_β:       add              rsp, 16;                             jmp   n453_var_β
#-----------------------------------------------------------------------------------------------------------------------
n455_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1033_240
                        add              rsp, 16;                             jmp   n454_subscript_β
.Lx1033_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n456_lit_string_α
n455_deref_β:           add              rsp, 16;                             jmp   n454_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_call_α
n456_lit_string_β:      add              rsp, 16;                             jmp   n455_deref_β
.Lx1034_0:              .quad            .Lx1034_0_s
.Lx1034_0_s:            .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:            sub              rsp, 16
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
.Lrkfnzd1036:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1036]
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
                        cmp              eax, 104;                            jne   .Lx1035_240
                        add              rsp, 16;                             jmp   n456_lit_string_β
.Lx1035_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_statement_end_α
n457_call_β:            add              rsp, 16;                             jmp   n456_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n458_statement_end_α:   add              rsp, 96;                             jmp   n459_statement_begin_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n459_statement_begin_α:                                                       jmp   n460_var_α
n459_statement_begin_β:                                                       jmp   n464_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n461_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n461_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n462_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n462_assign_α:          mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n463_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n463_statement_end_α:   add              rsp, 32;                             jmp   n464_statement_begin_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n464_statement_begin_α:                                                       jmp   n465_var_α
n464_statement_begin_β:                                                       jmp   n471_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n466_var_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n467_subscript_α
n466_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n464_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n467_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1050_240
                        add              rsp, 16;                             jmp   n466_var_β
.Lx1050_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n468_var_α
n467_subscript_β:       add              rsp, 16;                             jmp   n466_var_β
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_assign_var_α
n468_var_β:             add              rsp, 16;                             jmp   n467_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n469_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1052_240
                        add              rsp, 16;                             jmp   n468_var_β
.Lx1052_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:   add              rsp, 80;                             jmp   n471_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_begin_α:                                                       jmp   n472_lit_string_α
n471_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n473_call_α
.Lx1057_0:              .quad            .Lx1057_0_s
.Lx1057_0_s:            .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n473_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1059:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1059]
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
                        cmp              eax, 104;                            jne   .Lx1058_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n471_statement_begin_β
.Lx1058_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n474_assign_α
n473_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n471_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n474_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # SGN
                        mov              qword ptr [r9 + 152], rdx;           jmp   n475_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SGN_x  <stmt 46, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n476_statement_begin_α:                                                       jmp   n477_statement_end_α
n476_statement_begin_β:                                                       jmp   n478_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n477_statement_end_α:                                                         jmp   n478_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_begin_α:                                                       jmp   n479_lit_integer_α
n478_statement_begin_β:                                                       jmp   n483_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1069_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n480_call_α
.Lx1069_0:              .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n480_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1071:           .string          "ARRAY"
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
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n478_statement_begin_β
.Lx1070_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n481_assign_α
n480_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n478_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n481_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n482_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_end_α:   add              rsp, 32;                             jmp   n483_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_begin_α:                                                       jmp   n484_keyword_snobol4_α
n483_statement_begin_β:                                                       jmp   n487_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n484_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n485_assign_α
.Lx1077_0:              .quad            .Lx1077_0_s
.Lx1077_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n485_assign_α:          mov              rax, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n486_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n486_statement_end_α:   add              rsp, 16;                             jmp   n487_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n487_statement_begin_α:                                                       jmp   n488_lit_string_α
n487_statement_begin_β:                                                       jmp   n491_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1083_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_assign_α
.Lx1083_0:              .quad            .Lx1083_0_s
.Lx1083_0_s:            .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n489_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n490_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_end_α:   add              rsp, 16;                             jmp   n491_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_begin_α:                                                       jmp   n492_lit_string_α
n491_statement_begin_β:                                                       jmp   n496_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n493_call_α
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_α:            sub              rsp, 16
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1090_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n491_statement_begin_β
.Lx1090_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n494_assign_α
n493_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n491_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n494_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n495_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n495_statement_end_α:   add              rsp, 32;                             jmp   n496_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_begin_α:                                                       jmp   n497_lit_string_α
n496_statement_begin_β:                                                       jmp   n501_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n498_call_α
.Lx1097_0:              .quad            .Lx1097_0_s
.Lx1097_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1099:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1099]
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
                        cmp              eax, 104;                            jne   .Lx1098_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n496_statement_begin_β
.Lx1098_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n499_assign_α
n498_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n496_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n500_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:   add              rsp, 32;                             jmp   n501_statement_begin_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_begin_α:                                                       jmp   n502_var_α
n501_statement_begin_β:                                                       jmp   n510_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n503_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n503_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 536], rdx;           jmp   n504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n505_assign_α
n504_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n501_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n505_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 520], rdx;           jmp   n506_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_call_α
n506_lit_string_β:      add              rsp, 16;                             jmp   n504_var_β
.Lx1109_0:              .quad            .Lx1109_0_s
.Lx1109_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1111:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1111]
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
                        cmp              eax, 104;                            jne   .Lx1110_240
                        add              rsp, 16;                             jmp   n506_lit_string_β
.Lx1110_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_assign_α
n507_call_β:            add              rsp, 16;                             jmp   n506_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n508_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n509_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_end_α:   add              rsp, 64;                             jmp   n510_statement_begin_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_begin_α:                                                       jmp   n511_var_α
n510_statement_begin_β:                                                       jmp   n517_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n512_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n512_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n513_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n514_call_α
n513_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n510_statement_begin_β
.Lx1119_0:              .quad            .Lx1119_0_s
.Lx1119_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n514_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1121:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1121]
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
                        cmp              eax, 104;                            jne   .Lx1120_240
                        add              rsp, 16;                             jmp   n513_lit_string_β
.Lx1120_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n515_assign_α
n514_call_β:            add              rsp, 16;                             jmp   n513_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n515_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n516_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_end_α:   add              rsp, 48;                             jmp   n517_statement_begin_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n517_statement_begin_α:                                                       jmp   n518_var_α
n517_statement_begin_β:                                                       jmp   n528_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n519_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n519_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 600], rdx;           jmp   n520_var_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n521_assign_α
n520_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n517_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 584], rdx;           jmp   n522_var_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n523_assign_α
n522_var_β:             add              rsp, 16;                             jmp   n520_var_β
#-----------------------------------------------------------------------------------------------------------------------
n523_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 568], rdx;           jmp   n524_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n525_call_α
n524_lit_string_β:      add              rsp, 16;                             jmp   n522_var_β
.Lx1133_0:              .quad            .Lx1133_0_s
.Lx1133_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1135:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1135]
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
                        cmp              eax, 104;                            jne   .Lx1134_240
                        add              rsp, 16;                             jmp   n524_lit_string_β
.Lx1134_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n526_assign_α
n525_call_β:            add              rsp, 16;                             jmp   n524_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n526_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n527_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_end_α:   add              rsp, 80;                             jmp   n528_statement_begin_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_begin_α:                                                       jmp   n529_var_α
n528_statement_begin_β:                                                       jmp   n539_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n529_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n530_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n530_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n531_var_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n532_assign_α
n531_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n528_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n533_var_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n534_assign_α
n533_var_β:             add              rsp, 16;                             jmp   n531_var_β
#-----------------------------------------------------------------------------------------------------------------------
n534_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n535_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n536_call_α
n535_lit_string_β:      add              rsp, 16;                             jmp   n533_var_β
.Lx1147_0:              .quad            .Lx1147_0_s
.Lx1147_0_s:            .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n536_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1149:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1149]
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
                        cmp              eax, 104;                            jne   .Lx1148_240
                        add              rsp, 16;                             jmp   n535_lit_string_β
.Lx1148_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n537_assign_α
n536_call_β:            add              rsp, 16;                             jmp   n535_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n537_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n538_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n538_statement_end_α:   add              rsp, 80;                             jmp   n539_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n539_statement_begin_α:                                                       jmp   n540_lit_integer_α
n539_statement_begin_β:                                                       jmp   n547_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n541_call_α
.Lx1155_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd401:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd401]
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
                        cmp              eax, 104;                            jne   .Lx1156_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n539_statement_begin_β
.Lx1156_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n542_assign_α
n541_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n539_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n542_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 656], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 664], rdx;           jmp   n543_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n544_call_α
n543_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n539_statement_begin_β
.Lx1158_0:              .quad            .Lx1158_0_s
.Lx1158_0_s:            .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n544_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1160:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1160]
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
                        cmp              eax, 104;                            jne   .Lx1159_240
                        add              rsp, 16;                             jmp   n543_lit_string_β
.Lx1159_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n545_assign_α
n544_call_β:            add              rsp, 16;                             jmp   n543_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n545_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n546_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n546_statement_end_α:   add              rsp, 64;                             jmp   n547_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n547_statement_begin_α:                                                       jmp   n548_var_α
n547_statement_begin_β:                                                       jmp   n558_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n548_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n549_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n549_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 712], rdx;           jmp   n550_var_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n551_assign_α
n550_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n547_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n551_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 688], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 696], rdx;           jmp   n552_var_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n553_assign_α
n552_var_β:             add              rsp, 16;                             jmp   n550_var_β
#-----------------------------------------------------------------------------------------------------------------------
n553_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 680], rdx;           jmp   n554_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n555_call_α
n554_lit_string_β:      add              rsp, 16;                             jmp   n552_var_β
.Lx1172_0:              .quad            .Lx1172_0_s
.Lx1172_0_s:            .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n555_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1174:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1174]
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
                        cmp              eax, 104;                            jne   .Lx1173_240
                        add              rsp, 16;                             jmp   n554_lit_string_β
.Lx1173_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n556_assign_α
n555_call_β:            add              rsp, 16;                             jmp   n554_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n556_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n557_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_end_α:   add              rsp, 80;                             jmp   n558_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n558_statement_begin_α:                                                       jmp   n559_lit_string_α
n558_statement_begin_β:                                                       jmp   n563_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n560_lit_integer_α
.Lx1180_0:              .quad            .Lx1180_0_s
.Lx1180_0_s:            .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n561_call_α
n560_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n558_statement_begin_β
.Lx1181_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n561_call_α:            sub              rsp, 16
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
.Lrkfnzd1183:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1183]
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
                        cmp              eax, 104;                            jne   .Lx1182_240
                        add              rsp, 16;                             jmp   n560_lit_integer_β
.Lx1182_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n562_statement_end_α
n561_call_β:            add              rsp, 16;                             jmp   n560_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n562_statement_end_α:   add              rsp, 48;                             jmp   n563_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n563_statement_begin_α:                                                       jmp   n564_lit_integer_α
n563_statement_begin_β:                                                       jmp   n568_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n565_call_α
.Lx1188_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n565_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd425:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd425]
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
                        cmp              eax, 104;                            jne   .Lx1189_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n563_statement_begin_β
.Lx1189_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n566_assign_α
n565_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n563_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n566_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # nl
                        mov              qword ptr [r9 + 408], rdx;           jmp   n567_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n567_statement_end_α:   add              rsp, 32;                             jmp   n568_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n568_statement_begin_α:                                                       jmp   n569_call_α
n568_statement_begin_β:                                                       jmp   n572_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n569_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1196:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1196]
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
                        cmp              eax, 104;                            jne   .Lx1195_240
                        add              rsp, 16;                             jmp   n568_statement_begin_β
.Lx1195_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n570_assign_α
n569_call_β:            add              rsp, 16;                             jmp   n568_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n570_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n571_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n571_statement_end_α:   add              rsp, 16;                             jmp   n572_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_begin_α:                                                       jmp   n573_var_α
n572_statement_begin_β:                                                       jmp   n579_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n574_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n575_subscript_α
n574_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n572_statement_begin_β
.Lx1203_0:              .quad            .Lx1203_0_s
.Lx1203_0_s:            .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n575_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1204_240
                        add              rsp, 16;                             jmp   n574_lit_string_β
.Lx1204_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n576_lit_integer_α
n575_subscript_β:       add              rsp, 16;                             jmp   n574_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n576_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n577_assign_var_α
n576_lit_integer_β:     add              rsp, 16;                             jmp   n575_subscript_β
.Lx1205_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n577_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1206_240
                        add              rsp, 16;                             jmp   n576_lit_integer_β
.Lx1206_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n578_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n578_statement_end_α:   add              rsp, 80;                             jmp   n579_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n579_statement_begin_α:                                                       jmp   n580_var_α
n579_statement_begin_β:                                                       jmp   n586_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n581_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n582_subscript_α
n581_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n579_statement_begin_β
.Lx1212_0:              .quad            .Lx1212_0_s
.Lx1212_0_s:            .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n582_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1213_240
                        add              rsp, 16;                             jmp   n581_lit_string_β
.Lx1213_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n583_lit_integer_α
n582_subscript_β:       add              rsp, 16;                             jmp   n581_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n584_assign_var_α
n583_lit_integer_β:     add              rsp, 16;                             jmp   n582_subscript_β
.Lx1214_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n584_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1215_240
                        add              rsp, 16;                             jmp   n583_lit_integer_β
.Lx1215_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n585_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_end_α:   add              rsp, 80;                             jmp   n586_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n586_statement_begin_α:                                                       jmp   n587_var_α
n586_statement_begin_β:                                                       jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n587_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n588_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n589_subscript_α
n588_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n586_statement_begin_β
.Lx1221_0:              .quad            .Lx1221_0_s
.Lx1221_0_s:            .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n589_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1222_240
                        add              rsp, 16;                             jmp   n588_lit_string_β
.Lx1222_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n590_lit_integer_α
n589_subscript_β:       add              rsp, 16;                             jmp   n588_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n591_assign_var_α
n590_lit_integer_β:     add              rsp, 16;                             jmp   n589_subscript_β
.Lx1223_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n591_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1224_240
                        add              rsp, 16;                             jmp   n590_lit_integer_β
.Lx1224_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n592_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_end_α:   add              rsp, 80;                             jmp   n593_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_begin_α:                                                       jmp   n594_var_α
n593_statement_begin_β:                                                       jmp   n641_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n594_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1229_240
                        add              rsp, 16;                             jmp   n593_statement_begin_β
.Lx1229_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n595_assign_α
.Lx1229_0:              .quad            .Lx1229_0_s
.Lx1229_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n595_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # line
                        mov              qword ptr [r9 + 424], rdx;           jmp   n596_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n596_statement_end_α:   add              rsp, 16;                             jmp   n597_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_begin_α:                                                       jmp   n598_var_α
n597_statement_begin_β:                                                       jmp   n605_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n599_var_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # line
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n600_binop_α
n599_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n597_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n600_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n601_var_α
n600_binop_β:           add              rsp, 16;                             jmp   n599_var_β
#-----------------------------------------------------------------------------------------------------------------------
n601_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # nl
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n602_binop_α
n601_var_β:             add              rsp, 16;                             jmp   n600_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n602_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n603_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n603_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n604_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n604_statement_end_α:   add              rsp, 80;                             jmp   n605_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n605_statement_begin_α:                                                       jmp   n606_var_α
n605_statement_begin_β:                                                       jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n606_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n607_call_α
#-----------------------------------------------------------------------------------------------------------------------
n607_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1247:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1247]
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
                        cmp              eax, 104;                            jne   .Lx1246_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n605_statement_begin_β
.Lx1246_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n608_lit_integer_α
n607_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n605_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1248_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n609_coerce_numeric_α
n608_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n605_statement_begin_β
.Lx1248_0:              .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n609_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1250_1
                        cmp              eax, 3;                              jne   .Lx1250_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1250_0
.Lx1250_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n610_coerce_numeric_α
.Lx1250_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n610_coerce_numeric_α
n609_coerce_numeric_β:  add              rsp, 16;                             jmp   n608_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n610_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1252_1
                        cmp              eax, 3;                              jne   .Lx1252_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1252_0
.Lx1252_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n611_cmp_test_α
.Lx1252_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n611_cmp_test_α
n610_coerce_numeric_β:  add              rsp, 16;                             jmp   n609_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n611_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1254_240
                        add              rsp, 16;                             jmp   n610_coerce_numeric_β
.Lx1254_240:                                                                  jmp   n612_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n612_statement_end_α:   add              rsp, 96;                             jmp   n613_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n613_statement_begin_α:                                                       jmp   n614_var_α
n613_statement_begin_β:                                                       jmp   n619_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n615_var_α
#-----------------------------------------------------------------------------------------------------------------------
n615_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n616_binop_α
n615_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n613_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n616_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n617_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n617_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n618_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n618_statement_end_α:   add              rsp, 48;                             jmp   n619_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n619_statement_begin_α:                                                       jmp   n620_lit_string_α
n619_statement_begin_β:                                                       jmp   n623_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n621_assign_α
.Lx1267_0:              .quad            .Lx1267_0_s
.Lx1267_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n621_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n622_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n622_statement_end_α:   add              rsp, 16;                             jmp   n623_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n623_statement_begin_α:                                                       jmp   n624_var_α
n623_statement_begin_β:                                                       jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n625_call_α
#-----------------------------------------------------------------------------------------------------------------------
n625_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1275:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1275]
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
                        cmp              eax, 104;                            jne   .Lx1274_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n623_statement_begin_β
.Lx1274_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n626_lit_integer_α
n625_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n623_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n627_coerce_numeric_α
n626_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n623_statement_begin_β
.Lx1276_0:              .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n627_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1278_1
                        cmp              eax, 3;                              jne   .Lx1278_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1278_0
.Lx1278_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n628_coerce_numeric_α
.Lx1278_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_coerce_numeric_α
n627_coerce_numeric_β:  add              rsp, 16;                             jmp   n626_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n628_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1280_1
                        cmp              eax, 3;                              jne   .Lx1280_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1280_0
.Lx1280_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n629_cmp_test_α
.Lx1280_0:              lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_cmp_test_α
n628_coerce_numeric_β:  add              rsp, 16;                             jmp   n627_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n629_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1282_240
                        add              rsp, 16;                             jmp   n628_coerce_numeric_β
.Lx1282_240:                                                                  jmp   n630_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_end_α:   add              rsp, 96;                             jmp   n631_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n631_statement_begin_α:                                                       jmp   n632_var_α
n631_statement_begin_β:                                                       jmp   n637_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n632_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n633_var_α
#-----------------------------------------------------------------------------------------------------------------------
n633_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n634_binop_α
n633_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n631_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n634_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n635_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n636_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n636_statement_end_α:   add              rsp, 48;                             jmp   n637_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n637_statement_begin_α:                                                       jmp   n638_lit_string_α
n637_statement_begin_β:                                                       jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n639_assign_α
.Lx1295_0:              .quad            .Lx1295_0_s
.Lx1295_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n639_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n640_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n640_statement_end_α:   add              rsp, 16;                             jmp   n593_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n641_statement_begin_α:                                                       jmp   n642_var_α
n641_statement_begin_β:                                                       jmp   n649_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n642_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n643_var_α
#-----------------------------------------------------------------------------------------------------------------------
n643_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n644_binop_α
n643_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n641_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n644_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n645_var_α
n644_binop_β:           add              rsp, 16;                             jmp   n643_var_β
#-----------------------------------------------------------------------------------------------------------------------
n645_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n646_binop_α
n645_var_β:             add              rsp, 16;                             jmp   n644_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n646_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n647_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n647_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n648_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n648_statement_end_α:   add              rsp, 80;                             jmp   n649_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n649_statement_begin_α:                                                       jmp   n650_call_α
n649_statement_begin_β:                                                       jmp   n653_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n650_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1312:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1312]
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
                        cmp              eax, 104;                            jne   .Lx1311_240
                        add              rsp, 16;                             jmp   n649_statement_begin_β
.Lx1311_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n651_assign_α
n650_call_β:            add              rsp, 16;                             jmp   n649_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n651_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # t0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n652_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n652_statement_end_α:   add              rsp, 16;                             jmp   n653_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n653_statement_begin_α:                                                       jmp   n654_var_α
n653_statement_begin_β:                                                       jmp   n673_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n654_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n655_var_α
#-----------------------------------------------------------------------------------------------------------------------
n655_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n656_assign_α
n655_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n673_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n656_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1320_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n657_match_begin_α
n656_assign_β:                                                                jmp   n655_var_β
.Lx1320_0:              .quad            .Lx1320_0_s
.Lx1320_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n657_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1322_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n658_match_defer_α
n657_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1322_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1322_1
                                                                              jmp   .Lx1322_0
.Lx1322_1:
n657_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n656_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n658_match_defer_α:     lea              rdi, [rip + .S16]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx1323_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1323_4]
                        lea              r11, [rip + .Lx1323_5];              jmp   rax
.Lx1323_4:                                                                    jmp   n659_match_end_α
.Lx1323_5:                                                                    jmp   n657_match_begin_β
.Lx1323_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S16]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx1323_2:              test             rax, rax;                            je    .Lx1323_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1323_7]
                        lea              rdx, [rip + .Lx1323_8];              jmp   rax
.Lx1323_7:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1323_2
.Lx1323_8:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1323_2
.Lx1323_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n657_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1323_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n659_match_end_α
.Lx1323_6:              add              rsp, 16;                             jmp   n657_match_begin_β
n658_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n659_match_end_α:       push             r14
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
.Lx1325_1:              test             rax, rax;                            je    .Lx1325_2
                        lea              rcx, [rip + .Lx1325_3]
                        lea              rdx, [rip + .Lx1325_4];              jmp   rax
.Lx1325_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1325_1
.Lx1325_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1325_1
.Lx1325_2:              call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n660_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_end_α:   add              rsp, 32;                             jmp   n661_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n661_statement_begin_α:                                                       jmp   n662_call_α
n661_statement_begin_β:                                                       jmp   n665_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n662_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1331:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1331]
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
                        cmp              eax, 104;                            jne   .Lx1330_240
                        add              rsp, 16;                             jmp   n661_statement_begin_β
.Lx1330_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n663_assign_α
n662_call_β:            add              rsp, 16;                             jmp   n661_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n663_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n664_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n664_statement_end_α:   add              rsp, 16;                             jmp   n665_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n665_statement_begin_α:                                                       jmp   n666_lit_string_α
n665_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n667_var_α
.Lx1337_0:              .quad            .Lx1337_0_s
.Lx1337_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n667_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n668_var_α
n667_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n665_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n668_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n669_binop_α
n668_var_β:             add              rsp, 16;                             jmp   n667_var_β
#-----------------------------------------------------------------------------------------------------------------------
n669_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1340_240
                        add              rsp, 16;                             jmp   n668_var_β
.Lx1340_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n670_binop_α
n669_binop_β:           add              rsp, 16;                             jmp   n668_var_β
#-----------------------------------------------------------------------------------------------------------------------
n670_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n671_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n671_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1342_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n672_statement_end_α
.Lx1342_0:              .quad            .Lx1342_0_s
.Lx1342_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n672_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n673_statement_begin_α:                                                       jmp   n674_call_α
n673_statement_begin_β:                                                       jmp   n677_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n674_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1348:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1348]
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
                        cmp              eax, 104;                            jne   .Lx1347_240
                        add              rsp, 16;                             jmp   n673_statement_begin_β
.Lx1347_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n675_assign_α
n674_call_β:            add              rsp, 16;                             jmp   n673_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n675_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n676_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n676_statement_end_α:   add              rsp, 16;                             jmp   n677_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n677_statement_begin_α:                                                       jmp   n678_lit_string_α
n677_statement_begin_β:                                                       jmp   n681_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n679_assign_α
.Lx1354_0:              .quad            .Lx1354_0_s
.Lx1354_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n679_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1355_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n680_statement_end_α
.Lx1355_0:              .quad            .Lx1355_0_s
.Lx1355_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n680_statement_end_α:   add              rsp, 16;                             jmp   n681_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n681_statement_begin_α:                                                       jmp   n682_lit_string_α
n681_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n682_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n683_var_α
.Lx1360_0:              .quad            .Lx1360_0_s
.Lx1360_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n684_var_α
n683_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n681_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n684_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n685_binop_α
n684_var_β:             add              rsp, 16;                             jmp   n683_var_β
#-----------------------------------------------------------------------------------------------------------------------
n685_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1363_240
                        add              rsp, 16;                             jmp   n684_var_β
.Lx1363_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n686_binop_α
n685_binop_β:           add              rsp, 16;                             jmp   n684_var_β
#-----------------------------------------------------------------------------------------------------------------------
n686_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n687_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n687_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1365_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n688_statement_end_α
.Lx1365_0:              .quad            .Lx1365_0_s
.Lx1365_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n688_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
.S7:                    .string          "PAT$4$V2"
.S8:                    .string          "PAT$4$V1"
.S9:                    .string          "PAT$5$V0"
.S10:                   .string          "PAT$5$V2"
.S11:                   .string          "PAT$5$V1"
.S12:                   .string          "PAT$6$V0"
.S13:                   .string          "PAT$7$V0"
.S14:                   .string          "PAT$7$V1"
.S15:                   .string          "PAT$7$V2"
.S16:                   .string          "PATV$0"
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
