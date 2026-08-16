                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_frame_α
proc_stk_push_frame_α:
#-----------------------------------------------------------------------------------------------------------------------
n0_save_restore_α:                                                            jmp   n1_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_deferred_α:     lea              rax, [rip + stk_push_frame_body];    jmp   rax
                                                                              jmp   n2_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n2_save_restore_α:
stk_push_frame_alpha:   sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # stk_push_frame
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx8_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # v
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx8_41
.Lx8_10:                mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx8_41:                lea              r10, [rip + stk_push_frame_gamma]
                        lea              r11, [rip + stk_push_frame_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_push_frame_body];    jmp   rax
stk_push_frame_gamma:   mov              rdi, qword ptr [r9 + 0]              # stk_push_frame
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx8_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx8_110
.Lx8_80:                mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx8_110:               mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_push_frame_omega:   mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # stk_push_frame
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx8_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx8_180
.Lx8_150:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx8_180:               mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_push_item_α
proc_stk_push_item_α:
#-----------------------------------------------------------------------------------------------------------------------
n9_save_restore_α:                                                            jmp   n10_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n10_goto_deferred_α:    lea              rax, [rip + stk_push_item_body];     jmp   rax
                                                                              jmp   n11_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n11_save_restore_α:
stk_push_item_alpha:    sub              rsp, 80
                        mov              rax, qword ptr [r9 + 32]             # stk_push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx17_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # v
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx17_41
.Lx17_10:               mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx17_41:               cmp              rdx, 1;                              jbe   .Lx17_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # cur
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx17_42
.Lx17_11:               mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx17_42:               lea              r10, [rip + stk_push_item_gamma]
                        lea              r11, [rip + stk_push_item_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_push_item_body];     jmp   rax
stk_push_item_gamma:    mov              rdi, qword ptr [r9 + 32]             # stk_push_item
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx17_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx17_110
.Lx17_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx17_110:              cmp              rdx, 1;                              jbe   .Lx17_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx17_111
.Lx17_81:               mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 56], rax
.Lx17_111:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_push_item_omega:    mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # stk_push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx17_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx17_180
.Lx17_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx17_180:              cmp              rdx, 1;                              jbe   .Lx17_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx17_181
.Lx17_151:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 56], rax
.Lx17_181:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#-----------------------------------------------------------------------------------------------------------------------
n18_save_restore_α:                                                           jmp   n19_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_deferred_α:    lea              rax, [rip + stk_pop_into_parent_body]
                                                                              jmp   rax
                                                                              jmp   n20_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
stk_pop_into_parent_alpha:
                        sub              rsp, 96
                        mov              rax, qword ptr [r9 + 64]             # stk_pop_into_parent
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        cmp              rdx, 0;                              jbe   .Lx26_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # child
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx26_41
.Lx26_10:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx26_41:               cmp              rdx, 1;                              jbe   .Lx26_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 96]             # par
                        mov              qword ptr [r9 + 96], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 104]
                        mov              qword ptr [r9 + 104], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx26_42
.Lx26_11:               mov              rax, qword ptr [r9 + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
.Lx26_42:               cmp              rdx, 2;                              jbe   .Lx26_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 112]            # n
                        mov              qword ptr [r9 + 112], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 120]
                        mov              qword ptr [r9 + 120], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx26_43
.Lx26_12:               mov              rax, qword ptr [r9 + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
.Lx26_43:               lea              r10, [rip + stk_pop_into_parent_gamma]
                        lea              r11, [rip + stk_pop_into_parent_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_pop_into_parent_body]
                                                                              jmp   rax
stk_pop_into_parent_gamma:
                        mov              rdi, qword ptr [r9 + 64]             # stk_pop_into_parent
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx26_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # child
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx26_110
.Lx26_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx26_110:              cmp              rdx, 1;                              jbe   .Lx26_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 96], rax             # par
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 104], rax;           jmp   .Lx26_111
.Lx26_81:               mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 104], rax
.Lx26_111:              cmp              rdx, 2;                              jbe   .Lx26_82
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 120], rax;           jmp   .Lx26_112
.Lx26_82:               mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 120], rax
.Lx26_112:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 96
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_pop_into_parent_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # stk_pop_into_parent
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx26_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # child
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx26_180
.Lx26_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx26_180:              cmp              rdx, 1;                              jbe   .Lx26_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 96], rax             # par
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 104], rax;           jmp   .Lx26_181
.Lx26_151:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 104], rax
.Lx26_181:              cmp              rdx, 2;                              jbe   .Lx26_152
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 120], rax;           jmp   .Lx26_182
.Lx26_152:              mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 120], rax
.Lx26_182:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 96
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stk_pop_final_α
proc_stk_pop_final_α:
#-----------------------------------------------------------------------------------------------------------------------
n27_save_restore_α:                                                           jmp   n28_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_deferred_α:    lea              rax, [rip + stk_pop_final_body];     jmp   rax
                                                                              jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n29_save_restore_α:
stk_pop_final_alpha:    sub              rsp, 80
                        mov              rax, qword ptr [r9 + 128]            # stk_pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx35_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 144]            # var
                        mov              qword ptr [r9 + 144], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              qword ptr [r9 + 152], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx35_41
.Lx35_10:               mov              rax, qword ptr [r9 + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
.Lx35_41:               cmp              rdx, 1;                              jbe   .Lx35_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # child
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx35_42
.Lx35_11:               mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx35_42:               lea              r10, [rip + stk_pop_final_gamma]
                        lea              r11, [rip + stk_pop_final_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + stk_pop_final_body];     jmp   rax
stk_pop_final_gamma:    mov              rdi, qword ptr [r9 + 128]            # stk_pop_final
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx35_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 144], rax            # var
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Lx35_110
.Lx35_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Lx35_110:              cmp              rdx, 1;                              jbe   .Lx35_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # child
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx35_111
.Lx35_81:               mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx35_111:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
stk_pop_final_omega:    mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # stk_pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx35_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 144], rax            # var
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Lx35_180
.Lx35_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Lx35_180:              cmp              rdx, 1;                              jbe   .Lx35_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # child
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx35_181
.Lx35_151:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx35_181:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_init_list_α
proc_init_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n36_save_restore_α:                                                           jmp   n37_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_deferred_α:    lea              rax, [rip + init_list_body];         jmp   rax
                                                                              jmp   n38_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n38_save_restore_α:
init_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 160]            # init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx44_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # v
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx44_41
.Lx44_10:               mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx44_41:               lea              r10, [rip + init_list_gamma]
                        lea              r11, [rip + init_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + init_list_body];         jmp   rax
init_list_gamma:        mov              rdi, qword ptr [r9 + 160]            # init_list
                        mov              rsi, qword ptr [r9 + 168]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 160], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 168], rax
                        cmp              rdx, 0;                              jbe   .Lx44_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx44_110
.Lx44_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx44_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
init_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 160], rax            # init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 168], rax
                        cmp              rdx, 0;                              jbe   .Lx44_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx44_180
.Lx44_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx44_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init_list_α
proc_Init_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n45_save_restore_α:                                                           jmp   n46_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_deferred_α:    lea              rax, [rip + Init_list_body];         jmp   rax
                                                                              jmp   n47_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n47_save_restore_α:
Init_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 176]            # Init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 176], 0
                        mov              qword ptr [r9 + 184], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx53_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 192]            # vs
                        mov              qword ptr [r9 + 192], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 200]
                        mov              qword ptr [r9 + 200], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx53_41
.Lx53_10:               mov              rax, qword ptr [r9 + 192]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
.Lx53_41:               lea              r10, [rip + Init_list_gamma]
                        lea              r11, [rip + Init_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Init_list_body];         jmp   rax
Init_list_gamma:        mov              rdi, qword ptr [r9 + 176]            # Init_list
                        mov              rsi, qword ptr [r9 + 184]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 176], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 184], rax
                        cmp              rdx, 0;                              jbe   .Lx53_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx53_110
.Lx53_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx53_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Init_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 176], rax            # Init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 184], rax
                        cmp              rdx, 0;                              jbe   .Lx53_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx53_180
.Lx53_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx53_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_list_α
proc_push_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n54_save_restore_α:                                                           jmp   n55_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_deferred_α:    lea              rax, [rip + push_list_body];         jmp   rax
                                                                              jmp   n56_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n56_save_restore_α:
push_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 208]            # push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx62_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # v
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx62_41
.Lx62_10:               mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx62_41:               lea              r10, [rip + push_list_gamma]
                        lea              r11, [rip + push_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + push_list_body];         jmp   rax
push_list_gamma:        mov              rdi, qword ptr [r9 + 208]            # push_list
                        mov              rsi, qword ptr [r9 + 216]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx62_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx62_110
.Lx62_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx62_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
push_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax            # push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx62_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx62_180
.Lx62_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx62_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_list_α
proc_Push_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n63_save_restore_α:                                                           jmp   n64_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_deferred_α:    lea              rax, [rip + Push_list_body];         jmp   rax
                                                                              jmp   n65_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n65_save_restore_α:
Push_list_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 224]            # Push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 224], 0
                        mov              qword ptr [r9 + 232], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx71_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 192]            # vs
                        mov              qword ptr [r9 + 192], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 200]
                        mov              qword ptr [r9 + 200], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx71_41
.Lx71_10:               mov              rax, qword ptr [r9 + 192]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
.Lx71_41:               lea              r10, [rip + Push_list_gamma]
                        lea              r11, [rip + Push_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Push_list_body];         jmp   rax
Push_list_gamma:        mov              rdi, qword ptr [r9 + 224]            # Push_list
                        mov              rsi, qword ptr [r9 + 232]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx71_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx71_110
.Lx71_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx71_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_list_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax            # Push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx71_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx71_180
.Lx71_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx71_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_push_item_α
proc_push_item_α:
#-----------------------------------------------------------------------------------------------------------------------
n72_save_restore_α:                                                           jmp   n73_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_deferred_α:    lea              rax, [rip + push_item_body];         jmp   rax
                                                                              jmp   n74_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n74_save_restore_α:
push_item_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 240]            # push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx80_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # v
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx80_41
.Lx80_10:               mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx80_41:               lea              r10, [rip + push_item_gamma]
                        lea              r11, [rip + push_item_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + push_item_body];         jmp   rax
push_item_gamma:        mov              rdi, qword ptr [r9 + 240]            # push_item
                        mov              rsi, qword ptr [r9 + 248]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 248], rax
                        cmp              rdx, 0;                              jbe   .Lx80_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx80_110
.Lx80_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx80_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
push_item_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 240], rax            # push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 248], rax
                        cmp              rdx, 0;                              jbe   .Lx80_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx80_180
.Lx80_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx80_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Push_item_α
proc_Push_item_α:
#-----------------------------------------------------------------------------------------------------------------------
n81_save_restore_α:                                                           jmp   n82_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n82_goto_deferred_α:    lea              rax, [rip + Push_item_body];         jmp   rax
                                                                              jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n83_save_restore_α:
Push_item_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 256]            # Push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 256], 0
                        mov              qword ptr [r9 + 264], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx89_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 192]            # vs
                        mov              qword ptr [r9 + 192], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 200]
                        mov              qword ptr [r9 + 200], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx89_41
.Lx89_10:               mov              rax, qword ptr [r9 + 192]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
.Lx89_41:               lea              r10, [rip + Push_item_gamma]
                        lea              r11, [rip + Push_item_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Push_item_body];         jmp   rax
Push_item_gamma:        mov              rdi, qword ptr [r9 + 256]            # Push_item
                        mov              rsi, qword ptr [r9 + 264]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx89_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx89_110
.Lx89_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx89_110:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_item_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax            # Push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx89_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx89_180
.Lx89_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx89_180:              mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_list_α
proc_pop_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n90_save_restore_α:                                                           jmp   n91_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_deferred_α:    lea              rax, [rip + pop_list_body];          jmp   rax
                                                                              jmp   n92_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n92_save_restore_α:
pop_list_alpha:         sub              rsp, 48
                        mov              rax, qword ptr [r9 + 272]            # pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + pop_list_gamma]
                        lea              r11, [rip + pop_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pop_list_body];          jmp   rax
pop_list_gamma:         mov              rdi, qword ptr [r9 + 272]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 280], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pop_list_omega:         mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 280], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_list_α
proc_Pop_list_α:
#-----------------------------------------------------------------------------------------------------------------------
n99_save_restore_α:                                                           jmp   n100_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_deferred_α:   lea              rax, [rip + Pop_list_body];          jmp   rax
                                                                              jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n101_save_restore_α:
Pop_list_alpha:         sub              rsp, 48
                        mov              rax, qword ptr [r9 + 288]            # Pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 288], 0
                        mov              qword ptr [r9 + 296], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + Pop_list_gamma]
                        lea              r11, [rip + Pop_list_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Pop_list_body];          jmp   rax
Pop_list_gamma:         mov              rdi, qword ptr [r9 + 288]
                        mov              rsi, qword ptr [r9 + 296]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Pop_list_omega:         mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pop_final_α
proc_pop_final_α:
#-----------------------------------------------------------------------------------------------------------------------
n108_save_restore_α:                                                          jmp   n109_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n109_goto_deferred_α:   lea              rax, [rip + pop_final_body];         jmp   rax
                                                                              jmp   n110_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n110_save_restore_α:
pop_final_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 304]            # pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx116_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # v
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx116_41
.Lx116_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx116_41:              lea              r10, [rip + pop_final_gamma]
                        lea              r11, [rip + pop_final_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pop_final_body];         jmp   rax
pop_final_gamma:        mov              rdi, qword ptr [r9 + 304]            # pop_final
                        mov              rsi, qword ptr [r9 + 312]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx116_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx116_110
.Lx116_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx116_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pop_final_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax            # pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx116_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx116_180
.Lx116_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx116_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Pop_final_α
proc_Pop_final_α:
#-----------------------------------------------------------------------------------------------------------------------
n117_save_restore_α:                                                          jmp   n118_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n118_goto_deferred_α:   lea              rax, [rip + Pop_final_body];         jmp   rax
                                                                              jmp   n119_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n119_save_restore_α:
Pop_final_alpha:        sub              rsp, 64
                        mov              rax, qword ptr [r9 + 320]            # Pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 320], 0
                        mov              qword ptr [r9 + 328], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx125_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 192]            # vs
                        mov              qword ptr [r9 + 192], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 200]
                        mov              qword ptr [r9 + 200], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx125_41
.Lx125_10:              mov              rax, qword ptr [r9 + 192]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
.Lx125_41:              lea              r10, [rip + Pop_final_gamma]
                        lea              r11, [rip + Pop_final_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + Pop_final_body];         jmp   rax
Pop_final_gamma:        mov              rdi, qword ptr [r9 + 320]            # Pop_final
                        mov              rsi, qword ptr [r9 + 328]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx125_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx125_110
.Lx125_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx125_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Pop_final_omega:        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax            # Pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx125_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 192], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 200], rax;           jmp   .Lx125_180
.Lx125_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 200], rax
.Lx125_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_node_repr_α
proc_node_repr_α:
#-----------------------------------------------------------------------------------------------------------------------
n126_save_restore_α:                                                          jmp   n127_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n127_goto_deferred_α:   lea              rax, [rip + node_repr_body];         jmp   rax
                                                                              jmp   n128_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n128_save_restore_α:
node_repr_alpha:        sub              rsp, 144
                        mov              rax, qword ptr [r9 + 368]            # r
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
                        mov              rax, qword ptr [r9 + 384]            # sep
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              rax, qword ptr [r9 + 112]            # n
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              rax, qword ptr [r9 + 416]            # tag
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 416], 0
                        mov              qword ptr [r9 + 424], 0
                        mov              rax, qword ptr [r9 + 336]            # node_repr
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              qword ptr [rsp + 96], r10
                        mov              qword ptr [rsp + 104], r11
                        mov              qword ptr [rsp + 112], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        cmp              rdx, 0;                              jbe   .Lx134_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 352]            # f
                        mov              qword ptr [r9 + 352], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 360]
                        mov              qword ptr [r9 + 360], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx134_41
.Lx134_10:              mov              rax, qword ptr [r9 + 352]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
.Lx134_41:              lea              r10, [rip + node_repr_gamma]
                        lea              r11, [rip + node_repr_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + node_repr_body];         jmp   rax
node_repr_gamma:        mov              rdi, qword ptr [r9 + 336]            # node_repr
                        mov              rsi, qword ptr [r9 + 344]
                        mov              rcx, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 336], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 344], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 416], rax            # tag
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 384], rax            # sep
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        cmp              rdx, 0;                              jbe   .Lx134_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 352], rax            # f
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 360], rax;           jmp   .Lx134_110
.Lx134_80:              mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 360], rax
.Lx134_110:             mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 144
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
node_repr_omega:        mov              rcx, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 336], rax            # node_repr
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 344], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 416], rax            # tag
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 384], rax            # sep
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        cmp              rdx, 0;                              jbe   .Lx134_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 352], rax            # f
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 360], rax;           jmp   .Lx134_180
.Lx134_150:             mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 360], rax
.Lx134_180:             mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 144
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_node_α
proc_pp_node_α:
#-----------------------------------------------------------------------------------------------------------------------
n135_save_restore_α:                                                          jmp   n136_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n136_goto_deferred_α:   lea              rax, [rip + pp_node_body];           jmp   rax
                                                                              jmp   n137_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n137_save_restore_α:
pp_node_alpha:          sub              rsp, 192
                        mov              rax, qword ptr [r9 + 368]            # r
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 480], 0
                        mov              qword ptr [r9 + 488], 0
                        mov              rax, qword ptr [r9 + 416]            # tag
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 416], 0
                        mov              qword ptr [r9 + 424], 0
                        mov              rax, qword ptr [r9 + 112]            # n
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              rax, qword ptr [r9 + 496]            # nxt
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 496], 0
                        mov              qword ptr [r9 + 504], 0
                        mov              rax, qword ptr [r9 + 432]            # pp_node
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 432], 0
                        mov              qword ptr [r9 + 440], 0
                        mov              qword ptr [rsp + 112], r10
                        mov              qword ptr [rsp + 120], r11
                        mov              qword ptr [rsp + 128], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 192]
                        cmp              rdx, 0;                              jbe   .Lx143_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 352]            # f
                        mov              qword ptr [r9 + 352], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 360]
                        mov              qword ptr [r9 + 360], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx143_41
.Lx143_10:              mov              rax, qword ptr [r9 + 352]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
.Lx143_41:              cmp              rdx, 1;                              jbe   .Lx143_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 448]            # indent
                        mov              qword ptr [r9 + 448], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 456]
                        mov              qword ptr [r9 + 456], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx143_42
.Lx143_11:              mov              rax, qword ptr [r9 + 448]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [r9 + 448], 0
                        mov              qword ptr [r9 + 456], 0
.Lx143_42:              cmp              rdx, 2;                              jbe   .Lx143_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 464]            # suffix
                        mov              qword ptr [r9 + 464], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 472]
                        mov              qword ptr [r9 + 472], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx143_43
.Lx143_12:              mov              rax, qword ptr [r9 + 464]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [r9 + 464], 0
                        mov              qword ptr [r9 + 472], 0
.Lx143_43:              lea              r10, [rip + pp_node_gamma]
                        lea              r11, [rip + pp_node_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pp_node_body];           jmp   rax
pp_node_gamma:          mov              rdi, qword ptr [r9 + 432]            # pp_node
                        mov              rsi, qword ptr [r9 + 440]
                        mov              rcx, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 192]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 432], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 440], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 504], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 416], rax            # tag
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        cmp              rdx, 0;                              jbe   .Lx143_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 352], rax            # f
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 360], rax;           jmp   .Lx143_110
.Lx143_80:              mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 360], rax
.Lx143_110:             cmp              rdx, 1;                              jbe   .Lx143_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 448], rax            # indent
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 456], rax;           jmp   .Lx143_111
.Lx143_81:              mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [r9 + 448], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 456], rax
.Lx143_111:             cmp              rdx, 2;                              jbe   .Lx143_82
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 464], rax            # suffix
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 472], rax;           jmp   .Lx143_112
.Lx143_82:              mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [r9 + 464], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 472], rax
.Lx143_112:             mov              r10, qword ptr [rsp + 112]
                        mov              r11, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 192
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pp_node_omega:          mov              rcx, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 192]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 432], rax            # pp_node
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 440], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 504], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 408], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 416], rax            # tag
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 424], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 488], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax            # r
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        cmp              rdx, 0;                              jbe   .Lx143_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 352], rax            # f
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 360], rax;           jmp   .Lx143_180
.Lx143_150:             mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [r9 + 360], rax
.Lx143_180:             cmp              rdx, 1;                              jbe   .Lx143_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 448], rax            # indent
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 456], rax;           jmp   .Lx143_181
.Lx143_151:             mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [r9 + 448], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 456], rax
.Lx143_181:             cmp              rdx, 2;                              jbe   .Lx143_152
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 464], rax            # suffix
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 472], rax;           jmp   .Lx143_182
.Lx143_152:             mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [r9 + 464], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 472], rax
.Lx143_182:             mov              r10, qword ptr [rsp + 112]
                        mov              r11, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 192
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pp_bank_α
proc_pp_bank_α:
#-----------------------------------------------------------------------------------------------------------------------
n144_save_restore_α:                                                          jmp   n145_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_deferred_α:   lea              rax, [rip + pp_bank_body];           jmp   rax
                                                                              jmp   n146_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n146_save_restore_α:
pp_bank_alpha:          sub              rsp, 48
                        mov              rax, qword ptr [r9 + 512]            # pp_bank
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 520]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 512], 0
                        mov              qword ptr [r9 + 520], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + pp_bank_gamma]
                        lea              r11, [rip + pp_bank_omega]
                        push             r11
                        push             r10
                        lea              rax, [rip + pp_bank_body];           jmp   rax
pp_bank_gamma:          mov              rdi, qword ptr [r9 + 512]
                        mov              rsi, qword ptr [r9 + 520]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 512], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 520], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pp_bank_omega:          mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 512], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 520], rax
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
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n153_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -32], r14d;         jmp   n154_match_defer_α
n153_match_assign_save_β:
                        add              rsp, 16;                             jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 832]            # PAT$0$V0
                        mov              rdx, qword ptr [r9 + 840]
                        cmp              eax, 8;                              jne   .Lx158_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx158_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx158_10
.Lx158_9:               xor              eax, eax
.Lx158_10:              test             rax, rax;                            jz    .Lx158_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx158_4]
                        lea              r11, [rip + .Lx158_5];               jmp   rax
.Lx158_4:                                                                     jmp   n155_match_assign_cond_α
.Lx158_5:               add              rsp, 16;                             jmp   n153_match_assign_save_β
.Lx158_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx158_2:               test             rax, rax;                            je    .Lx158_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx158_7]
                        lea              rdx, [rip + .Lx158_8];               jmp   rax
.Lx158_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx158_2
.Lx158_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx158_2
.Lx158_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx158_240
                        add              rsp, 16;                             jmp   n153_match_assign_save_β
.Lx158_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx158_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n155_match_assign_cond_α
.Lx158_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n153_match_assign_save_β
n154_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n155_match_assign_cond_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
n155_match_assign_cond_β:
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                              jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
proc_PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n161_match_span_α:      sub              rsp, 16
                        movsxd           rcx, r14d
.Lx163_0:               cmp              ecx, r15d;                           jge   .Lx163_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx163_10
                        cmp              esi, 10;                             je    .Lx163_10
                                                                              jmp   .Lx163_1
.Lx163_10:              add              ecx, 1;                              jmp   .Lx163_0
.Lx163_1:               cmp              ecx, r14d;                           jg    .Lx163_240
                        add              rsp, 16;                             jmp   proc_PAT$1_ω
.Lx163_240:             mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   proc_PAT$1_γ
n161_match_span_β:      mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   proc_PAT$1_ω
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
n164_match_notany_α:    mov              eax, r14d
                        cmp              eax, r15d;                           jge   proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   proc_PAT$2_ω
                        add              r14d, 1;                             jmp   n165_match_break_α
n164_match_notany_β:    sub              r14d, 1;                             jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n165_match_break_α:     sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx168_0:               cmp              ecx, r15d;                           jl    .Lx168_240
                        add              rsp, 16;                             jmp   n164_match_notany_β
.Lx168_240:             movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lx168_1
                        add              ecx, 1;                              jmp   .Lx168_0
.Lx168_1:               mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   proc_PAT$2_γ
n165_match_break_β:     mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n164_match_notany_β
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
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
#-----------------------------------------------------------------------------------------------------------------------
n169_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   proc_PAT$3_ω
                        add              r14d, 1;                             jmp   n170_match_assign_save_α
n169_match_lit_β:       sub              r14d, 1;                             jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -32], r14d;         jmp   n171_match_defer_α
n170_match_assign_save_β:
                        add              rsp, 16;                             jmp   n169_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n171_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 848]            # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 856]
                        cmp              eax, 8;                              jne   .Lx190_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx190_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx190_10
.Lx190_9:               xor              eax, eax
.Lx190_10:              test             rax, rax;                            jz    .Lx190_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx190_4]
                        lea              r11, [rip + .Lx190_5];               jmp   rax
.Lx190_4:                                                                     jmp   n172_match_assign_cond_α
.Lx190_5:               add              rsp, 16;                             jmp   n170_match_assign_save_β
.Lx190_0:               push             r14
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
.Lx190_2:               test             rax, rax;                            je    .Lx190_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx190_7]
                        lea              rdx, [rip + .Lx190_8];               jmp   rax
.Lx190_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx190_2
.Lx190_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx190_2
.Lx190_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx190_240
                        add              rsp, 16;                             jmp   n170_match_assign_save_β
.Lx190_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx190_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n172_match_assign_cond_α
.Lx190_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n170_match_assign_save_β
n171_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n172_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -32]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n173_match_defer_α
n172_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n171_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n173_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 864]            # PAT$3$V1
                        mov              rdx, qword ptr [r9 + 872]
                        cmp              eax, 8;                              jne   .Lx193_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx193_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx193_10
.Lx193_9:               xor              eax, eax
.Lx193_10:              test             rax, rax;                            jz    .Lx193_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx193_4]
                        lea              r11, [rip + .Lx193_5];               jmp   rax
.Lx193_4:                                                                     jmp   n174_match_arbno_α
.Lx193_5:               add              rsp, 16;                             jmp   n172_match_assign_cond_β
.Lx193_0:               push             r14
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
.Lx193_2:               test             rax, rax;                            je    .Lx193_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx193_7]
                        lea              rdx, [rip + .Lx193_8];               jmp   rax
.Lx193_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx193_2
.Lx193_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx193_2
.Lx193_3:               add              rsp, 8
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
                        test             eax, eax;                            jns   .Lx193_240
                        add              rsp, 16;                             jmp   n172_match_assign_cond_β
.Lx193_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx193_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n174_match_arbno_α
.Lx193_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n172_match_assign_cond_β
n173_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n174_match_arbno_α:     mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n175_match_defer_α
n174_match_arbno_β:                                                           jmp   n177_match_defer_α
n174_match_arbno_as:    mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n174_match_arbno_af
                        mov              dword ptr [rbp + -44], r14d;         jmp   n175_match_defer_α
n174_match_arbno_af:    mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n174_match_arbno_af
                                                                              jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 928]            # PAT$3$V5
                        mov              rdx, qword ptr [r9 + 936]
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
.Lx196_4:                                                                     jmp   n176_match_lit_α
.Lx196_5:               add              rsp, 16;                             jmp   n174_match_arbno_β
.Lx196_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx196_240
                        add              rsp, 16;                             jmp   n174_match_arbno_β
.Lx196_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx196_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n176_match_lit_α
.Lx196_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   n174_match_arbno_β
n175_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n176_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   proc_PAT$3_ω
                        add              r14d, 1;                             jmp   proc_PAT$3_γ
n176_match_lit_β:       sub              r14d, 1;                             jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_match_defer_α:     mov              rax, qword ptr [r9 + 912]            # PAT$3$V4
                        mov              rdx, qword ptr [r9 + 920]
                        cmp              eax, 8;                              jne   .Lx199_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx199_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx199_10
.Lx199_9:               xor              eax, eax
.Lx199_10:              test             rax, rax;                            jz    .Lx199_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx199_4]
                        lea              r11, [rip + .Lx199_5];               jmp   rax
.Lx199_4:                                                                     jmp   n178_match_fence1_α
.Lx199_5:                                                                     jmp   n174_match_arbno_af
.Lx199_0:               push             r14
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
.Lx199_2:               test             rax, rax;                            je    .Lx199_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx199_7]
                        lea              rdx, [rip + .Lx199_8];               jmp   rax
.Lx199_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx199_2
.Lx199_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx199_2
.Lx199_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n174_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx199_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n178_match_fence1_α
.Lx199_6:               add              rsp, 16;                             jmp   n174_match_arbno_af
n177_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n178_match_fence1_α:    mov              qword ptr [rbp + -64], rsp;          jmp   n179_match_alternate_α
n178_match_fence1_as:   mov              rsp, qword ptr [rbp + -64];          jmp   n174_match_arbno_as
n178_match_fence1_af:
n178_match_fence1_β:    mov              rsp, qword ptr [rbp + -64];          jmp   n174_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n179_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx203_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n185_match_defer_α
.Lx203_21:              lea              rax, [rip + .Lx203_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n181_match_assign_save_α
n179_match_alternate_s0:
                        lea              rax, [rip + .Lx203_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_match_alternate_as
n179_match_alternate_s1:
                        lea              rax, [rip + .Lx203_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_match_alternate_as
.Lx203_40:                                                                    jmp   n185_match_defer_β
.Lx203_41:                                                                    jmp   n180_goto_β
n179_match_alternate_as:
                                                                              jmp   n178_match_fence1_as
n179_match_alternate_β: mov              rax, qword ptr [rsp + 8];            jmp   rax
n179_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx203_19:              add              rsp, 32;                             jmp   n178_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n180_goto_α:                                                                  jmp   n179_match_alternate_af
n180_goto_β:                                                                  jmp   n179_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n181_match_assign_save_α:
                        mov              dword ptr [rbp + -80], r14d;         jmp   n182_match_defer_α
n181_match_assign_save_β:
                                                                              jmp   n179_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n182_match_defer_α:     mov              rax, qword ptr [r9 + 880]            # PAT$3$V2
                        mov              rdx, qword ptr [r9 + 888]
                        cmp              eax, 8;                              jne   .Lx207_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx207_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx207_10
.Lx207_9:               xor              eax, eax
.Lx207_10:              test             rax, rax;                            jz    .Lx207_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx207_4]
                        lea              r11, [rip + .Lx207_5];               jmp   rax
.Lx207_4:                                                                     jmp   n183_match_assign_cond_α
.Lx207_5:                                                                     jmp   n181_match_assign_save_β
.Lx207_0:               push             r14
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
.Lx207_2:               test             rax, rax;                            je    .Lx207_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx207_7]
                        lea              rdx, [rip + .Lx207_8];               jmp   rax
.Lx207_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx207_2
.Lx207_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx207_2
.Lx207_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n181_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx207_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n183_match_assign_cond_α
.Lx207_6:               add              rsp, 16;                             jmp   n181_match_assign_save_β
n182_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n183_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n184_match_defer_α
n183_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n182_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n184_match_defer_α:     mov              rax, qword ptr [r9 + 896]            # PAT$3$V3
                        mov              rdx, qword ptr [r9 + 904]
                        cmp              eax, 8;                              jne   .Lx210_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx210_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx210_10
.Lx210_9:               xor              eax, eax
.Lx210_10:              test             rax, rax;                            jz    .Lx210_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx210_4]
                        lea              r11, [rip + .Lx210_5];               jmp   rax
.Lx210_4:                                                                     jmp   n179_match_alternate_s1
.Lx210_5:                                                                     jmp   n183_match_assign_cond_β
.Lx210_0:               push             r14
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
.Lx210_2:               test             rax, rax;                            je    .Lx210_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx210_7]
                        lea              rdx, [rip + .Lx210_8];               jmp   rax
.Lx210_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx210_2
.Lx210_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx210_2
.Lx210_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n183_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx210_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n179_match_alternate_s1
.Lx210_6:               add              rsp, 16;                             jmp   n183_match_assign_cond_β
n184_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n185_match_defer_α:     mov              rax, qword ptr [r9 + 704]            # group
                        mov              rdx, qword ptr [r9 + 712]
                        cmp              eax, 8;                              jne   .Lx211_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx211_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx211_10
.Lx211_9:               xor              eax, eax
.Lx211_10:              test             rax, rax;                            jz    .Lx211_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx211_4]
                        lea              r11, [rip + .Lx211_5];               jmp   rax
.Lx211_4:                                                                     jmp   n179_match_alternate_s0
.Lx211_5:                                                                     jmp   n179_match_alternate_af
.Lx211_0:               push             r14
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
.Lx211_2:               test             rax, rax;                            je    .Lx211_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx211_7]
                        lea              rdx, [rip + .Lx211_8];               jmp   rax
.Lx211_7:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx211_2
.Lx211_8:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx211_2
.Lx211_3:               add              rsp, 8
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
                        test             eax, eax;                            js    n179_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx211_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n179_match_alternate_s0
.Lx211_6:               add              rsp, 16;                             jmp   n179_match_alternate_af
n185_match_defer_β:                                                           jmp   qword ptr [rsp]
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
#-----------------------------------------------------------------------------------------------------------------------
n212_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n213_match_lit_α
n212_match_assign_save_β:
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n213_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx220_239
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx220_239:             movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             je    .Lx220_240
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
.Lx220_240:             add              r14d, 1;                             jmp   n214_match_bal_α
n213_match_lit_β:       sub              r14d, 1
                        add              rsp, 16;                             jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_match_bal_α:       sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                        mov              dword ptr [rsp + 8], 0
n214_match_bal_β:
.Lx222_0:               mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jge   .Lx222_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 0], 1
                        mov              edx, dword ptr [rsp + 8]
                        cmp              esi, 40;                             jne   .Lx222_1
                        add              edx, 1;                              jmp   .Lx222_2
.Lx222_1:               cmp              esi, 41;                             jne   .Lx222_2
                        sub              edx, 1
                        cmp              edx, 0;                              jl    .Lx222_3
.Lx222_2:               mov              dword ptr [rsp + 8], edx
                        test             edx, edx;                            jne   .Lx222_0
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax;                           jmp   n215_match_lit_α
.Lx222_3:               mov              eax, dword ptr [rsp + 4]
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n213_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n215_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n214_match_bal_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n214_match_bal_β
                        add              r14d, 1;                             jmp   n216_match_assign_cond_α
n215_match_lit_β:       sub              r14d, 1;                             jmp   n214_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n216_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   proc_PAT$4_γ
n216_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n216_match_assign_cond_α
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
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "list(head,tail)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__stk_push_frame"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + stk_push_frame_body]
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
.Lstartup_pname1:       .string          "LBL__stk_push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + stk_push_item_body]
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
.Lstartup_pname2:       .string          "LBL__stk_pop_into_parent"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + stk_pop_into_parent_body]
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
.Lstartup_pname3:       .string          "LBL__stk_pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + stk_pop_final_body]
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
.Lstartup_pname4:       .string          "LBL__init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + init_list_body]
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
.Lstartup_pname5:       .string          "LBL__Init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + Init_list_body]
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
.Lstartup_pname6:       .string          "LBL__push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + push_list_body]
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
.Lstartup_pname7:       .string          "LBL__Push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + Push_list_body]
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
.Lstartup_pname8:       .string          "LBL__push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + push_item_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "LBL__Push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + Push_item_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "LBL__pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + pop_list_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "LBL__Pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + Pop_list_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "LBL__pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + pop_final_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "LBL__Pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + Pop_final_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "LBL__node_repr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + node_repr_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "LBL__pp_node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + pp_node_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "LBL__pp_bank"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + pp_bank_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname34:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname34]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname34]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname34]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname34]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname34]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname35:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname35]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname35]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname35]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname35]
                        mov              esi, 32
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname35]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname35]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname36:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname36]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname36]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname37:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname37]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname37]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname38:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname38]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname38]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "stk_push_frame"
.Lgvan1:                .string          "v"
.Lgvan2:                .string          "stk_push_item"
.Lgvan3:                .string          "cur"
.Lgvan4:                .string          "stk_pop_into_parent"
.Lgvan5:                .string          "child"
.Lgvan6:                .string          "par"
.Lgvan7:                .string          "n"
.Lgvan8:                .string          "stk_pop_final"
.Lgvan9:                .string          "var"
.Lgvan10:               .string          "init_list"
.Lgvan11:               .string          "Init_list"
.Lgvan12:               .string          "vs"
.Lgvan13:               .string          "push_list"
.Lgvan14:               .string          "Push_list"
.Lgvan15:               .string          "push_item"
.Lgvan16:               .string          "Push_item"
.Lgvan17:               .string          "pop_list"
.Lgvan18:               .string          "Pop_list"
.Lgvan19:               .string          "pop_final"
.Lgvan20:               .string          "Pop_final"
.Lgvan21:               .string          "node_repr"
.Lgvan22:               .string          "f"
.Lgvan23:               .string          "r"
.Lgvan24:               .string          "sep"
.Lgvan25:               .string          "i"
.Lgvan26:               .string          "tag"
.Lgvan27:               .string          "pp_node"
.Lgvan28:               .string          "indent"
.Lgvan29:               .string          "suffix"
.Lgvan30:               .string          "pad"
.Lgvan31:               .string          "nxt"
.Lgvan32:               .string          "pp_bank"
.Lgvan33:               .string          "nl"
.Lgvan34:               .string          "frame_id"
.Lgvan35:               .string          "stk_tag"
.Lgvan36:               .string          "stk_n"
.Lgvan37:               .string          "stk_c"
.Lgvan38:               .string          "stk"
.Lgvan39:               .string          "dummy"
.Lgvan40:               .string          "epsilon"
.Lgvan41:               .string          "bank"
.Lgvan42:               .string          "delim"
.Lgvan43:               .string          "word"
.Lgvan44:               .string          "group"
.Lgvan45:               .string          "wrd"
.Lgvan46:               .string          "spat"
.Lgvan47:               .string          "item"
.Lgvan48:               .string          "line"
.Lgvan49:               .string          "src"
.Lgvan50:               .string          "t0"
.Lgvan51:               .string          "t1"
.Lgvan52:               .string          "PAT$0$V0"
.Lgvan53:               .string          "PAT$3$V0"
.Lgvan54:               .string          "PAT$3$V1"
.Lgvan55:               .string          "PAT$3$V2"
.Lgvan56:               .string          "PAT$3$V3"
.Lgvan57:               .string          "PAT$3$V4"
.Lgvan58:               .string          "PAT$3$V5"
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
                        .quad            .Lgvan45
                        .quad            .Lgvan46
                        .quad            .Lgvan47
                        .quad            .Lgvan48
                        .quad            .Lgvan49
                        .quad            .Lgvan50
                        .quad            .Lgvan51
                        .quad            .Lgvan52
                        .quad            .Lgvan53
                        .quad            .Lgvan54
                        .quad            .Lgvan55
                        .quad            .Lgvan56
                        .quad            .Lgvan57
                        .quad            .Lgvan58
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 59
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 59
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
#                &ALPHABET      POS(10) LEN(1) . nl
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_begin_α:                                                       jmp   n228_keyword_snobol4_α
n227_statement_begin_β:                                                       jmp   n236_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n228_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_match_begin_α
.Lx944_0:               .quad            .Lx944_0_s
.Lx944_0_s:             .string          "ALPHABET"
#-----------------------------------------------------------------------------------------------------------------------
n229_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # keyword_snobol4
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
.Lx946_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n230_match_pos_α
n229_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx946_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx946_1
                                                                              jmp   .Lx946_0
.Lx946_1:
n229_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n235_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n230_match_pos_α:       mov              rax, 10
                        cmp              r14d, eax;                           jne   n229_match_begin_β
                                                                              jmp   n231_match_assign_save_α
n230_match_pos_β:                                                             jmp   n229_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n231_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n232_match_len_α
n231_match_assign_save_β:
                        add              rsp, 16;                             jmp   n229_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n232_match_len_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx950_240
                        add              rsp, 16;                             jmp   n229_match_begin_β
.Lx950_240:             add              r14d, 1;                             jmp   n233_match_assign_cond_α
n232_match_len_β:       sub              r14d, 1
                        add              rsp, 16;                             jmp   n229_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n233_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S12]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n234_match_end_α
n233_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n232_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n234_match_end_α:       push             r14
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
.Lx954_1:               test             rax, rax;                            je    .Lx954_2
                        lea              rcx, [rip + .Lx954_3]
                        lea              rdx, [rip + .Lx954_4];               jmp   rax
.Lx954_3:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx954_1
.Lx954_4:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx954_1
.Lx954_2:               call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n235_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:   add              rsp, 16;                             jmp   n236_statement_begin_α
#=======================================================================================================================
#                DATA('list(head,tail)')
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α:                                                       jmp   n237_lit_string_α
n236_statement_begin_β:                                                       jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_call_α
.Lx959_0:               .quad            .Lx959_0_s
.Lx959_0_s:             .string          "list(head,tail)"
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd961:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd961]
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
                        cmp              eax, 104;                            jne   .Lx960_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n236_statement_begin_β
.Lx960_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_statement_end_α
n238_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n236_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:   add              rsp, 32;                             jmp   n240_statement_begin_α
#=======================================================================================================================
#                frame_id       =  0
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α:                                                       jmp   n241_lit_integer_α
n240_statement_begin_β:                                                       jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_assign_α
.Lx966_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # frame_id
                        mov              qword ptr [r9 + 552], rdx;           jmp   n243_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:   add              rsp, 16;                             jmp   n244_statement_begin_α
#=======================================================================================================================
#                stk_tag        =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α:                                                       jmp   n245_call_α
n244_statement_begin_β:                                                       jmp   n248_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd973:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd973]
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
                        cmp              eax, 104;                            jne   .Lx972_240
                        add              rsp, 16;                             jmp   n244_statement_begin_β
.Lx972_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_assign_α
n245_call_β:            add              rsp, 16;                             jmp   n244_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # stk_tag
                        mov              qword ptr [r9 + 568], rdx;           jmp   n247_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   add              rsp, 16;                             jmp   n248_statement_begin_α
#=======================================================================================================================
#                stk_n          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α:                                                       jmp   n249_call_α
n248_statement_begin_β:                                                       jmp   n252_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd980:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd980]
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
                        cmp              eax, 104;                            jne   .Lx979_240
                        add              rsp, 16;                             jmp   n248_statement_begin_β
.Lx979_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_assign_α
n249_call_β:            add              rsp, 16;                             jmp   n248_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # stk_n
                        mov              qword ptr [r9 + 584], rdx;           jmp   n251_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:   add              rsp, 16;                             jmp   n252_statement_begin_α
#=======================================================================================================================
#                stk_c          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_begin_α:                                                       jmp   n253_call_α
n252_statement_begin_β:                                                       jmp   n256_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd987:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd987]
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
                        cmp              eax, 104;                            jne   .Lx986_240
                        add              rsp, 16;                             jmp   n252_statement_begin_β
.Lx986_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_assign_α
n253_call_β:            add              rsp, 16;                             jmp   n252_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # stk_c
                        mov              qword ptr [r9 + 600], rdx;           jmp   n255_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   add              rsp, 16;                             jmp   n256_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α:                                                       jmp   n257_func_activate_α
n256_statement_begin_β:                                                       jmp   n297_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n257_func_activate_α:   mov              rdi, qword ptr [rip + .Lx994_0]
                        mov              rsi, qword ptr [rip + .Lx994_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_push_frame_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_statement_end_α
n257_func_activate_β:                                                         jmp   n256_statement_begin_β
.Lx994_0:               .quad            .Lx994_0_s
.Lx994_0_s:             .string          "stk_push_frame"
.Lx994_1:               .quad            .Lx994_1_s
.Lx994_1_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:                                                         jmp   n297_statement_begin_α
#=======================================================================================================================
# stk_push_frame frame_id              =  frame_id + 1
#-----------------------------------------------------------------------------------------------------------------------
stk_push_frame_body:                                                          jmp   n260_var_α
n259_statement_begin_β:                                                       jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # frame_id
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1000_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_binop_α
n261_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
.Lx1000_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n262_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1001_240
                        add              rsp, 16;                             jmp   n261_lit_integer_β
.Lx1001_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n263_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # frame_id
                        mov              qword ptr [r9 + 552], rdx;           jmp   n264_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:   add              rsp, 48;                             jmp   n265_statement_begin_α
#=======================================================================================================================
#                stk_tag[frame_id]    =  v
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α:                                                       jmp   n266_var_α
n265_statement_begin_β:                                                       jmp   n272_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # stk_tag
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # frame_id
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_subscript_α
n267_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n265_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n268_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1009_240
                        add              rsp, 16;                             jmp   n267_var_β
.Lx1009_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_var_α
n268_subscript_β:       add              rsp, 16;                             jmp   n267_var_β
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # v
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_assign_var_α
n269_var_β:             add              rsp, 16;                             jmp   n268_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1011_240
                        add              rsp, 16;                             jmp   n269_var_β
.Lx1011_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:   add              rsp, 80;                             jmp   n272_statement_begin_α
#=======================================================================================================================
#                stk_n[frame_id]      =  0
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α:                                                       jmp   n273_var_α
n272_statement_begin_β:                                                       jmp   n279_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # frame_id
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_subscript_α
n274_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n272_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n275_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1018_240
                        add              rsp, 16;                             jmp   n274_var_β
.Lx1018_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_lit_integer_α
n275_subscript_β:       add              rsp, 16;                             jmp   n274_var_β
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1019_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n277_assign_var_α
n276_lit_integer_β:     add              rsp, 16;                             jmp   n275_subscript_β
.Lx1019_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1020_240
                        add              rsp, 16;                             jmp   n276_lit_integer_β
.Lx1020_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_end_α:   add              rsp, 80;                             jmp   n279_statement_begin_α
#=======================================================================================================================
#                stk_c[frame_id]      =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_begin_α:                                                       jmp   n280_var_α
n279_statement_begin_β:                                                       jmp   n286_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # stk_c
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_var_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # frame_id
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_subscript_α
n281_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n279_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n282_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1027_240
                        add              rsp, 16;                             jmp   n281_var_β
.Lx1027_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_call_α
n282_subscript_β:       add              rsp, 16;                             jmp   n281_var_β
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1029:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1029]
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
                        cmp              eax, 104;                            jne   .Lx1028_240
                        add              rsp, 16;                             jmp   n282_subscript_β
.Lx1028_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_assign_var_α
n283_call_β:            add              rsp, 16;                             jmp   n282_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1030_240
                        add              rsp, 32;                             jmp   n282_subscript_β
.Lx1030_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_end_α:   add              rsp, 80;                             jmp   n286_statement_begin_α
#=======================================================================================================================
#                stk                  =  list(frame_id, stk)
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_begin_α:                                                       jmp   n287_var_α
n286_statement_begin_β:                                                       jmp   n292_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 544]            # frame_id
                        mov              rdx, qword ptr [r9 + 552]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # stk
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_call_α
n288_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n286_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            sub              rsp, 16
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
.Lrkfnzd1038:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1038]
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
                        cmp              eax, 104;                            jne   .Lx1037_240
                        add              rsp, 16;                             jmp   n288_var_β
.Lx1037_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_assign_α
n289_call_β:            add              rsp, 16;                             jmp   n288_var_β
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # stk
                        mov              qword ptr [r9 + 616], rdx;           jmp   n291_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_end_α:   add              rsp, 48;                             jmp   n292_statement_begin_α
#=======================================================================================================================
#                stk_push_frame       =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_begin_α:                                                       jmp   n293_lit_string_α
n292_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1044_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n294_call_α
.Lx1044_0:              .quad            .Lx1044_0_s
.Lx1044_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1046:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1046]
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
                        cmp              eax, 104;                            jne   .Lx1045_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n292_statement_begin_β
.Lx1045_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_assign_α
n294_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n292_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # stk_push_frame
                        mov              qword ptr [r9 + 8], rdx;             jmp   n296_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_push_frame_end  <stmt 14, line 23: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_begin_α:                                                       jmp   n298_statement_end_α
n297_statement_begin_β:                                                       jmp   n299_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_end_α:                                                         jmp   n299_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_begin_α:                                                       jmp   n300_func_activate_α
n299_statement_begin_β:                                                       jmp   n337_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n300_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1057_0]
                        mov              rsi, qword ptr [rip + .Lx1057_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_statement_end_α
n300_func_activate_β:                                                         jmp   n299_statement_begin_β
.Lx1057_0:              .quad            .Lx1057_0_s
.Lx1057_0_s:            .string          "stk_push_item"
.Lx1057_1:              .quad            .Lx1057_1_s
.Lx1057_1_s:            .string          "v,cur"
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:                                                         jmp   n337_statement_begin_α
#=======================================================================================================================
# stk_push_item  cur                  =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
stk_push_item_body:                                                           jmp   n303_var_α
n302_statement_begin_β:                                                       jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # stk
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_call_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1064:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1064]
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
                        cmp              eax, 104;                            jne   .Lx1063_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
.Lx1063_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_assign_α
n304_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # cur
                        mov              qword ptr [r9 + 56], rdx;            jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   add              rsp, 32;                             jmp   n307_statement_begin_α
#=======================================================================================================================
#                stk_n[cur]           =  stk_n[cur] + 1
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α:                                                       jmp   n308_var_α
n307_statement_begin_β:                                                       jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_subscript_α
n309_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n307_statement_begin_β
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
                        cmp              eax, 104;                            jne   .Lx1072_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lx1072_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_var_α
n310_subscript_β:       add              rsp, 16;                             jmp   n309_var_β
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_var_α
n311_var_β:             add              rsp, 16;                             jmp   n310_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_subscript_α
n312_var_β:             add              rsp, 16;                             jmp   n311_var_β
#-----------------------------------------------------------------------------------------------------------------------
n313_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1075_240
                        add              rsp, 16;                             jmp   n312_var_β
.Lx1075_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_deref_α
n313_subscript_β:       add              rsp, 16;                             jmp   n312_var_β
#-----------------------------------------------------------------------------------------------------------------------
n314_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1076_240
                        add              rsp, 16;                             jmp   n313_subscript_β
.Lx1076_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_lit_integer_α
n314_deref_β:           add              rsp, 16;                             jmp   n313_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n316_binop_α
n315_lit_integer_β:     add              rsp, 16;                             jmp   n314_deref_β
.Lx1077_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1078_240
                        add              rsp, 16;                             jmp   n315_lit_integer_β
.Lx1078_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n317_assign_var_α
n316_binop_β:           add              rsp, 16;                             jmp   n315_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
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
                        cmp              eax, 104;                            jne   .Lx1079_240
                        add              rsp, 16;                             jmp   n316_binop_β
.Lx1079_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:   add              rsp, 160;                            jmp   n319_statement_begin_α
#=======================================================================================================================
#                stk_c[cur][stk_n[cur]] =  v
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_begin_α:                                                       jmp   n320_var_α
n319_statement_begin_β:                                                       jmp   n332_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # stk_c
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_subscript_α
n321_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n319_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n322_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1086_240
                        add              rsp, 16;                             jmp   n321_var_β
.Lx1086_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_deref_α
n322_subscript_β:       add              rsp, 16;                             jmp   n321_var_β
#-----------------------------------------------------------------------------------------------------------------------
n323_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1087_240
                        add              rsp, 16;                             jmp   n322_subscript_β
.Lx1087_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_var_α
n323_deref_β:           add              rsp, 16;                             jmp   n322_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_var_α
n324_var_β:             add              rsp, 16;                             jmp   n323_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # cur
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_subscript_α
n325_var_β:             add              rsp, 16;                             jmp   n324_var_β
#-----------------------------------------------------------------------------------------------------------------------
n326_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1090_240
                        add              rsp, 16;                             jmp   n325_var_β
.Lx1090_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_deref_α
n326_subscript_β:       add              rsp, 16;                             jmp   n325_var_β
#-----------------------------------------------------------------------------------------------------------------------
n327_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1091_240
                        add              rsp, 16;                             jmp   n326_subscript_β
.Lx1091_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_subscript_α
n327_deref_β:           add              rsp, 16;                             jmp   n326_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n328_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # deref
                        mov              rsi, qword ptr [rsp + 88]
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
                        cmp              eax, 104;                            jne   .Lx1092_240
                        add              rsp, 16;                             jmp   n327_deref_β
.Lx1092_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_var_α
n328_subscript_β:       add              rsp, 16;                             jmp   n327_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # v
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_assign_var_α
n329_var_β:             add              rsp, 16;                             jmp   n328_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1094_240
                        add              rsp, 16;                             jmp   n329_var_β
.Lx1094_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_end_α:   add              rsp, 176;                            jmp   n332_statement_begin_α
#=======================================================================================================================
#                stk_push_item        =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_begin_α:                                                       jmp   n333_lit_string_α
n332_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n334_call_α
.Lx1099_0:              .quad            .Lx1099_0_s
.Lx1099_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1101:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1101]
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
                        cmp              eax, 104;                            jne   .Lx1100_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n332_statement_begin_β
.Lx1100_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_assign_α
n334_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n332_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # stk_push_item
                        mov              qword ptr [r9 + 40], rdx;            jmp   n336_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_push_item_end  <stmt 20, line 30: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_begin_α:                                                       jmp   n338_statement_end_α
n337_statement_begin_β:                                                       jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:                                                         jmp   n339_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_into_parent(child,par,n)')   :(stk_pop_into_parent_end)
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α:                                                       jmp   n340_func_activate_α
n339_statement_begin_β:                                                       jmp   n392_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n340_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1112_0]
                        mov              rsi, qword ptr [rip + .Lx1112_1]
                        mov              edx, 3
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_pop_into_parent_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_statement_end_α
n340_func_activate_β:                                                         jmp   n339_statement_begin_β
.Lx1112_0:              .quad            .Lx1112_0_s
.Lx1112_0_s:            .string          "stk_pop_into_parent"
.Lx1112_1:              .quad            .Lx1112_1_s
.Lx1112_1_s:            .string          "child,par,n"
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_end_α:                                                         jmp   n392_statement_begin_α
#=======================================================================================================================
# stk_pop_into_parent  <stmt 22, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
stk_pop_into_parent_body:
                                                                              jmp   n343_statement_end_α
n342_statement_begin_β:                                                       jmp   n344_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_end_α:                                                         jmp   n344_statement_begin_α
#=======================================================================================================================
#                child                =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α:                                                       jmp   n345_var_α
n344_statement_begin_β:                                                       jmp   n349_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # stk
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_call_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1123:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1123]
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
                        cmp              eax, 104;                            jne   .Lx1122_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
.Lx1122_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_assign_α
n346_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # child
                        mov              qword ptr [r9 + 88], rdx;            jmp   n348_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_end_α:   add              rsp, 32;                             jmp   n349_statement_begin_α
#=======================================================================================================================
#                stk                  =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_begin_α:                                                       jmp   n350_var_α
n349_statement_begin_β:                                                       jmp   n354_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # stk
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_call_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1131:           .string          "tail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1131]
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
                        cmp              eax, 104;                            jne   .Lx1130_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n349_statement_begin_β
.Lx1130_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_assign_α
n351_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n349_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # stk
                        mov              qword ptr [r9 + 616], rdx;           jmp   n353_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_end_α:   add              rsp, 32;                             jmp   n354_statement_begin_α
#=======================================================================================================================
#                par                  =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
n354_statement_begin_α:                                                       jmp   n355_var_α
n354_statement_begin_β:                                                       jmp   n359_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # stk
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_call_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1139:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1139]
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
                        cmp              eax, 104;                            jne   .Lx1138_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
.Lx1138_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_assign_α
n356_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # par
                        mov              qword ptr [r9 + 104], rdx;           jmp   n358_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_end_α:   add              rsp, 32;                             jmp   n359_statement_begin_α
#=======================================================================================================================
#                n                    =  stk_n[par]
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_begin_α:                                                       jmp   n360_var_α
n359_statement_begin_β:                                                       jmp   n366_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n361_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # par
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_subscript_α
n361_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n362_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1147_240
                        add              rsp, 16;                             jmp   n361_var_β
.Lx1147_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n363_deref_α
n362_subscript_β:       add              rsp, 16;                             jmp   n361_var_β
#-----------------------------------------------------------------------------------------------------------------------
n363_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1148_240
                        add              rsp, 16;                             jmp   n362_subscript_β
.Lx1148_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n364_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n364_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              qword ptr [r9 + 120], rdx;           jmp   n365_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_end_α:   add              rsp, 64;                             jmp   n366_statement_begin_α
#=======================================================================================================================
#                stk_n[par]           =  n + 1
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_begin_α:                                                       jmp   n367_var_α
n366_statement_begin_β:                                                       jmp   n375_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # par
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_subscript_α
n368_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n366_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n369_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1156_240
                        add              rsp, 16;                             jmp   n368_var_β
.Lx1156_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_var_α
n369_subscript_β:       add              rsp, 16;                             jmp   n368_var_β
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_lit_integer_α
n370_var_β:             add              rsp, 16;                             jmp   n369_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n372_binop_α
n371_lit_integer_β:     add              rsp, 16;                             jmp   n370_var_β
.Lx1158_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n372_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1159_240
                        add              rsp, 16;                             jmp   n371_lit_integer_β
.Lx1159_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n373_assign_var_α
n372_binop_β:           add              rsp, 16;                             jmp   n371_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
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
                        cmp              eax, 104;                            jne   .Lx1160_240
                        add              rsp, 16;                             jmp   n372_binop_β
.Lx1160_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:   add              rsp, 112;                            jmp   n375_statement_begin_α
#=======================================================================================================================
#                stk_c[par][n + 1]    =  child
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_begin_α:                                                       jmp   n376_var_α
n375_statement_begin_β:                                                       jmp   n387_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # stk_c
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # par
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_subscript_α
n377_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n378_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1167_240
                        add              rsp, 16;                             jmp   n377_var_β
.Lx1167_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_deref_α
n378_subscript_β:       add              rsp, 16;                             jmp   n377_var_β
#-----------------------------------------------------------------------------------------------------------------------
n379_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1168_240
                        add              rsp, 16;                             jmp   n378_subscript_β
.Lx1168_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_var_α
n379_deref_β:           add              rsp, 16;                             jmp   n378_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_lit_integer_α
n380_var_β:             add              rsp, 16;                             jmp   n379_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n382_binop_α
n381_lit_integer_β:     add              rsp, 16;                             jmp   n380_var_β
.Lx1170_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n382_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1171_240
                        add              rsp, 16;                             jmp   n381_lit_integer_β
.Lx1171_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n383_subscript_α
n382_binop_β:           add              rsp, 16;                             jmp   n381_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n383_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # deref
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1172_240
                        add              rsp, 16;                             jmp   n382_binop_β
.Lx1172_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_var_α
n383_subscript_β:       add              rsp, 16;                             jmp   n382_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # child
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_assign_var_α
n384_var_β:             add              rsp, 16;                             jmp   n383_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1174_240
                        add              rsp, 16;                             jmp   n384_var_β
.Lx1174_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_end_α:   add              rsp, 160;                            jmp   n387_statement_begin_α
#=======================================================================================================================
#                stk_pop_into_parent  =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_begin_α:                                                       jmp   n388_lit_string_α
n387_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n389_call_α
.Lx1179_0:              .quad            .Lx1179_0_s
.Lx1179_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1181:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1181]
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
                        cmp              eax, 104;                            jne   .Lx1180_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n387_statement_begin_β
.Lx1180_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n390_assign_α
n389_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n387_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # stk_pop_into_parent
                        mov              qword ptr [r9 + 72], rdx;            jmp   n391_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n391_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_pop_into_parent_end  <stmt 30, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n392_statement_begin_α:                                                       jmp   n393_statement_end_α
n392_statement_begin_β:                                                       jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:                                                         jmp   n394_statement_begin_α
#=======================================================================================================================
#                DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α:                                                       jmp   n395_func_activate_α
n394_statement_begin_β:                                                       jmp   n418_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1192_0]
                        mov              rsi, qword ptr [rip + .Lx1192_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + proc_stk_pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n396_statement_end_α
n395_func_activate_β:                                                         jmp   n394_statement_begin_β
.Lx1192_0:              .quad            .Lx1192_0_s
.Lx1192_0_s:            .string          "stk_pop_final"
.Lx1192_1:              .quad            .Lx1192_1_s
.Lx1192_1_s:            .string          "var,child"
#-----------------------------------------------------------------------------------------------------------------------
n396_statement_end_α:                                                         jmp   n418_statement_begin_α
#=======================================================================================================================
# stk_pop_final  child                =  head(stk)
#-----------------------------------------------------------------------------------------------------------------------
stk_pop_final_body:                                                           jmp   n398_var_α
n397_statement_begin_β:                                                       jmp   n402_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # stk
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n399_call_α
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1199:           .string          "head"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1199]
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
                        cmp              eax, 104;                            jne   .Lx1198_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n397_statement_begin_β
.Lx1198_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_assign_α
n399_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n397_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # child
                        mov              qword ptr [r9 + 88], rdx;            jmp   n401_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_end_α:   add              rsp, 32;                             jmp   n402_statement_begin_α
#=======================================================================================================================
#                stk                  =  tail(stk)
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_begin_α:                                                       jmp   n403_var_α
n402_statement_begin_β:                                                       jmp   n407_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]            # stk
                        mov              rdx, qword ptr [r9 + 616]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_call_α
#-----------------------------------------------------------------------------------------------------------------------
n404_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1207:           .string          "tail"
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
                        add              rsp, 16;                             jmp   n402_statement_begin_β
.Lx1206_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_assign_α
n404_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n402_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n405_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # stk
                        mov              qword ptr [r9 + 616], rdx;           jmp   n406_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_end_α:   add              rsp, 32;                             jmp   n407_statement_begin_α
#=======================================================================================================================
#                $var                 =  child
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_begin_α:                                                       jmp   n408_var_α
n407_statement_begin_β:                                                       jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # var
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_call_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1215:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1215]
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
                        cmp              eax, 104;                            jne   .Lx1214_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n407_statement_begin_β
.Lx1214_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_var_α
n409_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n407_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # child
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_assign_var_α
n410_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n407_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
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
                        cmp              eax, 104;                            jne   .Lx1217_240
                        add              rsp, 16;                             jmp   n410_var_β
.Lx1217_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n412_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:   add              rsp, 64;                             jmp   n413_statement_begin_α
#=======================================================================================================================
#                stk_pop_final        =  .dummy               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α:                                                       jmp   n414_lit_string_α
n413_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n415_call_α
.Lx1222_0:              .quad            .Lx1222_0_s
.Lx1222_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n415_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1224:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1224]
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
                        cmp              eax, 104;                            jne   .Lx1223_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n413_statement_begin_β
.Lx1223_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_assign_α
n415_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n413_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # stk_pop_final
                        mov              qword ptr [r9 + 136], rdx;           jmp   n417_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# stk_pop_final_end  <stmt 36, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_begin_α:                                                       jmp   n419_statement_end_α
n418_statement_begin_β:                                                       jmp   n420_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n419_statement_end_α:                                                         jmp   n420_statement_begin_α
#=======================================================================================================================
#                DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_begin_α:                                                       jmp   n421_func_activate_α
n420_statement_begin_β:                                                       jmp   n423_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n421_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1235_0]
                        mov              rsi, qword ptr [rip + .Lx1235_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n422_statement_end_α
n421_func_activate_β:                                                         jmp   n420_statement_begin_β
.Lx1235_0:              .quad            .Lx1235_0_s
.Lx1235_0_s:            .string          "init_list"
.Lx1235_1:              .quad            .Lx1235_1_s
.Lx1235_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n422_statement_end_α:                                                         jmp   n423_statement_begin_α
#=======================================================================================================================
#                DEFINE('Init_list(vs)')                      :(init_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n423_statement_begin_α:                                                       jmp   n424_func_activate_α
n423_statement_begin_β:                                                       jmp   n466_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n424_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1241_0]
                        mov              rsi, qword ptr [rip + .Lx1241_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n425_statement_end_α
n424_func_activate_β:                                                         jmp   n423_statement_begin_β
.Lx1241_0:              .quad            .Lx1241_0_s
.Lx1241_0_s:            .string          "Init_list"
.Lx1241_1:              .quad            .Lx1241_1_s
.Lx1241_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:                                                         jmp   n466_statement_begin_α
#=======================================================================================================================
# init_list      $v             =
#-----------------------------------------------------------------------------------------------------------------------
init_list_body:                                                               jmp   n427_var_α
n426_statement_begin_β:                                                       jmp   n432_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # v
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_call_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1248:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1248]
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
                        cmp              eax, 104;                            jne   .Lx1247_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
.Lx1247_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_lit_string_α
n428_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n430_assign_var_α
n429_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n426_statement_begin_β
.Lx1249_0:              .quad            .Lx1249_0_s
.Lx1249_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n430_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1250_240
                        add              rsp, 16;                             jmp   n429_lit_string_β
.Lx1250_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_end_α:   add              rsp, 64;                             jmp   n432_statement_begin_α
#=======================================================================================================================
#                stk            =
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_begin_α:                                                       jmp   n433_lit_string_α
n432_statement_begin_β:                                                       jmp   n436_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n434_assign_α
.Lx1255_0:              .quad            .Lx1255_0_s
.Lx1255_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n434_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # stk
                        mov              qword ptr [r9 + 616], rdx;           jmp   n435_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_end_α:   add              rsp, 16;                             jmp   n436_statement_begin_α
#=======================================================================================================================
#                frame_id       =  0
#-----------------------------------------------------------------------------------------------------------------------
n436_statement_begin_α:                                                       jmp   n437_lit_integer_α
n436_statement_begin_β:                                                       jmp   n440_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_assign_α
.Lx1261_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # frame_id
                        mov              qword ptr [r9 + 552], rdx;           jmp   n439_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_end_α:   add              rsp, 16;                             jmp   n440_statement_begin_α
#=======================================================================================================================
#                stk_tag        =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_begin_α:                                                       jmp   n441_call_α
n440_statement_begin_β:                                                       jmp   n444_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1268:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1268]
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
                        cmp              eax, 104;                            jne   .Lx1267_240
                        add              rsp, 16;                             jmp   n440_statement_begin_β
.Lx1267_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_assign_α
n441_call_β:            add              rsp, 16;                             jmp   n440_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n442_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # stk_tag
                        mov              qword ptr [r9 + 568], rdx;           jmp   n443_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n443_statement_end_α:   add              rsp, 16;                             jmp   n444_statement_begin_α
#=======================================================================================================================
#                stk_n          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_begin_α:                                                       jmp   n445_call_α
n444_statement_begin_β:                                                       jmp   n448_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n445_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1275:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1275]
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
                        cmp              eax, 104;                            jne   .Lx1274_240
                        add              rsp, 16;                             jmp   n444_statement_begin_β
.Lx1274_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_assign_α
n445_call_β:            add              rsp, 16;                             jmp   n444_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n446_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # stk_n
                        mov              qword ptr [r9 + 584], rdx;           jmp   n447_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_end_α:   add              rsp, 16;                             jmp   n448_statement_begin_α
#=======================================================================================================================
#                stk_c          =  TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_begin_α:                                                       jmp   n449_call_α
n448_statement_begin_β:                                                       jmp   n452_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n449_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1282:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1282]
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
                        cmp              eax, 104;                            jne   .Lx1281_240
                        add              rsp, 16;                             jmp   n448_statement_begin_β
.Lx1281_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_assign_α
n449_call_β:            add              rsp, 16;                             jmp   n448_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n450_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # stk_c
                        mov              qword ptr [r9 + 600], rdx;           jmp   n451_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_end_α:   add              rsp, 16;                             jmp   n452_statement_begin_α
#=======================================================================================================================
#                init_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n452_statement_begin_α:                                                       jmp   n453_lit_string_α
n452_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n454_call_α
.Lx1288_0:              .quad            .Lx1288_0_s
.Lx1288_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n454_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1290:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1290]
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
                        cmp              eax, 104;                            jne   .Lx1289_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n452_statement_begin_β
.Lx1289_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n455_assign_α
n454_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n452_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # init_list
                        mov              qword ptr [r9 + 168], rdx;           jmp   n456_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Init_list_body:                                                               jmp   n458_lit_string_α
n457_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_var_α
.Lx1296_0:              .quad            .Lx1296_0_s
.Lx1296_0_s:            .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # vs
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_binop_α
n459_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n460_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n461_lit_string_α
n460_binop_β:           add              rsp, 16;                             jmp   n459_var_β
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n462_binop_α
n461_lit_string_β:      add              rsp, 16;                             jmp   n460_binop_β
.Lx1299_0:              .quad            .Lx1299_0_s
.Lx1299_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n462_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n463_call_α
n462_binop_β:           add              rsp, 16;                             jmp   n461_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n463_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1302:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1302]
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
                        cmp              eax, 104;                            jne   .Lx1301_240
                        add              rsp, 16;                             jmp   n462_binop_β
.Lx1301_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n464_assign_α
n463_call_β:            add              rsp, 16;                             jmp   n462_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n464_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # Init_list
                        mov              qword ptr [r9 + 184], rdx;           jmp   n465_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n465_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# init_list_end  <stmt 47, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_begin_α:                                                       jmp   n467_statement_end_α
n466_statement_begin_β:                                                       jmp   n468_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_end_α:                                                         jmp   n468_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α:                                                       jmp   n469_func_activate_α
n468_statement_begin_β:                                                       jmp   n471_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n469_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1313_0]
                        mov              rsi, qword ptr [rip + .Lx1313_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_statement_end_α
n469_func_activate_β:                                                         jmp   n468_statement_begin_β
.Lx1313_0:              .quad            .Lx1313_0_s
.Lx1313_0_s:            .string          "push_list"
.Lx1313_1:              .quad            .Lx1313_1_s
.Lx1313_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:                                                         jmp   n471_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_list(vs)')                      :(push_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_begin_α:                                                       jmp   n472_func_activate_α
n471_statement_begin_β:                                                       jmp   n493_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n472_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1319_0]
                        mov              rsi, qword ptr [rip + .Lx1319_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_statement_end_α
n472_func_activate_β:                                                         jmp   n471_statement_begin_β
.Lx1319_0:              .quad            .Lx1319_0_s
.Lx1319_0_s:            .string          "Push_list"
.Lx1319_1:              .quad            .Lx1319_1_s
.Lx1319_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_end_α:                                                         jmp   n493_statement_begin_α
#=======================================================================================================================
# push_list      dummy          =  stk_push_frame(v)
#-----------------------------------------------------------------------------------------------------------------------
push_list_body:                                                               jmp   n475_var_α
n474_statement_begin_β:                                                       jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # v
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n476_call_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1326z]
                        lea              rax, [rip + stk_push_frame_alpha];   jmp   rax
.Lsig1326z:             .quad            1
                        .quad            .Lx1326_2
                        .quad            .Lx1326_2
                        .quad            16
.Lx1326_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1326_29
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
.Lx1326_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1326_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n474_statement_begin_β
.Lx1326_240:                                                                  jmp   n477_assign_α
n476_call_β:                                                                  jmp   n474_statement_begin_β
.Lx1326_0:              .quad            .Lx1326_0_s
.Lx1326_0_s:            .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n477_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n478_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   add              rsp, 32;                             jmp   n479_statement_begin_α
#=======================================================================================================================
#                push_list      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_begin_α:                                                       jmp   n480_lit_string_α
n479_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_call_α
.Lx1332_0:              .quad            .Lx1332_0_s
.Lx1332_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n481_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1334:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1334]
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
                        cmp              eax, 104;                            jne   .Lx1333_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
.Lx1333_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_assign_α
n481_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n482_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # push_list
                        mov              qword ptr [r9 + 216], rdx;           jmp   n483_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Push_list_body:                                                               jmp   n485_lit_string_α
n484_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1340_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n486_var_α
.Lx1340_0:              .quad            .Lx1340_0_s
.Lx1340_0_s:            .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # vs
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n487_binop_α
n486_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n487_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n488_lit_string_α
n487_binop_β:           add              rsp, 16;                             jmp   n486_var_β
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_binop_α
n488_lit_string_β:      add              rsp, 16;                             jmp   n487_binop_β
.Lx1343_0:              .quad            .Lx1343_0_s
.Lx1343_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n489_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n490_call_α
n489_binop_β:           add              rsp, 16;                             jmp   n488_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n490_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1346:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1346]
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
                        cmp              eax, 104;                            jne   .Lx1345_240
                        add              rsp, 16;                             jmp   n489_binop_β
.Lx1345_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_assign_α
n490_call_β:            add              rsp, 16;                             jmp   n489_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n491_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # Push_list
                        mov              qword ptr [r9 + 232], rdx;           jmp   n492_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# push_list_end  <stmt 53, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_begin_α:                                                       jmp   n494_statement_end_α
n493_statement_begin_β:                                                       jmp   n495_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_end_α:                                                         jmp   n495_statement_begin_α
#=======================================================================================================================
#                DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n495_statement_begin_α:                                                       jmp   n496_func_activate_α
n495_statement_begin_β:                                                       jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n496_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1357_0]
                        mov              rsi, qword ptr [rip + .Lx1357_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n497_statement_end_α
n496_func_activate_β:                                                         jmp   n495_statement_begin_β
.Lx1357_0:              .quad            .Lx1357_0_s
.Lx1357_0_s:            .string          "push_item"
.Lx1357_1:              .quad            .Lx1357_1_s
.Lx1357_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:                                                         jmp   n498_statement_begin_α
#=======================================================================================================================
#                DEFINE('Push_item(vs)')                      :(push_item_end)
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α:                                                       jmp   n499_func_activate_α
n498_statement_begin_β:                                                       jmp   n520_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n499_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1363_0]
                        mov              rsi, qword ptr [rip + .Lx1363_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n500_statement_end_α
n499_func_activate_β:                                                         jmp   n498_statement_begin_β
.Lx1363_0:              .quad            .Lx1363_0_s
.Lx1363_0_s:            .string          "Push_item"
.Lx1363_1:              .quad            .Lx1363_1_s
.Lx1363_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:                                                         jmp   n520_statement_begin_α
#=======================================================================================================================
# push_item      dummy          =  stk_push_item(v)
#-----------------------------------------------------------------------------------------------------------------------
push_item_body:                                                               jmp   n502_var_α
n501_statement_begin_β:                                                       jmp   n506_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # v
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n503_call_α
#-----------------------------------------------------------------------------------------------------------------------
n503_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1370z]
                        lea              rax, [rip + stk_push_item_alpha];    jmp   rax
.Lsig1370z:             .quad            1
                        .quad            .Lx1370_2
                        .quad            .Lx1370_2
                        .quad            16
.Lx1370_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1370_29
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
.Lx1370_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1370_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n501_statement_begin_β
.Lx1370_240:                                                                  jmp   n504_assign_α
n503_call_β:                                                                  jmp   n501_statement_begin_β
.Lx1370_0:              .quad            .Lx1370_0_s
.Lx1370_0_s:            .string          "stk_push_item"
#-----------------------------------------------------------------------------------------------------------------------
n504_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n505_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_end_α:   add              rsp, 32;                             jmp   n506_statement_begin_α
#=======================================================================================================================
#                push_item      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_begin_α:                                                       jmp   n507_lit_string_α
n506_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n508_call_α
.Lx1376_0:              .quad            .Lx1376_0_s
.Lx1376_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n508_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1378:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1378]
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
                        cmp              eax, 104;                            jne   .Lx1377_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n506_statement_begin_β
.Lx1377_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n509_assign_α
n508_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n506_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n509_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # push_item
                        mov              qword ptr [r9 + 248], rdx;           jmp   n510_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Push_item_body:                                                               jmp   n512_lit_string_α
n511_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n513_var_α
.Lx1384_0:              .quad            .Lx1384_0_s
.Lx1384_0_s:            .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # vs
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n514_binop_α
n513_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n511_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n514_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_lit_string_α
n514_binop_β:           add              rsp, 16;                             jmp   n513_var_β
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n516_binop_α
n515_lit_string_β:      add              rsp, 16;                             jmp   n514_binop_β
.Lx1387_0:              .quad            .Lx1387_0_s
.Lx1387_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n516_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n517_call_α
n516_binop_β:           add              rsp, 16;                             jmp   n515_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n517_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1390:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1390]
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
                        cmp              eax, 104;                            jne   .Lx1389_240
                        add              rsp, 16;                             jmp   n516_binop_β
.Lx1389_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n518_assign_α
n517_call_β:            add              rsp, 16;                             jmp   n516_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n518_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # Push_item
                        mov              qword ptr [r9 + 264], rdx;           jmp   n519_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n519_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# push_item_end  <stmt 59, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n520_statement_begin_α:                                                       jmp   n521_statement_end_α
n520_statement_begin_β:                                                       jmp   n522_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n521_statement_end_α:                                                         jmp   n522_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n522_statement_begin_α:                                                       jmp   n523_func_activate_α
n522_statement_begin_β:                                                       jmp   n525_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n523_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1401_0]
                        mov              rsi, qword ptr [rip + .Lx1401_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n524_statement_end_α
n523_func_activate_β:                                                         jmp   n522_statement_begin_β
.Lx1401_0:              .quad            .Lx1401_0_s
.Lx1401_0_s:            .string          "pop_list"
.Lx1401_1:              .quad            .Lx1401_1_s
.Lx1401_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_end_α:                                                         jmp   n525_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_list()')                         :(pop_list_end)
#-----------------------------------------------------------------------------------------------------------------------
n525_statement_begin_α:                                                       jmp   n526_func_activate_α
n525_statement_begin_β:                                                       jmp   n544_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n526_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1407_0]
                        mov              rsi, qword ptr [rip + .Lx1407_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_Pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n527_statement_end_α
n526_func_activate_β:                                                         jmp   n525_statement_begin_β
.Lx1407_0:              .quad            .Lx1407_0_s
.Lx1407_0_s:            .string          "Pop_list"
.Lx1407_1:              .quad            .Lx1407_1_s
.Lx1407_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_end_α:                                                         jmp   n544_statement_begin_α
#=======================================================================================================================
# pop_list       dummy          =  stk_pop_into_parent()
#-----------------------------------------------------------------------------------------------------------------------
pop_list_body:                                                                jmp   n529_call_α
n528_statement_begin_β:                                                       jmp   n532_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n529_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1413z]
                        lea              rax, [rip + stk_pop_into_parent_alpha]
                                                                              jmp   rax
.Lsig1413z:             .quad            0
                        .quad            .Lx1413_2
                        .quad            .Lx1413_2
.Lx1413_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1413_29
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
.Lx1413_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1413_240
                        add              rsp, 16;                             jmp   n528_statement_begin_β
.Lx1413_240:                                                                  jmp   n530_assign_α
n529_call_β:                                                                  jmp   n528_statement_begin_β
.Lx1413_0:              .quad            .Lx1413_0_s
.Lx1413_0_s:            .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n530_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n531_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n531_statement_end_α:   add              rsp, 16;                             jmp   n532_statement_begin_α
#=======================================================================================================================
#                pop_list       =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n532_statement_begin_α:                                                       jmp   n533_lit_string_α
n532_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1419_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n534_call_α
.Lx1419_0:              .quad            .Lx1419_0_s
.Lx1419_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n534_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1421:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1421]
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
                        cmp              eax, 104;                            jne   .Lx1420_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n532_statement_begin_β
.Lx1420_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n535_assign_α
n534_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n532_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n535_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # pop_list
                        mov              qword ptr [r9 + 280], rdx;           jmp   n536_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n536_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Pop_list_body:                                                                jmp   n538_var_α
n537_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n538_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 640]            # epsilon
                        mov              rdx, qword ptr [r9 + 648]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n539_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n539_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 832], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 840], rdx;           jmp   n540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1429_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n541_call_α
n540_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n537_statement_begin_β
.Lx1429_0:              .quad            .Lx1429_0_s
.Lx1429_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1431:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1431]
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
                        cmp              eax, 104;                            jne   .Lx1430_240
                        add              rsp, 16;                             jmp   n540_lit_string_β
.Lx1430_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n542_assign_α
n541_call_β:            add              rsp, 16;                             jmp   n540_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n542_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # Pop_list
                        mov              qword ptr [r9 + 296], rdx;           jmp   n543_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n543_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# pop_list_end  <stmt 65, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_begin_α:                                                       jmp   n545_statement_end_α
n544_statement_begin_β:                                                       jmp   n546_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n545_statement_end_α:                                                         jmp   n546_statement_begin_α
#=======================================================================================================================
#                DEFINE('pop_final(v)')
#-----------------------------------------------------------------------------------------------------------------------
n546_statement_begin_α:                                                       jmp   n547_func_activate_α
n546_statement_begin_β:                                                       jmp   n549_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n547_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1442_0]
                        mov              rsi, qword ptr [rip + .Lx1442_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n548_statement_end_α
n547_func_activate_β:                                                         jmp   n546_statement_begin_β
.Lx1442_0:              .quad            .Lx1442_0_s
.Lx1442_0_s:            .string          "pop_final"
.Lx1442_1:              .quad            .Lx1442_1_s
.Lx1442_1_s:            .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n548_statement_end_α:                                                         jmp   n549_statement_begin_α
#=======================================================================================================================
#                DEFINE('Pop_final(vs)')                      :(pop_final_end)
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_begin_α:                                                       jmp   n550_func_activate_α
n549_statement_begin_β:                                                       jmp   n571_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n550_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1448_0]
                        mov              rsi, qword ptr [rip + .Lx1448_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_Pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n551_statement_end_α
n550_func_activate_β:                                                         jmp   n549_statement_begin_β
.Lx1448_0:              .quad            .Lx1448_0_s
.Lx1448_0_s:            .string          "Pop_final"
.Lx1448_1:              .quad            .Lx1448_1_s
.Lx1448_1_s:            .string          "vs"
#-----------------------------------------------------------------------------------------------------------------------
n551_statement_end_α:                                                         jmp   n571_statement_begin_α
#=======================================================================================================================
# pop_final      dummy          =  stk_pop_final(v)
#-----------------------------------------------------------------------------------------------------------------------
pop_final_body:                                                               jmp   n553_var_α
n552_statement_begin_β:                                                       jmp   n557_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # v
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n554_call_α
#-----------------------------------------------------------------------------------------------------------------------
n554_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1455z]
                        lea              rax, [rip + stk_pop_final_alpha];    jmp   rax
.Lsig1455z:             .quad            1
                        .quad            .Lx1455_2
                        .quad            .Lx1455_2
                        .quad            16
.Lx1455_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1455_29
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
.Lx1455_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1455_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n552_statement_begin_β
.Lx1455_240:                                                                  jmp   n555_assign_α
n554_call_β:                                                                  jmp   n552_statement_begin_β
.Lx1455_0:              .quad            .Lx1455_0_s
.Lx1455_0_s:            .string          "stk_pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n555_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n556_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_end_α:   add              rsp, 32;                             jmp   n557_statement_begin_α
#=======================================================================================================================
#                pop_final      =  .dummy                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_begin_α:                                                       jmp   n558_lit_string_α
n557_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1461_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n559_call_α
.Lx1461_0:              .quad            .Lx1461_0_s
.Lx1461_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n559_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1463:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1463]
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
                        cmp              eax, 104;                            jne   .Lx1462_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n557_statement_begin_β
.Lx1462_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n560_assign_α
n559_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n557_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n560_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # pop_final
                        mov              qword ptr [r9 + 312], rdx;           jmp   n561_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n561_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
Pop_final_body:                                                               jmp   n563_lit_string_α
n562_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1469_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n564_var_α
.Lx1469_0:              .quad            .Lx1469_0_s
.Lx1469_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # vs
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n565_binop_α
n564_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n562_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n565_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n566_lit_string_α
n565_binop_β:           add              rsp, 16;                             jmp   n564_var_β
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1472_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n567_binop_α
n566_lit_string_β:      add              rsp, 16;                             jmp   n565_binop_β
.Lx1472_0:              .quad            .Lx1472_0_s
.Lx1472_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n567_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n568_call_α
n567_binop_β:           add              rsp, 16;                             jmp   n566_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n568_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1475:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1475]
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
                        cmp              eax, 104;                            jne   .Lx1474_240
                        add              rsp, 16;                             jmp   n567_binop_β
.Lx1474_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n569_assign_α
n568_call_β:            add              rsp, 16;                             jmp   n567_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n569_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # Pop_final
                        mov              qword ptr [r9 + 328], rdx;           jmp   n570_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n570_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# pop_final_end  <stmt 71, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n571_statement_begin_α:                                                       jmp   n572_statement_end_α
n571_statement_begin_β:                                                       jmp   n573_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_end_α:                                                         jmp   n573_statement_begin_α
#=======================================================================================================================
#                DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
#-----------------------------------------------------------------------------------------------------------------------
n573_statement_begin_α:                                                       jmp   n574_func_activate_α
n573_statement_begin_β:                                                       jmp   n656_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n574_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1486_0]
                        mov              rsi, qword ptr [rip + .Lx1486_1]
                        mov              edx, 6
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_node_repr_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n575_statement_end_α
n574_func_activate_β:                                                         jmp   n573_statement_begin_β
.Lx1486_0:              .quad            .Lx1486_0_s
.Lx1486_0_s:            .string          "node_repr"
.Lx1486_1:              .quad            .Lx1486_1_s
.Lx1486_1_s:            .string          "f,r,sep,i,n,tag"
#-----------------------------------------------------------------------------------------------------------------------
n575_statement_end_α:                                                         jmp   n656_statement_begin_α
#=======================================================================================================================
# node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
#-----------------------------------------------------------------------------------------------------------------------
node_repr_body:                                                               jmp   n577_var_α
n576_statement_begin_β:                                                       jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
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
.Lrkfnzd1493:           .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1493]
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
                        cmp              eax, 104;                            jne   .Lx1492_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
.Lx1492_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_keyword_snobol4_α
n578_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n579_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1494_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n580_keyword_snobol4_α
.Lx1494_0:              .quad            .Lx1494_0_s
.Lx1494_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n580_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1495_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n581_call_α
.Lx1495_0:              .quad            .Lx1495_0_s
.Lx1495_0_s:            .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n581_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lrkfnzd1497:           .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1497]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx1496_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n576_statement_begin_β
.Lx1496_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n582_lit_string_α
n581_call_β:            add              rsp, 16
                        add              rsp, 64;                             jmp   n576_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1498_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n583_call_α
n582_lit_string_β:      add              rsp, 16
                        add              rsp, 80;                             jmp   n576_statement_begin_β
.Lx1498_0:              .quad            .Lx1498_0_s
.Lx1498_0_s:            .string          "STRING"
#-----------------------------------------------------------------------------------------------------------------------
n583_call_α:            sub              rsp, 16
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
.Lrkfnzd1500:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1500]
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
                        cmp              eax, 104;                            jne   .Lx1499_240
                        add              rsp, 16;                             jmp   n582_lit_string_β
.Lx1499_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n584_statement_end_α
n583_call_β:            add              rsp, 16;                             jmp   n582_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_end_α:   add              rsp, 112;                            jmp   n585_statement_begin_α
#=======================================================================================================================
#                node_repr      =  "'" f "'"                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_begin_α:                                                       jmp   n586_lit_string_α
n585_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1505_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n587_var_α
.Lx1505_0:              .quad            .Lx1505_0_s
.Lx1505_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n587_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n588_binop_α
n587_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n585_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n588_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n589_lit_string_α
n588_binop_β:           add              rsp, 16;                             jmp   n587_var_β
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1508_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n590_binop_α
n589_lit_string_β:      add              rsp, 16;                             jmp   n588_binop_β
.Lx1508_0:              .quad            .Lx1508_0_s
.Lx1508_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n590_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n591_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n591_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # node_repr
                        mov              qword ptr [r9 + 344], rdx;           jmp   n592_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# nr_frame       tag            =  stk_tag[f]
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_begin_α:                                                       jmp   n594_var_α
n593_statement_begin_β:                                                       jmp   n600_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n594_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # stk_tag
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n595_var_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n596_subscript_α
n595_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n593_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n596_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1517_240
                        add              rsp, 16;                             jmp   n595_var_β
.Lx1517_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n597_deref_α
n596_subscript_β:       add              rsp, 16;                             jmp   n595_var_β
#-----------------------------------------------------------------------------------------------------------------------
n597_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1518_240
                        add              rsp, 16;                             jmp   n596_subscript_β
.Lx1518_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n598_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n598_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # tag
                        mov              qword ptr [r9 + 424], rdx;           jmp   n599_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n599_statement_end_α:   add              rsp, 64;                             jmp   n600_statement_begin_α
#=======================================================================================================================
#                n              =  stk_n[f]
#-----------------------------------------------------------------------------------------------------------------------
n600_statement_begin_α:                                                       jmp   n601_var_α
n600_statement_begin_β:                                                       jmp   n607_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n603_subscript_α
n602_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n600_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n603_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1526_240
                        add              rsp, 16;                             jmp   n602_var_β
.Lx1526_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n604_deref_α
n603_subscript_β:       add              rsp, 16;                             jmp   n602_var_β
#-----------------------------------------------------------------------------------------------------------------------
n604_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1527_240
                        add              rsp, 16;                             jmp   n603_subscript_β
.Lx1527_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n605_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n605_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              qword ptr [r9 + 120], rdx;           jmp   n606_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n606_statement_end_α:   add              rsp, 64;                             jmp   n607_statement_begin_α
#=======================================================================================================================
#                r              =  "('" tag "'"
#-----------------------------------------------------------------------------------------------------------------------
n607_statement_begin_α:                                                       jmp   n608_lit_string_α
n607_statement_begin_β:                                                       jmp   n615_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n609_var_α
.Lx1533_0:              .quad            .Lx1533_0_s
.Lx1533_0_s:            .string          "('"
#-----------------------------------------------------------------------------------------------------------------------
n609_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # tag
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n610_binop_α
n609_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n607_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n610_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n611_lit_string_α
n610_binop_β:           add              rsp, 16;                             jmp   n609_var_β
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1536_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n612_binop_α
n611_lit_string_β:      add              rsp, 16;                             jmp   n610_binop_β
.Lx1536_0:              .quad            .Lx1536_0_s
.Lx1536_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n612_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n613_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # r
                        mov              qword ptr [r9 + 376], rdx;           jmp   n614_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n614_statement_end_α:   add              rsp, 80;                             jmp   n615_statement_begin_α
#=======================================================================================================================
#                i              =  0
#-----------------------------------------------------------------------------------------------------------------------
n615_statement_begin_α:                                                       jmp   n616_lit_integer_α
n615_statement_begin_β:                                                       jmp   n619_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1543_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n617_assign_α
.Lx1543_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n617_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              qword ptr [r9 + 408], rdx;           jmp   n618_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n618_statement_end_α:   add              rsp, 16;                             jmp   n619_statement_begin_α
#=======================================================================================================================
# nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
#-----------------------------------------------------------------------------------------------------------------------
n619_statement_begin_α:                                                       jmp   n620_var_α
n619_statement_begin_β:                                                       jmp   n650_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n620_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n621_var_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n622_coerce_numeric_α
n621_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n619_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n622_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1552_1
                        cmp              eax, 3;                              jne   .Lx1552_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1552_0
.Lx1552_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n623_coerce_numeric_α
.Lx1552_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n623_coerce_numeric_α
n622_coerce_numeric_β:  add              rsp, 16;                             jmp   n621_var_β
#-----------------------------------------------------------------------------------------------------------------------
n623_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1554_1
                        cmp              eax, 3;                              jne   .Lx1554_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx1554_0
.Lx1554_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n624_cmp_test_α
.Lx1554_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n624_cmp_test_α
n623_coerce_numeric_β:  add              rsp, 16;                             jmp   n622_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n624_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx1556_240
                        add              rsp, 16;                             jmp   n623_coerce_numeric_β
.Lx1556_240:            mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n625_var_α
n624_cmp_test_β:        add              rsp, 16;                             jmp   n623_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n625_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n626_lit_integer_α
n625_var_β:             add              rsp, 16;                             jmp   n624_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1558_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n627_binop_α
n626_lit_integer_β:     add              rsp, 16;                             jmp   n625_var_β
.Lx1558_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n627_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1559_240
                        add              rsp, 16;                             jmp   n626_lit_integer_β
.Lx1559_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_binop_α
n627_binop_β:           add              rsp, 16;                             jmp   n626_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n628_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n629_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              qword ptr [r9 + 408], rdx;           jmp   n630_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_end_α:   add              rsp, 144;                            jmp   n631_statement_begin_α
#=======================================================================================================================
#                r              =  r ', ' node_repr(stk_c[f][i])
#-----------------------------------------------------------------------------------------------------------------------
n631_statement_begin_α:                                                       jmp   n632_var_α
n631_statement_begin_β:                                                       jmp   n646_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n632_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # r
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n633_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1567_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n634_binop_α
n633_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n631_statement_begin_β
.Lx1567_0:              .quad            .Lx1567_0_s
.Lx1567_0_s:            .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n634_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_var_α
n634_binop_β:           add              rsp, 16;                             jmp   n633_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # stk_c
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n636_var_α
n635_var_β:             add              rsp, 16;                             jmp   n634_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n636_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n637_subscript_α
n636_var_β:             add              rsp, 16;                             jmp   n635_var_β
#-----------------------------------------------------------------------------------------------------------------------
n637_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1571_240
                        add              rsp, 16;                             jmp   n636_var_β
.Lx1571_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n638_deref_α
n637_subscript_β:       add              rsp, 16;                             jmp   n636_var_β
#-----------------------------------------------------------------------------------------------------------------------
n638_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1572_240
                        add              rsp, 16;                             jmp   n637_subscript_β
.Lx1572_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n639_var_α
n638_deref_β:           add              rsp, 16;                             jmp   n637_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n639_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n640_subscript_α
n639_var_β:             add              rsp, 16;                             jmp   n638_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n640_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1574_240
                        add              rsp, 16;                             jmp   n639_var_β
.Lx1574_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n641_deref_α
n640_subscript_β:       add              rsp, 16;                             jmp   n639_var_β
#-----------------------------------------------------------------------------------------------------------------------
n641_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1575_240
                        add              rsp, 16;                             jmp   n640_subscript_β
.Lx1575_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n642_call_α
n641_deref_β:           add              rsp, 16;                             jmp   n640_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n642_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1577z]
                        lea              rax, [rip + node_repr_alpha];        jmp   rax
.Lsig1577z:             .quad            1
                        .quad            .Lx1577_2
                        .quad            .Lx1577_2
                        .quad            16
.Lx1577_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1577_29
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
.Lx1577_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1577_240
                        add              rsp, 16;                             jmp   n641_deref_β
.Lx1577_240:                                                                  jmp   n643_binop_α
n642_call_β:                                                                  jmp   n641_deref_β
.Lx1577_0:              .quad            .Lx1577_0_s
.Lx1577_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n643_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 144]           # binop
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n644_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n644_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # r
                        mov              qword ptr [r9 + 376], rdx;           jmp   n645_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n645_statement_end_α:   add              rsp, 192;                            jmp   n646_statement_begin_α
#=======================================================================================================================
#                i              =  i                          :(nr_lp)
#-----------------------------------------------------------------------------------------------------------------------
n646_statement_begin_α:                                                       jmp   n647_var_α
n646_statement_begin_β:                                                       jmp   n619_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n647_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n648_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n648_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              qword ptr [r9 + 408], rdx;           jmp   n649_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n649_statement_end_α:   add              rsp, 16;                             jmp   n619_statement_begin_α
#=======================================================================================================================
# nr_done        node_repr      =  r ')'                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n650_statement_begin_α:                                                       jmp   n651_var_α
n650_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n651_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # r
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n652_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n653_binop_α
n652_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n650_statement_begin_β
.Lx1591_0:              .quad            .Lx1591_0_s
.Lx1591_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n653_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n654_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n654_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # node_repr
                        mov              qword ptr [r9 + 344], rdx;           jmp   n655_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n655_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# node_repr_end  <stmt 83, line 101: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n656_statement_begin_α:                                                       jmp   n657_statement_end_α
n656_statement_begin_β:                                                       jmp   n658_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n657_statement_end_α:                                                         jmp   n658_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_node(f,indent,suffix)r,pad,tag,n,i,nxt') :(pp_node_end)
#-----------------------------------------------------------------------------------------------------------------------
n658_statement_begin_α:                                                       jmp   n659_func_activate_α
n658_statement_begin_β:                                                       jmp   n801_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n659_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1603_0]
                        mov              rsi, qword ptr [rip + .Lx1603_1]
                        mov              edx, 9
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + proc_pp_node_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n660_statement_end_α
n659_func_activate_β:                                                         jmp   n658_statement_begin_β
.Lx1603_0:              .quad            .Lx1603_0_s
.Lx1603_0_s:            .string          "pp_node"
.Lx1603_1:              .quad            .Lx1603_1_s
.Lx1603_1_s:            .string          "f,indent,suffix,r,pad,tag,n,i,nxt"
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_end_α:                                                         jmp   n801_statement_begin_α
#=======================================================================================================================
# pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
#-----------------------------------------------------------------------------------------------------------------------
pp_node_body:                                                                 jmp   n662_var_α
n661_statement_begin_β:                                                       jmp   n684_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n662_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n663_call_α
#-----------------------------------------------------------------------------------------------------------------------
n663_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1610:           .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1610]
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
                        cmp              eax, 104;                            jne   .Lx1609_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n661_statement_begin_β
.Lx1609_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n664_keyword_snobol4_α
n663_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n661_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n664_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1611_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n665_keyword_snobol4_α
.Lx1611_0:              .quad            .Lx1611_0_s
.Lx1611_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n665_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1612_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n666_call_α
.Lx1612_0:              .quad            .Lx1612_0_s
.Lx1612_0_s:            .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n666_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lrkfnzd1614:           .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1614]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx1613_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n661_statement_begin_β
.Lx1613_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n667_lit_string_α
n666_call_β:            add              rsp, 16
                        add              rsp, 64;                             jmp   n661_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n668_call_α
n667_lit_string_β:      add              rsp, 16
                        add              rsp, 80;                             jmp   n661_statement_begin_β
.Lx1615_0:              .quad            .Lx1615_0_s
.Lx1615_0_s:            .string          "STRING"
#-----------------------------------------------------------------------------------------------------------------------
n668_call_α:            sub              rsp, 16
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
.Lrkfnzd1617:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1617]
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
                        cmp              eax, 104;                            jne   .Lx1616_240
                        add              rsp, 16;                             jmp   n667_lit_string_β
.Lx1616_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n669_statement_end_α
n668_call_β:            add              rsp, 16;                             jmp   n667_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n669_statement_end_α:   add              rsp, 112;                            jmp   n670_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  DUPL(' ', indent) "'" f "'" suffix  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n670_statement_begin_α:                                                       jmp   n671_lit_string_α
n670_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1622_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n672_var_α
.Lx1622_0:              .quad            .Lx1622_0_s
.Lx1622_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n672_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n673_call_α
n672_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n670_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n673_call_α:            sub              rsp, 16
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
.Lrkfnzd1625:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1625]
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
                        cmp              eax, 104;                            jne   .Lx1624_240
                        add              rsp, 16;                             jmp   n672_var_β
.Lx1624_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n674_lit_string_α
n673_call_β:            add              rsp, 16;                             jmp   n672_var_β
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1626_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n675_binop_α
n674_lit_string_β:      add              rsp, 32;                             jmp   n672_var_β
.Lx1626_0:              .quad            .Lx1626_0_s
.Lx1626_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n675_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n676_var_α
n675_binop_β:           add              rsp, 16;                             jmp   n674_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n676_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n677_binop_α
n676_var_β:             add              rsp, 16;                             jmp   n675_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n677_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n678_lit_string_α
n677_binop_β:           add              rsp, 16;                             jmp   n676_var_β
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1630_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n679_binop_α
n678_lit_string_β:      add              rsp, 16;                             jmp   n677_binop_β
.Lx1630_0:              .quad            .Lx1630_0_s
.Lx1630_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n679_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n680_var_α
n679_binop_β:           add              rsp, 16;                             jmp   n678_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n681_binop_α
n680_var_β:             add              rsp, 16;                             jmp   n679_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n681_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n682_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n682_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1634_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n683_statement_end_α
.Lx1634_0:              .quad            .Lx1634_0_s
.Lx1634_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n683_statement_end_α:   add              rsp, 176;                            jmp   RETURN
#=======================================================================================================================
# pp_frame       r              =  node_repr(f)
#-----------------------------------------------------------------------------------------------------------------------
n684_statement_begin_α:                                                       jmp   n685_var_α
n684_statement_begin_β:                                                       jmp   n689_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n686_call_α
#-----------------------------------------------------------------------------------------------------------------------
n686_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1641z]
                        lea              rax, [rip + node_repr_alpha];        jmp   rax
.Lsig1641z:             .quad            1
                        .quad            .Lx1641_2
                        .quad            .Lx1641_2
                        .quad            16
.Lx1641_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1641_29
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
.Lx1641_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1641_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n684_statement_begin_β
.Lx1641_240:                                                                  jmp   n687_assign_α
n686_call_β:                                                                  jmp   n684_statement_begin_β
.Lx1641_0:              .quad            .Lx1641_0_s
.Lx1641_0_s:            .string          "node_repr"
#-----------------------------------------------------------------------------------------------------------------------
n687_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # r
                        mov              qword ptr [r9 + 376], rdx;           jmp   n688_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n688_statement_end_α:   add              rsp, 32;                             jmp   n689_statement_begin_α
#=======================================================================================================================
#                pad            =  DUPL(' ', indent)
#-----------------------------------------------------------------------------------------------------------------------
n689_statement_begin_α:                                                       jmp   n690_lit_string_α
n689_statement_begin_β:                                                       jmp   n695_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1647_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n691_var_α
.Lx1647_0:              .quad            .Lx1647_0_s
.Lx1647_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n692_call_α
n691_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n689_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n692_call_α:            sub              rsp, 16
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
.Lrkfnzd1650:           .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1650]
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
                        cmp              eax, 104;                            jne   .Lx1649_240
                        add              rsp, 16;                             jmp   n691_var_β
.Lx1649_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n693_assign_α
n692_call_β:            add              rsp, 16;                             jmp   n691_var_β
#-----------------------------------------------------------------------------------------------------------------------
n693_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # pad
                        mov              qword ptr [r9 + 488], rdx;           jmp   n694_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n694_statement_end_α:   add              rsp, 48;                             jmp   n695_statement_begin_α
#=======================================================================================================================
#                GT(80, indent + SIZE(r))                     :F(pp_wrap)
#-----------------------------------------------------------------------------------------------------------------------
n695_statement_begin_α:                                                       jmp   n696_lit_integer_α
n695_statement_begin_β:                                                       jmp   n713_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1656_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n697_var_α
.Lx1656_0:              .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n697_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n698_var_α
n697_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n695_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # r
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n699_call_α
n698_var_β:             add              rsp, 16;                             jmp   n697_var_β
#-----------------------------------------------------------------------------------------------------------------------
n699_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1660:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1660]
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
                        cmp              eax, 104;                            jne   .Lx1659_240
                        add              rsp, 16;                             jmp   n698_var_β
.Lx1659_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n700_binop_α
n699_call_β:            add              rsp, 16;                             jmp   n698_var_β
#-----------------------------------------------------------------------------------------------------------------------
n700_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1661_240
                        add              rsp, 32;                             jmp   n698_var_β
.Lx1661_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n701_coerce_numeric_α
n700_binop_β:           add              rsp, 32;                             jmp   n698_var_β
#-----------------------------------------------------------------------------------------------------------------------
n701_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1663_1
                        cmp              eax, 3;                              jne   .Lx1663_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx1663_0
.Lx1663_1:              mov              rax, qword ptr [rsp + 80]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n702_coerce_numeric_α
.Lx1663_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n702_coerce_numeric_α
n701_coerce_numeric_β:  add              rsp, 16;                             jmp   n700_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n702_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx1665_1
                        cmp              eax, 3;                              jne   .Lx1665_0
                        mov              eax, dword ptr [rsp + 96]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1665_0
.Lx1665_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n703_cmp_test_α
.Lx1665_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n703_cmp_test_α
n702_coerce_numeric_β:  add              rsp, 16;                             jmp   n701_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n703_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1667_240
                        add              rsp, 16;                             jmp   n702_coerce_numeric_β
.Lx1667_240:                                                                  jmp   n704_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n704_statement_end_α:   add              rsp, 128;                            jmp   n705_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  pad r suffix               :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n705_statement_begin_α:                                                       jmp   n706_var_α
n705_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n706_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n707_var_α
#-----------------------------------------------------------------------------------------------------------------------
n707_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # r
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n708_binop_α
n707_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n705_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n708_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n709_var_α
n708_binop_β:           add              rsp, 16;                             jmp   n707_var_β
#-----------------------------------------------------------------------------------------------------------------------
n709_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n710_binop_α
n709_var_β:             add              rsp, 16;                             jmp   n708_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n710_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n711_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n711_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1677_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n712_statement_end_α
.Lx1677_0:              .quad            .Lx1677_0_s
.Lx1677_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n712_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# pp_wrap        tag            =  stk_tag[f]
#-----------------------------------------------------------------------------------------------------------------------
n713_statement_begin_α:                                                       jmp   n714_var_α
n713_statement_begin_β:                                                       jmp   n720_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n714_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # stk_tag
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n715_var_α
#-----------------------------------------------------------------------------------------------------------------------
n715_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n716_subscript_α
n715_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n713_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n716_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1684_240
                        add              rsp, 16;                             jmp   n715_var_β
.Lx1684_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n717_deref_α
n716_subscript_β:       add              rsp, 16;                             jmp   n715_var_β
#-----------------------------------------------------------------------------------------------------------------------
n717_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1685_240
                        add              rsp, 16;                             jmp   n716_subscript_β
.Lx1685_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n718_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n718_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # tag
                        mov              qword ptr [r9 + 424], rdx;           jmp   n719_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n719_statement_end_α:   add              rsp, 64;                             jmp   n720_statement_begin_α
#=======================================================================================================================
#                n              =  stk_n[f]
#-----------------------------------------------------------------------------------------------------------------------
n720_statement_begin_α:                                                       jmp   n721_var_α
n720_statement_begin_β:                                                       jmp   n727_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n721_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # stk_n
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n722_var_α
#-----------------------------------------------------------------------------------------------------------------------
n722_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n723_subscript_α
n722_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n720_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n723_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1693_240
                        add              rsp, 16;                             jmp   n722_var_β
.Lx1693_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n724_deref_α
n723_subscript_β:       add              rsp, 16;                             jmp   n722_var_β
#-----------------------------------------------------------------------------------------------------------------------
n724_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1694_240
                        add              rsp, 16;                             jmp   n723_subscript_β
.Lx1694_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n725_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n725_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # n
                        mov              qword ptr [r9 + 120], rdx;           jmp   n726_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n726_statement_end_α:   add              rsp, 64;                             jmp   n727_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  pad '( ' "'" tag "',"
#-----------------------------------------------------------------------------------------------------------------------
n727_statement_begin_α:                                                       jmp   n728_var_α
n727_statement_begin_β:                                                       jmp   n739_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n728_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # pad
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n729_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1701_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n730_binop_α
n729_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n727_statement_begin_β
.Lx1701_0:              .quad            .Lx1701_0_s
.Lx1701_0_s:            .string          "( "
#-----------------------------------------------------------------------------------------------------------------------
n730_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n731_lit_string_α
n730_binop_β:           add              rsp, 16;                             jmp   n729_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1703_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n732_binop_α
n731_lit_string_β:      add              rsp, 16;                             jmp   n730_binop_β
.Lx1703_0:              .quad            .Lx1703_0_s
.Lx1703_0_s:            .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n732_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n733_var_α
n732_binop_β:           add              rsp, 16;                             jmp   n731_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n733_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # tag
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n734_binop_α
n733_var_β:             add              rsp, 16;                             jmp   n732_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n734_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n735_lit_string_α
n734_binop_β:           add              rsp, 16;                             jmp   n733_var_β
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n736_binop_α
n735_lit_string_β:      add              rsp, 16;                             jmp   n734_binop_β
.Lx1707_0:              .quad            .Lx1707_0_s
.Lx1707_0_s:            .string          "',"
#-----------------------------------------------------------------------------------------------------------------------
n736_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n737_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n737_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1709_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n738_statement_end_α
.Lx1709_0:              .quad            .Lx1709_0_s
.Lx1709_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n738_statement_end_α:   add              rsp, 144;                            jmp   n739_statement_begin_α
#=======================================================================================================================
#                i              =  0
#-----------------------------------------------------------------------------------------------------------------------
n739_statement_begin_α:                                                       jmp   n740_lit_integer_α
n739_statement_begin_β:                                                       jmp   n743_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1714_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n741_assign_α
.Lx1714_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n741_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              qword ptr [r9 + 408], rdx;           jmp   n742_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n742_statement_end_α:   add              rsp, 16;                             jmp   n743_statement_begin_α
#=======================================================================================================================
# pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
#-----------------------------------------------------------------------------------------------------------------------
n743_statement_begin_α:                                                       jmp   n744_var_α
n743_statement_begin_β:                                                       jmp   n799_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n744_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n745_var_α
#-----------------------------------------------------------------------------------------------------------------------
n745_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n746_coerce_numeric_α
n745_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n743_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n746_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1723_1
                        cmp              eax, 3;                              jne   .Lx1723_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1723_0
.Lx1723_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n747_coerce_numeric_α
.Lx1723_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n747_coerce_numeric_α
n746_coerce_numeric_β:  add              rsp, 16;                             jmp   n745_var_β
#-----------------------------------------------------------------------------------------------------------------------
n747_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1725_1
                        cmp              eax, 3;                              jne   .Lx1725_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx1725_0
.Lx1725_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n748_cmp_test_α
.Lx1725_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n748_cmp_test_α
n747_coerce_numeric_β:  add              rsp, 16;                             jmp   n746_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n748_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx1727_240
                        add              rsp, 16;                             jmp   n747_coerce_numeric_β
.Lx1727_240:            mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n749_var_α
n748_cmp_test_β:        add              rsp, 16;                             jmp   n747_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n749_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n750_lit_integer_α
n749_var_β:             add              rsp, 16;                             jmp   n748_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1729_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n751_binop_α
n750_lit_integer_β:     add              rsp, 16;                             jmp   n749_var_β
.Lx1729_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n751_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1730_240
                        add              rsp, 16;                             jmp   n750_lit_integer_β
.Lx1730_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n752_binop_α
n751_binop_β:           add              rsp, 16;                             jmp   n750_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n752_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n753_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n753_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              qword ptr [r9 + 408], rdx;           jmp   n754_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n754_statement_end_α:   add              rsp, 144;                            jmp   n755_statement_begin_α
#=======================================================================================================================
#                nxt            =  LT(i, n) i                 :F(pp_wlast)
#-----------------------------------------------------------------------------------------------------------------------
n755_statement_begin_α:                                                       jmp   n756_var_α
n755_statement_begin_β:                                                       jmp   n783_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n756_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n757_var_α
#-----------------------------------------------------------------------------------------------------------------------
n757_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n758_coerce_numeric_α
n757_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n755_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n758_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1740_1
                        cmp              eax, 3;                              jne   .Lx1740_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1740_0
.Lx1740_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n759_coerce_numeric_α
.Lx1740_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n759_coerce_numeric_α
n758_coerce_numeric_β:  add              rsp, 16;                             jmp   n757_var_β
#-----------------------------------------------------------------------------------------------------------------------
n759_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1742_1
                        cmp              eax, 3;                              jne   .Lx1742_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx1742_0
.Lx1742_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n760_cmp_test_α
.Lx1742_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n760_cmp_test_α
n759_coerce_numeric_β:  add              rsp, 16;                             jmp   n758_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n760_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx1744_240
                        add              rsp, 16;                             jmp   n759_coerce_numeric_β
.Lx1744_240:            mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n761_var_α
n760_cmp_test_β:        add              rsp, 16;                             jmp   n759_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n761_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n762_binop_α
n761_var_β:             add              rsp, 16;                             jmp   n760_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n762_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # cmp_test
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n763_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n763_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # nxt
                        mov              qword ptr [r9 + 504], rdx;           jmp   n764_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n764_statement_end_α:   add              rsp, 112;                            jmp   n765_statement_begin_α
#=======================================================================================================================
#                pp_node(stk_c[f][i], indent + 2, ',')
#-----------------------------------------------------------------------------------------------------------------------
n765_statement_begin_α:                                                       jmp   n766_var_α
n765_statement_begin_β:                                                       jmp   n779_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n766_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # stk_c
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n767_var_α
#-----------------------------------------------------------------------------------------------------------------------
n767_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n768_subscript_α
n767_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n765_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n768_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1754_240
                        add              rsp, 16;                             jmp   n767_var_β
.Lx1754_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n769_deref_α
n768_subscript_β:       add              rsp, 16;                             jmp   n767_var_β
#-----------------------------------------------------------------------------------------------------------------------
n769_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1755_240
                        add              rsp, 16;                             jmp   n768_subscript_β
.Lx1755_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n770_var_α
n769_deref_β:           add              rsp, 16;                             jmp   n768_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n770_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n771_subscript_α
n770_var_β:             add              rsp, 16;                             jmp   n769_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n771_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1757_240
                        add              rsp, 16;                             jmp   n770_var_β
.Lx1757_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n772_deref_α
n771_subscript_β:       add              rsp, 16;                             jmp   n770_var_β
#-----------------------------------------------------------------------------------------------------------------------
n772_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1758_240
                        add              rsp, 16;                             jmp   n771_subscript_β
.Lx1758_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n773_var_α
n772_deref_β:           add              rsp, 16;                             jmp   n771_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n773_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n774_lit_integer_α
n773_var_β:             add              rsp, 16;                             jmp   n772_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1760_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n775_binop_α
n774_lit_integer_β:     add              rsp, 16;                             jmp   n773_var_β
.Lx1760_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n775_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1761_240
                        add              rsp, 16;                             jmp   n774_lit_integer_β
.Lx1761_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n776_lit_string_α
n775_binop_β:           add              rsp, 16;                             jmp   n774_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1762_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n777_call_α
n776_lit_string_β:      add              rsp, 16;                             jmp   n775_binop_β
.Lx1762_0:              .quad            .Lx1762_0_s
.Lx1762_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n777_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1764z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1764z:             .quad            3
                        .quad            .Lx1764_2
                        .quad            .Lx1764_2
                        .quad            80
                        .quad            32
                        .quad            16
.Lx1764_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1764_29
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
.Lx1764_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1764_240
                        add              rsp, 16;                             jmp   n776_lit_string_β
.Lx1764_240:                                                                  jmp   n778_statement_end_α
n777_call_β:                                                                  jmp   n776_lit_string_β
.Lx1764_0:              .quad            .Lx1764_0_s
.Lx1764_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n778_statement_end_α:   add              rsp, 192;                            jmp   n779_statement_begin_α
#=======================================================================================================================
#                i              =  i                          :(pp_wch)
#-----------------------------------------------------------------------------------------------------------------------
n779_statement_begin_α:                                                       jmp   n780_var_α
n779_statement_begin_β:                                                       jmp   n743_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n780_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n781_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # i
                        mov              qword ptr [r9 + 408], rdx;           jmp   n782_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n782_statement_end_α:   add              rsp, 16;                             jmp   n743_statement_begin_α
#=======================================================================================================================
# pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n783_statement_begin_α:                                                       jmp   n784_var_α
n783_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n784_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 592]            # stk_c
                        mov              rdx, qword ptr [r9 + 600]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n785_var_α
#-----------------------------------------------------------------------------------------------------------------------
n785_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # f
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n786_subscript_α
n785_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n783_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n786_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1777_240
                        add              rsp, 16;                             jmp   n785_var_β
.Lx1777_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n787_deref_α
n786_subscript_β:       add              rsp, 16;                             jmp   n785_var_β
#-----------------------------------------------------------------------------------------------------------------------
n787_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1778_240
                        add              rsp, 16;                             jmp   n786_subscript_β
.Lx1778_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n788_var_α
n787_deref_β:           add              rsp, 16;                             jmp   n786_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n788_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # i
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n789_subscript_α
n788_var_β:             add              rsp, 16;                             jmp   n787_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n789_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1780_240
                        add              rsp, 16;                             jmp   n788_var_β
.Lx1780_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n790_deref_α
n789_subscript_β:       add              rsp, 16;                             jmp   n788_var_β
#-----------------------------------------------------------------------------------------------------------------------
n790_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1781_240
                        add              rsp, 16;                             jmp   n789_subscript_β
.Lx1781_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n791_var_α
n790_deref_β:           add              rsp, 16;                             jmp   n789_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n791_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # indent
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n792_lit_integer_α
n791_var_β:             add              rsp, 16;                             jmp   n790_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1783_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n793_binop_α
n792_lit_integer_β:     add              rsp, 16;                             jmp   n791_var_β
.Lx1783_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n793_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1784_240
                        add              rsp, 16;                             jmp   n792_lit_integer_β
.Lx1784_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n794_lit_string_α
n793_binop_β:           add              rsp, 16;                             jmp   n792_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1785_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n795_var_α
n794_lit_string_β:      add              rsp, 16;                             jmp   n793_binop_β
.Lx1785_0:              .quad            .Lx1785_0_s
.Lx1785_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n795_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # suffix
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n796_binop_α
n795_var_β:             add              rsp, 16;                             jmp   n794_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n796_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n797_call_α
n796_binop_β:           add              rsp, 16;                             jmp   n795_var_β
#-----------------------------------------------------------------------------------------------------------------------
n797_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1789z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1789z:             .quad            3
                        .quad            .Lx1789_2
                        .quad            .Lx1789_2
                        .quad            112
                        .quad            64
                        .quad            16
.Lx1789_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1789_29
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
.Lx1789_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1789_240
                        add              rsp, 16;                             jmp   n796_binop_β
.Lx1789_240:                                                                  jmp   n798_statement_end_α
n797_call_β:                                                                  jmp   n796_binop_β
.Lx1789_0:              .quad            .Lx1789_0_s
.Lx1789_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n798_statement_end_α:   add              rsp, 224;                            jmp   RETURN
#=======================================================================================================================
# pp_wdone                                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n799_statement_begin_α:                                                       jmp   n800_statement_end_α
n799_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n800_statement_end_α:                                                         jmp   RETURN
#=======================================================================================================================
# pp_node_end  <stmt 101, line 120: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n801_statement_begin_α:                                                       jmp   n802_statement_end_α
n801_statement_begin_β:                                                       jmp   n803_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n802_statement_end_α:                                                         jmp   n803_statement_begin_α
#=======================================================================================================================
#                DEFINE('pp_bank()')                          :(pp_bank_end)
#-----------------------------------------------------------------------------------------------------------------------
n803_statement_begin_α:                                                       jmp   n804_func_activate_α
n803_statement_begin_β:                                                       jmp   n817_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n804_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1803_0]
                        mov              rsi, qword ptr [rip + .Lx1803_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_pp_bank_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n805_statement_end_α
n804_func_activate_β:                                                         jmp   n803_statement_begin_β
.Lx1803_0:              .quad            .Lx1803_0_s
.Lx1803_0_s:            .string          "pp_bank"
.Lx1803_1:              .quad            .Lx1803_1_s
.Lx1803_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n805_statement_end_α:                                                         jmp   n817_statement_begin_α
#=======================================================================================================================
# pp_bank        pp_node(bank, 0, '')
#-----------------------------------------------------------------------------------------------------------------------
pp_bank_body:                                                                 jmp   n807_var_α
n806_statement_begin_β:                                                       jmp   n812_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 656]            # bank
                        mov              rdx, qword ptr [r9 + 664]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n808_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1809_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n809_lit_string_α
n808_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n806_statement_begin_β
.Lx1809_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1810_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n810_call_α
n809_lit_string_β:      add              rsp, 16;                             jmp   n808_lit_integer_β
.Lx1810_0:              .quad            .Lx1810_0_s
.Lx1810_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n810_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1812z]
                        lea              rax, [rip + pp_node_alpha];          jmp   rax
.Lsig1812z:             .quad            3
                        .quad            .Lx1812_2
                        .quad            .Lx1812_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx1812_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1812_29
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
.Lx1812_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1812_240
                        add              rsp, 16;                             jmp   n809_lit_string_β
.Lx1812_240:                                                                  jmp   n811_statement_end_α
n810_call_β:                                                                  jmp   n809_lit_string_β
.Lx1812_0:              .quad            .Lx1812_0_s
.Lx1812_0_s:            .string          "pp_node"
#-----------------------------------------------------------------------------------------------------------------------
n811_statement_end_α:   add              rsp, 64;                             jmp   n812_statement_begin_α
#=======================================================================================================================
#                pp_bank        =  .dummy                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n812_statement_begin_α:                                                       jmp   n813_lit_string_α
n812_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n813_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1817_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n814_call_α
.Lx1817_0:              .quad            .Lx1817_0_s
.Lx1817_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n814_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1819:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1819]
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
                        cmp              eax, 104;                            jne   .Lx1818_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n812_statement_begin_β
.Lx1818_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n815_assign_α
n814_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n812_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n815_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # pp_bank
                        mov              qword ptr [r9 + 520], rdx;           jmp   n816_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n816_statement_end_α:   add              rsp, 32;                             jmp   RETURN
#=======================================================================================================================
# pp_bank_end  <stmt 105, line 125: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n817_statement_begin_α:                                                       jmp   n818_statement_end_α
n817_statement_begin_β:                                                       jmp   n819_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n818_statement_end_α:                                                         jmp   n819_statement_begin_α
#=======================================================================================================================
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n819_statement_begin_α:                                                       jmp   n820_lit_string_α
n819_statement_begin_β:                                                       jmp   n824_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n820_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1829_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n821_call_α
.Lx1829_0:              .quad            .Lx1829_0_s
.Lx1829_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n821_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1831:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1831]
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
                        cmp              eax, 104;                            jne   .Lx1830_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n819_statement_begin_β
.Lx1830_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n822_assign_α
n821_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n819_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n822_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # delim
                        mov              qword ptr [r9 + 680], rdx;           jmp   n823_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n823_statement_end_α:   add              rsp, 32;                             jmp   n824_statement_begin_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n824_statement_begin_α:                                                       jmp   n825_lit_string_α
n824_statement_begin_β:                                                       jmp   n829_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n825_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1837_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n826_call_α
.Lx1837_0:              .quad            .Lx1837_0_s
.Lx1837_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n826_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1839:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1839]
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
                        cmp              eax, 104;                            jne   .Lx1838_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n824_statement_begin_β
.Lx1838_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n827_assign_α
n826_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n824_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n827_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 688], rax            # word
                        mov              qword ptr [r9 + 696], rdx;           jmp   n828_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n828_statement_end_α:   add              rsp, 32;                             jmp   n829_statement_begin_α
#=======================================================================================================================
#                group          =  FENCE(
#-----------------------------------------------------------------------------------------------------------------------
n829_statement_begin_α:                                                       jmp   n830_call_α
n829_statement_begin_β:                                                       jmp   n848_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n830_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1846z]
                        lea              rax, [rip + Pop_list_alpha];         jmp   rax
.Lsig1846z:             .quad            0
                        .quad            .Lx1846_2
                        .quad            .Lx1846_2
.Lx1846_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1846_29
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
.Lx1846_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1846_240
                        add              rsp, 16;                             jmp   n829_statement_begin_β
.Lx1846_240:                                                                  jmp   n831_assign_α
n830_call_β:                                                                  jmp   n829_statement_begin_β
.Lx1846_0:              .quad            .Lx1846_0_s
.Lx1846_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n831_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 928], rax            # PAT$3$V5
                        mov              qword ptr [r9 + 936], rdx;           jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 672]            # delim
                        mov              rdx, qword ptr [r9 + 680]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n833_assign_α
n832_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n829_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 912], rax            # PAT$3$V4
                        mov              qword ptr [r9 + 920], rdx;           jmp   n834_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1850_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n835_call_α
n834_lit_string_β:      add              rsp, 16;                             jmp   n832_var_β
.Lx1850_0:              .quad            .Lx1850_0_s
.Lx1850_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n835_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1852z]
                        lea              rax, [rip + Push_item_alpha];        jmp   rax
.Lsig1852z:             .quad            1
                        .quad            .Lx1852_2
                        .quad            .Lx1852_2
                        .quad            16
.Lx1852_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1852_29
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
.Lx1852_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1852_240
                        add              rsp, 16;                             jmp   n834_lit_string_β
.Lx1852_240:                                                                  jmp   n836_assign_α
n835_call_β:                                                                  jmp   n834_lit_string_β
.Lx1852_0:              .quad            .Lx1852_0_s
.Lx1852_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n836_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 896], rax            # PAT$3$V3
                        mov              qword ptr [r9 + 904], rdx;           jmp   n837_var_α
#-----------------------------------------------------------------------------------------------------------------------
n837_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 688]            # word
                        mov              rdx, qword ptr [r9 + 696]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n838_assign_α
n837_var_β:             add              rsp, 32;                             jmp   n834_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n838_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 880], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 888], rdx;           jmp   n839_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n840_call_α
n839_lit_string_β:      add              rsp, 16;                             jmp   n837_var_β
.Lx1856_0:              .quad            .Lx1856_0_s
.Lx1856_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n840_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1858z]
                        lea              rax, [rip + Push_list_alpha];        jmp   rax
.Lsig1858z:             .quad            1
                        .quad            .Lx1858_2
                        .quad            .Lx1858_2
                        .quad            16
.Lx1858_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1858_29
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
.Lx1858_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1858_240
                        add              rsp, 16;                             jmp   n839_lit_string_β
.Lx1858_240:                                                                  jmp   n841_assign_α
n840_call_β:                                                                  jmp   n839_lit_string_β
.Lx1858_0:              .quad            .Lx1858_0_s
.Lx1858_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n841_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 864], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 872], rdx;           jmp   n842_var_α
#-----------------------------------------------------------------------------------------------------------------------
n842_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 688]            # word
                        mov              rdx, qword ptr [r9 + 696]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n843_assign_α
n842_var_β:             add              rsp, 32;                             jmp   n839_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n843_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 848], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 856], rdx;           jmp   n844_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1862_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n845_call_α
n844_lit_string_β:      add              rsp, 16;                             jmp   n842_var_β
.Lx1862_0:              .quad            .Lx1862_0_s
.Lx1862_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n845_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1864:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1864]
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
                        cmp              eax, 104;                            jne   .Lx1863_240
                        add              rsp, 16;                             jmp   n844_lit_string_β
.Lx1863_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n846_assign_α
n845_call_β:            add              rsp, 16;                             jmp   n844_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n846_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # group
                        mov              qword ptr [r9 + 712], rdx;           jmp   n847_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n847_statement_end_α:   add              rsp, 160;                            jmp   n848_statement_begin_α
#=======================================================================================================================
#                spat           =  ('(' BAL ')') . item
#-----------------------------------------------------------------------------------------------------------------------
n848_statement_begin_α:                                                       jmp   n849_lit_string_α
n848_statement_begin_β:                                                       jmp   n853_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n849_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1870_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n850_call_α
.Lx1870_0:              .quad            .Lx1870_0_s
.Lx1870_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n850_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1872:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1872]
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
                        cmp              eax, 104;                            jne   .Lx1871_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n848_statement_begin_β
.Lx1871_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n851_assign_α
n850_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n848_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n851_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # spat
                        mov              qword ptr [r9 + 744], rdx;           jmp   n852_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n852_statement_end_α:   add              rsp, 32;                             jmp   n853_statement_begin_α
#=======================================================================================================================
# slurp          line           =  INPUT                      :F(slurp_done)
#-----------------------------------------------------------------------------------------------------------------------
n853_statement_begin_α:                                                       jmp   n854_var_α
n853_statement_begin_β:                                                       jmp   n865_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n854_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1878_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1878_240
                        add              rsp, 16;                             jmp   n853_statement_begin_β
.Lx1878_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n855_assign_α
.Lx1878_0:              .quad            .Lx1878_0_s
.Lx1878_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n855_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax            # line
                        mov              qword ptr [r9 + 776], rdx;           jmp   n856_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n856_statement_end_α:   add              rsp, 16;                             jmp   n857_statement_begin_α
#=======================================================================================================================
#                src            =  src line nl                :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n857_statement_begin_α:                                                       jmp   n858_var_α
n857_statement_begin_β:                                                       jmp   n853_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n858_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 784]            # src
                        mov              rdx, qword ptr [r9 + 792]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n859_var_α
#-----------------------------------------------------------------------------------------------------------------------
n859_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 768]            # line
                        mov              rdx, qword ptr [r9 + 776]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n860_binop_α
n859_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n857_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n860_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n861_var_α
n860_binop_β:           add              rsp, 16;                             jmp   n859_var_β
#-----------------------------------------------------------------------------------------------------------------------
n861_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 528]            # nl
                        mov              rdx, qword ptr [r9 + 536]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n862_binop_α
n861_var_β:             add              rsp, 16;                             jmp   n860_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n862_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n863_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n863_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # src
                        mov              qword ptr [r9 + 792], rdx;           jmp   n864_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n864_statement_end_α:   add              rsp, 80;                             jmp   n853_statement_begin_α
#=======================================================================================================================
# slurp_done  <stmt 112, line 146: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n865_statement_begin_α:                                                       jmp   n866_statement_end_α
n865_statement_begin_β:                                                       jmp   n867_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n866_statement_end_α:                                                         jmp   n867_statement_begin_α
#=======================================================================================================================
#                dummy          =  init_list('bank')
#-----------------------------------------------------------------------------------------------------------------------
n867_statement_begin_α:                                                       jmp   n868_lit_string_α
n867_statement_begin_β:                                                       jmp   n872_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n868_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1898_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n869_call_α
.Lx1898_0:              .quad            .Lx1898_0_s
.Lx1898_0_s:            .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n869_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1900z]
                        lea              rax, [rip + init_list_alpha];        jmp   rax
.Lsig1900z:             .quad            1
                        .quad            .Lx1900_2
                        .quad            .Lx1900_2
                        .quad            16
.Lx1900_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1900_29
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
.Lx1900_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1900_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n867_statement_begin_β
.Lx1900_240:                                                                  jmp   n870_assign_α
n869_call_β:                                                                  jmp   n867_statement_begin_β
.Lx1900_0:              .quad            .Lx1900_0_s
.Lx1900_0_s:            .string          "init_list"
#-----------------------------------------------------------------------------------------------------------------------
n870_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n871_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n871_statement_end_α:   add              rsp, 32;                             jmp   n872_statement_begin_α
#=======================================================================================================================
#                dummy          =  stk_push_frame('BANK')
#-----------------------------------------------------------------------------------------------------------------------
n872_statement_begin_α:                                                       jmp   n873_lit_string_α
n872_statement_begin_β:                                                       jmp   n877_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n873_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n874_call_α
.Lx1906_0:              .quad            .Lx1906_0_s
.Lx1906_0_s:            .string          "BANK"
#-----------------------------------------------------------------------------------------------------------------------
n874_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1908z]
                        lea              rax, [rip + stk_push_frame_alpha];   jmp   rax
.Lsig1908z:             .quad            1
                        .quad            .Lx1908_2
                        .quad            .Lx1908_2
                        .quad            16
.Lx1908_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1908_29
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
.Lx1908_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1908_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n872_statement_begin_β
.Lx1908_240:                                                                  jmp   n875_assign_α
n874_call_β:                                                                  jmp   n872_statement_begin_β
.Lx1908_0:              .quad            .Lx1908_0_s
.Lx1908_0_s:            .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n875_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n876_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n876_statement_end_α:   add              rsp, 32;                             jmp   n877_statement_begin_α
#=======================================================================================================================
#                t0             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n877_statement_begin_α:                                                       jmp   n878_call_α
n877_statement_begin_β:                                                       jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n878_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1915:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1915]
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
                        cmp              eax, 104;                            jne   .Lx1914_240
                        add              rsp, 16;                             jmp   n877_statement_begin_β
.Lx1914_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n879_assign_α
n878_call_β:            add              rsp, 16;                             jmp   n877_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n879_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 800], rax            # t0
                        mov              qword ptr [r9 + 808], rdx;           jmp   n880_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n880_statement_end_α:   add              rsp, 16;                             jmp   n881_statement_begin_α
#=======================================================================================================================
# loop           src            spat =  ''                    :F(all_done)
#-----------------------------------------------------------------------------------------------------------------------
n881_statement_begin_α:                                                       jmp   n882_var_α
n881_statement_begin_β:                                                       jmp   n918_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n882_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 784]            # src
                        mov              rdx, qword ptr [r9 + 792]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n883_var_α
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 736]            # spat
                        mov              rdx, qword ptr [r9 + 744]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n884_assign_α
n883_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n918_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n884_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1923_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n885_match_begin_α
n884_assign_β:                                                                jmp   n883_var_β
.Lx1923_0:              .quad            .Lx1923_0_s
.Lx1923_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n885_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1925_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n886_match_defer_α
n885_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1925_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1925_1
                                                                              jmp   .Lx1925_0
.Lx1925_1:
n885_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n884_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n886_match_defer_α:     lea              rdi, [rip + .S13]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx1926_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1926_4]
                        lea              r11, [rip + .Lx1926_5];              jmp   rax
.Lx1926_4:                                                                    jmp   n887_match_end_α
.Lx1926_5:                                                                    jmp   n885_match_begin_β
.Lx1926_0:              push             r14
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
.Lx1926_2:              test             rax, rax;                            je    .Lx1926_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1926_7]
                        lea              rdx, [rip + .Lx1926_8];              jmp   rax
.Lx1926_7:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1926_2
.Lx1926_8:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1926_2
.Lx1926_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n885_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1926_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n887_match_end_α
.Lx1926_6:              add              rsp, 16;                             jmp   n885_match_begin_β
n886_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n887_match_end_α:       mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -48], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
                        push             r14
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
.Lx1928_1:              test             rax, rax;                            je    .Lx1928_2
                        lea              rcx, [rip + .Lx1928_3]
                        lea              rdx, [rip + .Lx1928_4];              jmp   rax
.Lx1928_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1928_1
.Lx1928_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1928_1
.Lx1928_2:              call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -48]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n888_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n888_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1929_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n889_match_replace_α
.Lx1929_0:              .quad            .Lx1929_0_s
.Lx1929_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n889_match_replace_α:   mov              rdi, qword ptr [rip + .Lx1931_0]
                        mov              rsi, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16;                             jmp   .Lx1931_1
.Lx1931_0:              .quad            .Lx1931_0_s
.Lx1931_0_s:            .string          "src"
.Lx1931_1:                                                                    jmp   n890_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n890_statement_end_α:   add              rsp, 32;                             jmp   n891_statement_begin_α
#=======================================================================================================================
#                dummy          =  stk_push_frame('ROOT')
#-----------------------------------------------------------------------------------------------------------------------
n891_statement_begin_α:                                                       jmp   n892_lit_string_α
n891_statement_begin_β:                                                       jmp   n896_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n892_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1936_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n893_call_α
.Lx1936_0:              .quad            .Lx1936_0_s
.Lx1936_0_s:            .string          "ROOT"
#-----------------------------------------------------------------------------------------------------------------------
n893_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1938z]
                        lea              rax, [rip + stk_push_frame_alpha];   jmp   rax
.Lsig1938z:             .quad            1
                        .quad            .Lx1938_2
                        .quad            .Lx1938_2
                        .quad            16
.Lx1938_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1938_29
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
.Lx1938_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1938_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n891_statement_begin_β
.Lx1938_240:                                                                  jmp   n894_assign_α
n893_call_β:                                                                  jmp   n891_statement_begin_β
.Lx1938_0:              .quad            .Lx1938_0_s
.Lx1938_0_s:            .string          "stk_push_frame"
#-----------------------------------------------------------------------------------------------------------------------
n894_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n895_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n895_statement_end_α:   add              rsp, 32;                             jmp   n896_statement_begin_α
#=======================================================================================================================
#                item           group                         :F(parse_fail)
#-----------------------------------------------------------------------------------------------------------------------
n896_statement_begin_α:                                                       jmp   n897_var_α
n896_statement_begin_β:                                                       jmp   n908_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n897_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 752]            # item
                        mov              rdx, qword ptr [r9 + 760]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n898_var_α
#-----------------------------------------------------------------------------------------------------------------------
n898_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 704]            # group
                        mov              rdx, qword ptr [r9 + 712]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n899_assign_α
n898_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n908_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n899_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1946_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n900_match_begin_α
n899_assign_β:                                                                jmp   n898_var_β
.Lx1946_0:              .quad            .Lx1946_0_s
.Lx1946_0_s:            .string          "PATV$1"
#-----------------------------------------------------------------------------------------------------------------------
n900_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1948_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n901_match_defer_α
n900_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1948_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1948_1
                                                                              jmp   .Lx1948_0
.Lx1948_1:
n900_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n899_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n901_match_defer_α:     lea              rdi, [rip + .S14]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx1949_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1949_4]
                        lea              r11, [rip + .Lx1949_5];              jmp   rax
.Lx1949_4:                                                                    jmp   n902_match_end_α
.Lx1949_5:                                                                    jmp   n900_match_begin_β
.Lx1949_0:              push             r14
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
.Lx1949_2:              test             rax, rax;                            je    .Lx1949_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx1949_7]
                        lea              rdx, [rip + .Lx1949_8];              jmp   rax
.Lx1949_7:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1949_2
.Lx1949_8:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1949_2
.Lx1949_3:              add              rsp, 8
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
                        test             eax, eax;                            js    n900_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1949_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n902_match_end_α
.Lx1949_6:              add              rsp, 16;                             jmp   n900_match_begin_β
n901_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n902_match_end_α:       push             r14
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
.Lx1951_1:              test             rax, rax;                            je    .Lx1951_2
                        lea              rcx, [rip + .Lx1951_3]
                        lea              rdx, [rip + .Lx1951_4];              jmp   rax
.Lx1951_3:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1951_1
.Lx1951_4:              mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1951_1
.Lx1951_2:              call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n903_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n903_statement_end_α:   add              rsp, 32;                             jmp   n904_statement_begin_α
#=======================================================================================================================
#                dummy          =  stk_pop_into_parent()      :(loop)
#-----------------------------------------------------------------------------------------------------------------------
n904_statement_begin_α:                                                       jmp   n905_call_α
n904_statement_begin_β:                                                       jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n905_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1957z]
                        lea              rax, [rip + stk_pop_into_parent_alpha]
                                                                              jmp   rax
.Lsig1957z:             .quad            0
                        .quad            .Lx1957_2
                        .quad            .Lx1957_2
.Lx1957_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1957_29
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
.Lx1957_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1957_240
                        add              rsp, 16;                             jmp   n904_statement_begin_β
.Lx1957_240:                                                                  jmp   n906_assign_α
n905_call_β:                                                                  jmp   n904_statement_begin_β
.Lx1957_0:              .quad            .Lx1957_0_s
.Lx1957_0_s:            .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n906_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n907_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n907_statement_end_α:   add              rsp, 16;                             jmp   n881_statement_begin_α
#=======================================================================================================================
# parse_fail     OUTPUT         =  'Parse failed on: ' item
#-----------------------------------------------------------------------------------------------------------------------
n908_statement_begin_α:                                                       jmp   n909_lit_string_α
n908_statement_begin_β:                                                       jmp   n914_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n909_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx1963_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n910_var_α
.Lx1963_0:              .quad            .Lx1963_0_s
.Lx1963_0_s:            .string          "Parse failed on: "
#-----------------------------------------------------------------------------------------------------------------------
n910_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 752]            # item
                        mov              rdx, qword ptr [r9 + 760]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n911_binop_α
n910_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n908_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n911_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n912_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n912_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1966_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n913_statement_end_α
.Lx1966_0:              .quad            .Lx1966_0_s
.Lx1966_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n913_statement_end_α:   add              rsp, 48;                             jmp   n914_statement_begin_α
#=======================================================================================================================
#                dummy          =  stk_pop_into_parent()      :(loop)
#-----------------------------------------------------------------------------------------------------------------------
n914_statement_begin_α:                                                       jmp   n915_call_α
n914_statement_begin_β:                                                       jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n915_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1972z]
                        lea              rax, [rip + stk_pop_into_parent_alpha]
                                                                              jmp   rax
.Lsig1972z:             .quad            0
                        .quad            .Lx1972_2
                        .quad            .Lx1972_2
.Lx1972_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1972_29
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
.Lx1972_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1972_240
                        add              rsp, 16;                             jmp   n914_statement_begin_β
.Lx1972_240:                                                                  jmp   n916_assign_α
n915_call_β:                                                                  jmp   n914_statement_begin_β
.Lx1972_0:              .quad            .Lx1972_0_s
.Lx1972_0_s:            .string          "stk_pop_into_parent"
#-----------------------------------------------------------------------------------------------------------------------
n916_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n917_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n917_statement_end_α:   add              rsp, 16;                             jmp   n881_statement_begin_α
#=======================================================================================================================
# all_done       t1             =  TIME()
#-----------------------------------------------------------------------------------------------------------------------
n918_statement_begin_α:                                                       jmp   n919_call_α
n918_statement_begin_β:                                                       jmp   n922_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n919_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1979:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1979]
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
                        cmp              eax, 104;                            jne   .Lx1978_240
                        add              rsp, 16;                             jmp   n918_statement_begin_β
.Lx1978_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n920_assign_α
n919_call_β:            add              rsp, 16;                             jmp   n918_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n920_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 816], rax            # t1
                        mov              qword ptr [r9 + 824], rdx;           jmp   n921_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n921_statement_end_α:   add              rsp, 16;                             jmp   n922_statement_begin_α
#=======================================================================================================================
#                TERMINAL       =  'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n922_statement_begin_α:                                                       jmp   n923_lit_string_α
n922_statement_begin_β:                                                       jmp   n930_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n923_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1985_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n924_var_α
.Lx1985_0:              .quad            .Lx1985_0_s
.Lx1985_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 816]            # t1
                        mov              rdx, qword ptr [r9 + 824]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n925_var_α
n924_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n922_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n925_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 800]            # t0
                        mov              rdx, qword ptr [r9 + 808]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n926_binop_α
n925_var_β:             add              rsp, 16;                             jmp   n924_var_β
#-----------------------------------------------------------------------------------------------------------------------
n926_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1988_240
                        add              rsp, 16;                             jmp   n925_var_β
.Lx1988_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n927_binop_α
n926_binop_β:           add              rsp, 16;                             jmp   n925_var_β
#-----------------------------------------------------------------------------------------------------------------------
n927_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n928_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n928_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1990_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n929_statement_end_α
.Lx1990_0:              .quad            .Lx1990_0_s
.Lx1990_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n929_statement_end_α:   add              rsp, 80;                             jmp   n930_statement_begin_α
#=======================================================================================================================
#                dummy          =  stk_pop_final('bank')
#-----------------------------------------------------------------------------------------------------------------------
n930_statement_begin_α:                                                       jmp   n931_lit_string_α
n930_statement_begin_β:                                                       jmp   n935_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n931_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1995_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n932_call_α
.Lx1995_0:              .quad            .Lx1995_0_s
.Lx1995_0_s:            .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n932_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1997z]
                        lea              rax, [rip + stk_pop_final_alpha];    jmp   rax
.Lsig1997z:             .quad            1
                        .quad            .Lx1997_2
                        .quad            .Lx1997_2
                        .quad            16
.Lx1997_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1997_29
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
.Lx1997_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1997_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n930_statement_begin_β
.Lx1997_240:                                                                  jmp   n933_assign_α
n932_call_β:                                                                  jmp   n930_statement_begin_β
.Lx1997_0:              .quad            .Lx1997_0_s
.Lx1997_0_s:            .string          "stk_pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n933_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n934_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n934_statement_end_α:   add              rsp, 32;                             jmp   n935_statement_begin_α
#=======================================================================================================================
#                dummy          =  pp_bank()                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n935_statement_begin_α:                                                       jmp   n936_call_α
n935_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n936_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig2004z]
                        lea              rax, [rip + pp_bank_alpha];          jmp   rax
.Lsig2004z:             .quad            0
                        .quad            .Lx2004_2
                        .quad            .Lx2004_2
.Lx2004_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx2004_29
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
.Lx2004_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx2004_240
                        add              rsp, 16;                             jmp   n935_statement_begin_β
.Lx2004_240:                                                                  jmp   n937_assign_α
n936_call_β:                                                                  jmp   n935_statement_begin_β
.Lx2004_0:              .quad            .Lx2004_0_s
.Lx2004_0_s:            .string          "pp_bank"
#-----------------------------------------------------------------------------------------------------------------------
n937_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # dummy
                        mov              qword ptr [r9 + 632], rdx;           jmp   n938_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n938_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
.S0:                    .string          "PAT$0$V0"
.S1:                    .string          "IR_MATCH_CAPTURE_COND: computed-name (*VAR/NRETURN) target not yet rebuilt -- blocked on the :(NRETURN) lowering bug (s82), see this file's header comment"
.S2:                    .string          "PAT$3$V0"
.S3:                    .string          "tag"
.S4:                    .string          "PAT$3$V1"
.S5:                    .string          "PAT$3$V5"
.S6:                    .string          "PAT$3$V4"
.S7:                    .string          "PAT$3$V2"
.S8:                    .string          "wrd"
.S9:                    .string          "PAT$3$V3"
.S10:                   .string          "group"
.S11:                   .string          "item"
.S12:                   .string          "nl"
.S13:                   .string          "PATV$0"
.S14:                   .string          "PATV$1"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
